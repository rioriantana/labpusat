package labpusat

class Paket {
	String nama
	String jenisContohUji
	String parameterKimia
	String parameterBiologi
	String parameterUdara
	String kodePaket
	Integer nomorUrut
	Integer biayaAmbil
	Integer harga
    static constraints = {
    	nama(nullable: true)
		jenisContohUji(nullable: true)
		parameterKimia(nullable: true)
		parameterBiologi(nullable: true)
		parameterUdara(nullable: true)
		nomorUrut(nullable: true)
		harga(nullable: true)
		biayaAmbil(nullable: true)
    }

    public String toString(){
    	"$nomorUrut . "+"$nama"
    }
}
