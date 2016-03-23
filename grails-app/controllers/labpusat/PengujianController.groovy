package labpusat



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PengujianController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Pengujian.list(params), model:[pengujianInstanceCount: Pengujian.count()]
    }

    def show(Pengujian pengujianInstance) {
        respond pengujianInstance
    }

    def create() {
        def pendaftaranInstance = Pendaftaran.get(params.id)
        def detailPengujian = []
        def uji = []
        if(params.tipeUji == "K"){
            uji = "Kimia"
            detailPengujian = pendaftaranInstance.jenisContohUji.parameterKimia
        }
        else if(params.tipeUji == "B"){
            uji = "Biologi"
            detailPengujian = pendaftaranInstance.jenisContohUji.parameterBiologi
        }
        else{
            uji = "Udara"
            detailPengujian = pendaftaranInstance.jenisContohUji.parameterUdara
        }
        def pengujianInstance = new Pengujian(params)
        [pengujianInstance: pengujianInstance, pendaftaranInstance: pendaftaranInstance, uji: uji, detailPengujian: detailPengujian]
    }

    @Transactional
    def save(Pengujian pengujianInstance) {
        if (pengujianInstance == null) {
            notFound()
            return
        }

        if (pengujianInstance.hasErrors()) {
            respond pengujianInstance.errors, view:'create'
            return
        }
        def tipeUji = []
        if(params.kelompokUji == "Kimia"){
            tipeUji = "K"
        }
        else if(params.kelompokUji == "Biologi"){
            tipeUji = "B"
        }
        else{
            tipeUji = "U"
        }
        def pendaftaranInstance = Pendaftaran.get(params.kodePendaftaran.id)
        pendaftaranInstance.status = "Proses Pengujian"
        pendaftaranInstance.save flush:true
        def lastNomor = Pengujian.last()
        def nomorUji = []
        if(!lastNomor){ nomorUji = 1 }
        else{nomorUji = lastNomor.id + 1}
        pengujianInstance.nomorPengujian = tipeUji+"."+nomorUji
        pengujianInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pengujian.label', default: 'Pengujian'), pengujianInstance.id])
                redirect (action: "serahTerimaPengujian", id: pengujianInstance.id)
            }
            '*' { respond pengujianInstance, [status: CREATED] }
        }
    }

    def edit(Pengujian pengujianInstance) {
        respond pengujianInstance
    }

    @Transactional
    def update(Pengujian pengujianInstance) {
        if (pengujianInstance == null) {
            notFound()
            return
        }

        if (pengujianInstance.hasErrors()) {
            respond pengujianInstance.errors, view:'edit'
            return
        }

        pengujianInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Pengujian.label', default: 'Pengujian'), pengujianInstance.id])
                redirect pengujianInstance
            }
            '*'{ respond pengujianInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Pengujian pengujianInstance) {

        if (pengujianInstance == null) {
            notFound()
            return
        }

        pengujianInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Pengujian.label', default: 'Pengujian'), pengujianInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pengujian.label', default: 'Pengujian'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
    def serahTerimaPengujian(){
        def pengujianInstance = Pengujian.get(params.id)
        def tanggal = new Date()
        [pengujianInstance: pengujianInstance, tanggal: tanggal]
    }
}
