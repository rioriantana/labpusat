package labpusat



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AgendaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        def agendaInstance = []
        def agendaInstanceCount = []
        if(!params.pelanggan){
           agendaInstance =  Agenda.list(params)
           agendaInstanceCount = Agenda.count()
        }
        else{
             def cari = "%"+params.pelanggan+"%"
            cari = cari.toUpperCase()
            agendaInstance = Agenda.executeQuery("from Agenda as i where upper(i.namaInstansi) like :cari", [cari: cari])   
            agendaInstanceCount = Agenda.executeQuery("select count(*) from Agenda as i where upper(i.namaInstansi) like :cari", [cari: cari])
        }
        respond agendaInstance, model:[agendaInstanceCount: agendaInstanceCount]
    }

    def show() {
        def agendaInstance = Agenda.get(params.id)
        def pendaftaranInstance = Pendaftaran.findAllByNomorAgenda(agendaInstance, params)
        [agendaInstance: agendaInstance, pendaftaranInstanceList: pendaftaranInstance]
    }
    def detailAgenda(){
        def agendaInstance = Agenda.get(params.id)
        def pendaftaranInstance = Pendaftaran.findAllByNomorAgenda(agendaInstance, params)
        [agendaInstance: agendaInstance, pendaftaranInstanceList: pendaftaranInstance]
    
    }
    def create() {
        respond new Agenda(params)
    }

    @Transactional
    def save(Agenda agendaInstance) {
        if (agendaInstance == null) {
            notFound()
            return
        }

        if (agendaInstance.hasErrors()) {
            respond agendaInstance.errors, view:'create'
            return
        }
        def lp = []
        if(params.pihakPengambilContohUji == "Pelanggan"){
            lp = "LP2"
        }
        else{
            lp = "LP1"
        }
        def lastNomor = Agenda.last()
        def nomorUji = []
        if(!lastNomor){ nomorUji = 1 }
        else{nomorUji = lastNomor.id + 1}
        agendaInstance.kode = lp+"."+nomorUji
        agendaInstance.status = "Pendaftaran"
        agendaInstance.tanggal = new Date()
        agendaInstance.save flush:true
        def pendaftaranInstance = new Pendaftaran()
        def paket = Paket.get(params.jenisContohUji.id)
        pendaftaranInstance.nomorAgenda             = Agenda.get(agendaInstance.id)
        pendaftaranInstance.ketersediaanRekamanUji = params.ketersediaanRekamanUji
        pendaftaranInstance.catatanAbnormalisasi   = params.catatanAbnormalisasi
        pendaftaranInstance.jenisContohUji         = paket
        pendaftaranInstance.jumlahContohUji        = params.jumlahContohUji.toInteger()
        pendaftaranInstance.kondisiContohUji       = params.kondisiContohUji
        pendaftaranInstance.prosesPengawetan       = params.prosesPengawetan
        pendaftaranInstance.kemasan                = params.kemasan
        if(agendaInstance.pihakPengambilContohUji == 'Petugas UPT Lab Pusat UNS'){
        pendaftaranInstance.biayaAmbil             = paket.biayaAmbil
        pendaftaranInstance.total                  = paket.biayaAmbil+(paket.harga * params.jumlahContohUji.toInteger())
        }
        else{
        pendaftaranInstance.total                  = paket.harga * params.jumlahContohUji.toInteger()
        }
        pendaftaranInstance.status                 = "Pendaftaran"
        pendaftaranInstance.save flush:true
        request.withFormat {
            form multipartForm {
                flash.message = 'Pendaftaran Berhasil, silahkan tunggu panggilan dari petugas atau tambah paket pedaftaran.'
                redirect (action: "detailAgenda", id: agendaInstance.id)
            }
            '*' { respond agendaInstance, [status: CREATED] }
        }
    }

    def edit(Agenda agendaInstance) {
        respond agendaInstance
    }

    @Transactional
    def update(Agenda agendaInstance) {
        if (agendaInstance == null) {
            notFound()
            return
        }

        if (agendaInstance.hasErrors()) {
            respond agendaInstance.errors, view:'edit'
            return
        }

        agendaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Agenda.label', default: 'Agenda'), agendaInstance.id])
                redirect agendaInstance
            }
            '*'{ respond agendaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Agenda agendaInstance) {

        if (agendaInstance == null) {
            notFound()
            return
        }

        agendaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Agenda.label', default: 'Agenda'), agendaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'agenda.label', default: 'Agenda'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def tagihan(){
        def agendaInstance = Agenda.get(params.id)
        def pendaftaranInstance = Pendaftaran.findAllByNomorAgenda(agendaInstance, params)
        def total = Pendaftaran.executeQuery("select sum(total) from Pendaftaran as p where p.nomorAgenda = :agenda", [agenda: agendaInstance])
        def tanggal = new Date()
        [agendaInstance: agendaInstance, pendaftaranInstanceList: pendaftaranInstance, total: total.join(", "), tanggal: tanggal]
    }
    def kwitansi(){
        def agendaInstance = Agenda.get(params.id)
        def pendaftaranInstance = Pendaftaran.findAllByNomorAgenda(agendaInstance, params)
        def total = Pendaftaran.executeQuery("select sum(total) from Pendaftaran as p where p.nomorAgenda = :agenda", [agenda: agendaInstance])
        def tanggal = new Date()
        [agendaInstance: agendaInstance, pendaftaranInstanceList: pendaftaranInstance, total: total.join(", "), tanggal: tanggal]
    }
    def biayaAmbil(){
        def paket = Paket.get(1)
        render paket.biayaAmbil
    }
}
