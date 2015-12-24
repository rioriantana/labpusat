package labpusat

class Pendaftaran {
	String kode
	String namaInstansi
	String namaPenanggungJawab
	String alamatInstansi
	String nomorTelepon
	String pihakPengambilContohUji
	String ketersediaanRekamanUji
	String catatanAbnormalisasi
	Date tanggal
	Paket jenisContohUji
	String jumlahContohUji
	String kondisiContohUji
	String prosesPengawetan
	String kemasan
	String status
    static constraints = {
    	kode(nullable: true)
    	namaInstansi(nullable: true)
		namaPenanggungJawab(nullable: true)
		alamatInstansi(nullable: true)
		nomorTelepon(nullable: true)
		pihakPengambilContohUji(nullable: true, inList: ['Pelanggan', 'Petugas UPT Lab Pusat UNS'])
		ketersediaanRekamanUji(nullable: true, inList: ['Ada', 'Tidak Ada'])
		catatanAbnormalisasi(nullable: true)
		tanggal(nullable: true)
		jenisContohUji(nullable: true)
		jumlahContohUji(nullable: true)
		kondisiContohUji(nullable: true, inList: ['Jernih ada endapan', 'Jernih tidak ada endapan', 'Keruh ada endapan', 'Keruh tidak ada endapan'])
		prosesPengawetan(nullable: true, inList: ['Diawetkan', 'Tidak Diawetkan'])
		kemasan(nullable: true, inList: ['Botol Plastik', 'Botol Kaca', 'Jirigen'])
		status(nullable: true)
    }
    public String toString(){
    	"$kode"
    }
}
