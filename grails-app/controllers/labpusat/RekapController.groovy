package labpusat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

class RekapController {

    def pendaftaran() {
    	if (!params.tanggalAwal || !params.tanggalAhir) {
    		return[]
    	}
    	def tanggalAwal =  params.tanggalAwal
    	def tanggalAhir = params.tanggalAhir
    	def pendaftaranInstance = Pendaftaran.executeQuery("from Pendaftaran as p where p.nomorAgenda.tanggal between :awal and :ahir", [awal: tanggalAwal, ahir: tanggalAhir+1])
        def pemasukan = Pendaftaran.executeQuery("select sum(total) from Pendaftaran as p where p.nomorAgenda.tanggal between :awal and :ahir", [awal: tanggalAwal, ahir: tanggalAhir+1])
        def lunas = Pendaftaran.executeQuery("select sum(total) from Pendaftaran as p where p.nomorAgenda.tanggal between :awal and :ahir and p.statusBayar = 'LUNAS'", [awal: tanggalAwal, ahir: tanggalAhir+1])
      //  if(!pendaftaranInstance){
        //    flash.message = 'Tidak Ada Data Pada Tanggal '+tanggalAwal+' s/d '+tanggalAhir
          //      redirect (action: "pendaftaran")
        //}
    //    else{
    	render(controller: this, template: "pendaftaranPrint", model: [pendaftaranInstance: pendaftaranInstance, tanggalAhir: tanggalAhir, tanggalAwal: tanggalAwal, pemasukan: pemasukan.join(", "), lunas: lunas.join(", ")])
        //}
     }
     def pengujian(){
        if (!params.tanggalAwal || !params.tanggalAhir || !params.kelompok) {
            return[]
        }
        def tanggalAwal =  params.tanggalAwal
        def tanggalAhir = params.tanggalAhir
        def kelompok = params.kelompok
        def pengujianInstance = []
        if(kelompok == "Semua"){
        pengujianInstance = Pengujian.executeQuery("from Pengujian as p where p.kodePendaftaran.nomorAgenda.tanggal between :awal and :ahir order by p.kodePendaftaran.nomorAgenda.tanggal ASC", [awal: tanggalAwal, ahir: tanggalAhir+1])
        }
        else{
        pengujianInstance = Pengujian.executeQuery("from Pengujian as p where p.kodePendaftaran.nomorAgenda.tanggal between :awal and :ahir and p.kelompokUji = :kelompok order by p.kodePendaftaran.nomorAgenda.tanggal ASC", [awal: tanggalAwal, ahir: tanggalAhir+1, kelompok: kelompok])    
        }
        render(controller: this, template: "pengujianPrint", model: [pengujianInstance: pengujianInstance, tanggalAhir: tanggalAhir, tanggalAwal: tanggalAwal])
     }
}
