package labpusat

class Paket {
	nama
	jenisContohUji
	parameterKimia
	parameterBiologi
	parameterUdara
	harga
    static constraints = {
    	nama(nullable: true)
		jenisContohUji(nullable: true)
		parameterKimia(nullable: true)
		parameterBiologi(nullable: true)
		parameterUdara(nullable: true)
		harga(nullable: true)
    }

    public String toString(){
    	"$nama"
    }
}
