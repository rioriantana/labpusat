package labpusat

class Pendaftaran {
	Agenda nomorAgenda
	String ketersediaanRekamanUji
	String catatanAbnormalisasi
	Paket jenisContohUji
	Integer jumlahContohUji
	String kondisiContohUji
	String prosesPengawetan
	String kemasan
	String status
	Integer biayaAmbil
	Integer total
	String statusBayar
	String keterangan
    static constraints = {
    	nomorAgenda(nullable: true)
		ketersediaanRekamanUji(nullable: true, inList: ['Ada', 'Tidak Ada'])
		catatanAbnormalisasi(nullable: true)
		jenisContohUji(nullable: true)
		jumlahContohUji(nullable: true)
		kondisiContohUji(nullable: true, inList: ['Jernih ada endapan', 'Jernih tidak ada endapan', 'Keruh ada endapan', 'Keruh tidak ada endapan'])
		prosesPengawetan(nullable: true, inList: ['Diawetkan', 'Tidak Diawetkan'])
		kemasan(nullable: true, inList: ['Botol Plastik', 'Botol Kaca', 'Jirigen'])	
		status(nullable: true)
		total(nullable: true)
		statusBayar(nullable: true)
		keterangan(nullable: true)
		biayaAmbil(nullable: true)
    }
    public String toString(){
    	"$nomorAgenda - $jenisContohUji"
    }
}
