package labpusat



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PaketController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Paket.list(params), model:[paketInstanceCount: Paket.count()]
    }

    def show(Paket paketInstance) {
        respond paketInstance
    }

    def create() {
        respond new Paket(params)
    }

    @Transactional
    def save(Paket paketInstance) {
        if (paketInstance == null) {
            notFound()
            return
        }

        if (paketInstance.hasErrors()) {
            respond paketInstance.errors, view:'create'
            return
        }

        paketInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'paket.label', default: 'Paket'), paketInstance.id])
                redirect paketInstance
            }
            '*' { respond paketInstance, [status: CREATED] }
        }
    }

    def edit(Paket paketInstance) {
        respond paketInstance
    }

    @Transactional
    def update(Paket paketInstance) {
        if (paketInstance == null) {
            notFound()
            return
        }

        if (paketInstance.hasErrors()) {
            respond paketInstance.errors, view:'edit'
            return
        }

        paketInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Paket.label', default: 'Paket'), paketInstance.id])
                redirect paketInstance
            }
            '*'{ respond paketInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Paket paketInstance) {

        if (paketInstance == null) {
            notFound()
            return
        }

        paketInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Paket.label', default: 'Paket'), paketInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'paket.label', default: 'Paket'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
