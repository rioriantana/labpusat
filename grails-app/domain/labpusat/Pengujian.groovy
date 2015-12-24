package labpusat

class Pengujian {
	String nomorPengujian
	String detailPengujian
	Pendaftaran kodePendaftaran
	String kelompokUji
    static constraints = {
    	nomorPengujian(nullabel: true)
		detailPengujian(nullabel: true)
		kodePendaftaran(nullabel: true)
		kelompokUji(nullabel: true)
    }

    public String toString(){
    	"$nomorPengujian"
    }
}
