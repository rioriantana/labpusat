package labpusat



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = false)
class PendaftaranController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Pendaftaran.list(params), model:[pendaftaranInstanceCount: Pendaftaran.count()]
    }

    def show(Pendaftaran pendaftaranInstance) {
        respond pendaftaranInstance
    }

    def create() {
        respond new Pendaftaran(params)
    }

    @Transactional
    def save(Pendaftaran pendaftaranInstance) {
        if (pendaftaranInstance == null) {
            notFound()
            return
        }

        if (pendaftaranInstance.hasErrors()) {
            respond pendaftaranInstance.errors, view:'create'
            return
        }
        def paketUji = Paket.get(params.jenisContohUji.id)
        pendaftaranInstance.jumlahContohUji = params.jumlahContohUji.toInteger()
        pendaftaranInstance.total = paketUji.harga * params.jumlahContohUji.toInteger()
        pendaftaranInstance.status = "Pendaftaran"
        pendaftaranInstance.tanggal = new Date()
        pendaftaranInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = 'Pendaftaran Paket Berhasil, silahkan tunggu panggilan dari petugas atau tambah paket pengujian.'
                redirect (action: "create")
            }
            '*' { respond pendaftaranInstance, [status: CREATED] }
        }
    }

    def tambahPendaftaran(){
        def agendaInstance = Agenda.get(params.id)
        def pendaftaranInstance = new Pendaftaran(params)
        [agendaInstance: agendaInstance, pendaftaranInstance: pendaftaranInstance]
    }

    def saveTambahPendaftaran(){
        def pendaftaranInstance = new Pendaftaran(params)
        if (pendaftaranInstance == null) {
            notFound()
            return
        }

        if (pendaftaranInstance.hasErrors()) {
            respond pendaftaranInstance.errors, view:'create'
            return
        }
        def paketUji = Paket.get(params.jenisContohUji.id)
        def agendaInstance = Agenda.get(params.nomorAgenda)
        pendaftaranInstance.nomorAgenda = agendaInstance
        pendaftaranInstance.jumlahContohUji = params.jumlahContohUji.toInteger()
        pendaftaranInstance.total = paketUji.harga * params.jumlahContohUji.toInteger()
        pendaftaranInstance.status = "Pendaftaran"
        pendaftaranInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = 'Pendaftaran Paket Berhasil, silahkan tunggu panggilan dari petugas atau tambah paket pengujian.'
                redirect (controller: "agenda", action: "detailAgenda", id: params.nomorAgenda)
            }
            '*' { respond pendaftaranInstance, [status: CREATED] }
        }
    }

    def edit(Pendaftaran pendaftaranInstance) {
        respond pendaftaranInstance
    }

    @Transactional
    def update(Pendaftaran pendaftaranInstance) {
        if (pendaftaranInstance == null) {
            notFound()
            return
        }

        if (pendaftaranInstance.hasErrors()) {
            respond pendaftaranInstance.errors, view:'edit'
            return
        }
        def paketUji = Paket.get(params.jenisContohUji.id)
        pendaftaranInstance.total = paketUji.harga * params.jumlahContohUji.toInteger()
        pendaftaranInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Pendaftaran.label', default: 'Pendaftaran'), pendaftaranInstance.id])
                redirect pendaftaranInstance
            }
            '*'{ respond pendaftaranInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Pendaftaran pendaftaranInstance) {

        if (pendaftaranInstance == null) {
            notFound()
            return
        }

        pendaftaranInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Pendaftaran.label', default: 'Pendaftaran'), pendaftaranInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pendaftaran.label', default: 'Pendaftaran'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def paketUji(){
        def pendaftaran = Pendaftaran.last()
        render pendaftaran.id + 1
    }
    def printBA(){
        def pendaftaranInstance = Pendaftaran.get(params.id)
        def tanggal = new Date()
        [pendaftaranInstance: pendaftaranInstance, tanggal: tanggal]
    }
    def permintaanPengujian(){
        def pendaftaranInstance = Pendaftaran.get(params.id)
        def tanggal = new Date()
        [pendaftaranInstance: pendaftaranInstance, tanggal: tanggal]
    }
    def inputOtomatis(){

    }
    def postInput(){
        def oke = params.list('myInputs')
        oke.each{
            print "inputaan "+it
        }

    }
    def lunas(){
        def pendaftaranInstance = Pendaftaran.get(params.id)
        def agenda = pendaftaranInstance.nomorAgenda.id
        pendaftaranInstance.statusBayar = "LUNAS"
        pendaftaranInstance.save flush:true
        redirect (controller: "agenda", action: "show", id: agenda)
    }
}
