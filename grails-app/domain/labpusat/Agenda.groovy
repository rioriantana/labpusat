package labpusat

class Agenda{
	String kode
	String namaInstansi
	String namaPenanggungJawab
	String alamatInstansi
	String nomorTelepon
	String pihakPengambilContohUji
	Date tanggal
	String status
	static constraints = {
		kode(nullable: true)
    	namaInstansi(nullable: true)
		namaPenanggungJawab(nullable: true)
		alamatInstansi(nullable: true)
		nomorTelepon(nullable: true)
		pihakPengambilContohUji(nullable: true, inList: ['Pelanggan', 'Petugas UPT Lab Pusat UNS'])
		tanggal(nullable: true)
		status(nullable: true)
	}
	public String toString(){
    	"$kode"
    }
}