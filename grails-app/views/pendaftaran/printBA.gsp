<html>
<head>
	<title></title>
	<style  type="text/css">
	@page {
		    size: A4;
		}
		table {
        border-collapse:collapse;
        border:1px solid #000000;
    }
    table td {
        border:1px solid #000000;
        padding: 6px;
        font-size: 14px;
        font-weight: bold;
    }
    hr {
    display: block;
    height: 1px;
    border: 0;
    border-top: 1px solid #000;
    margin: 1em 0;
    padding: 0; 
}
    td.col1 {
        width: 40px;
        white-space: nowrap;
    }
    td.center {
        text-align: center;
    }
    td.col2 {
        width: 60px;
        white-space: nowrap;
    }
    td.col3 {
        width: 120px;
        white-space: nowrap;
    }
    div.break {
      page-break-after: always;
    }
    .img1           {margin: 0px auto; top: 0px;}
	.default-left 	{position: absolute; left: 80px; }
	.nomorForm		{left:20px; top:150px; text-decoration: underline;}
	.beritaAcara	{top: 200px; font-weight: bold; text-decoration: underline; font-size: 20px; left: 150px;}
	.yangBertanda	{top: 250px; left: 20px;}
	.namaInstansi	{top: 280px; left: 50px;}
	.isinamaInstansi{top: 280px; left: 250px;}
	.pj				{top: 295px; left: 50px;}
	.isipj			{top: 295px; left: 250px;}
	.alamat			{top: 310px; left: 50px;}
	.isialamat		{top: 310px; left: 250px;}
	.telpon			{top: 340px; left: 50px;}
	.isitelpon		{top: 340px; left: 250px;}
	.menyerahkan	{top: 365px; left: 20px;}
	.table			{top: 400px; left: 20px;}
	.pengambilCU	{top: 550px; left: 50px;}
	.isipengambilCU	{top: 550px; left: 300px;}
	.rekamanlCU		{top: 565px; left: 50px;}
	.isirekamanlCU	{top: 565px; left: 300px;}
	.tanggalCU		{top: 580px; left: 50px;}
	.isitanggalCU	{top: 580px; left: 300px;}
	.pengawetanCU	{top: 595px; left: 50px;}
	.isipengawetanCU{top: 595px; left: 300px;}
	.kemasanCU		{top: 610px; left: 50px;}
	.isikemasanCU	{top: 610px; left: 300px;}
	.membayar		{top: 650px; left: 20px;}
	.tempat			{top: 690px; left: 400px;}
	.penerima		{top: 720px; left: 50px;}
	.pemberi		{top: 720px; left: 400px;}
	.namapemberi	{top: 800px; left: 400px;}
	.namapenerima	{top: 800px; left: 50px;}
	.keterangan		{top: 830px; left: 10px; font-size: 12px; font-weight: bold;}
	</style>
	<script type="text/javascript">
    window.print();
</script>
</head>
<body>
	<div class="img1"><img src="${resource(dir: 'images', file: 'header.png')}" width="100%" align="center"></div>
	<hr width="100%" align="center">
	<div class="default-left nomorForm">FORM : 5.1.1/F-5.0/2011</div>
	<div class="default-left beritaAcara">BERITA ACARA PENERIMAAN CONTOH UJI</div>
	<div class="default-left yangBertanda">Yang bertanda tangan dibawah ini :</div>
	<div class="default-left namaInstansi">Nama Instansi/Perusahaan </div>
	<div class="default-left isinamaInstansi">: ${pendaftaranInstance?.nomorAgenda?.namaInstansi}</div>
	<div class="default-left pj">Penanggung Jawab </div>
	<div class="default-left isipj">: ${pendaftaranInstance?.nomorAgenda?.namaPenanggungJawab}</div>
	<div class="default-left alamat">Alamat Instansi/Perusahaan </div>
	<div class="default-left isialamat">: ${pendaftaranInstance?.nomorAgenda?.alamatInstansi}</div>
	<div class="default-left telpon">Telp./Fax </div>
	<div class="default-left isitelpon">: ${pendaftaranInstance?.nomorAgenda?.nomorTelepon}</div>
	<div class="default-left menyerahkan">Menyerahkan contoh uji untuk dianalisis di UPT Laboratorium Pusat MIPA UNS Dengan ketentuan/parameter sebagai berikut : </div>
	<div class="default-left table">
		<table>
			<tr align="center">
				<td>Jenis Contoh Uji</td>
				<td>Jumlah</td>
				<td> Kondisi </td>
				<td> Parameter </td>
			</tr>
			<tr>
				<td> ${pendaftaranInstance?.jenisContohUji} </td>
				<td> ${pendaftaranInstance?.jumlahContohUji} </td>
				<td> ${pendaftaranInstance?.kondisiContohUji} </td>
				<td> ${pendaftaranInstance?.jenisContohUji?.parameterKimia}, ${pendaftaranInstance?.jenisContohUji?.parameterBiologi}, ${pendaftaranInstance?.jenisContohUji?.parameterUdara} </td>
			</tr>
		</table>
	</div>
	<div class="default-left pengambilCU">Pihak pengambil contoh uji</div>
	<div class="default-left isipengambilCU">: ${pendaftaranInstance?.nomorAgenda?.pihakPengambilContohUji}</div>
	<div class="default-left rekamanlCU">Ketersediaan rekaman contoh uji</div>
	<div class="default-left isirekamanlCU">: ${pendaftaranInstance?.ketersediaanRekamanUji}</div>
	<div class="default-left tanggalCU">Tanggal pengambilan contoh uji</div>
	<div class="default-left isitanggalCU">: <g:formatDate format="dd-MM-yyyy" date="${pendaftaranInstance?.nomorAgenda?.tanggal}"/> </div>
	<div class="default-left pengawetanCU">Proses Pengawetan</div>
	<div class="default-left isipengawetanCU">: ${pendaftaranInstance?.prosesPengawetan}</div>
	<div class="default-left kemasanCU">Kemasan/wadah</div>
	<div class="default-left isikemasanCU">: ${pendaftaranInstance?.kemasan}</div>
	<div class="default-left membayar">Membayar Rp. <g:formatNumber locale="it" format="#,##0" number="${pendaftaranInstance?.total}"/> sebagai biaya pemeriksaan.</div>
	<div class="default-left tempat">Surakarta, <g:formatDate format="dd-MM-yyyy" date="${tanggal}"/></div>
	<div class="default-left penerima">Penerima contoh uji</div>
	<div class="default-left pemberi">Pemberi contoh uji,</div>
	<div class="default-left namapemberi">${pendaftaranInstance?.nomorAgenda?.namaPenanggungJawab}</div>
	<div class="default-left namapenerima">Yustina</div>
	<div class="default-left keterangan">
	Ket: <br>
	* Abnormalitas hasil analisis contoh uji bisa terjadi jika rekaman data tidak lengkap/tidak ada pengambilan contoh uji berasal dari pihak pelanggan yang tidak sesuai standar. <br>
	**Jika terjadi kesalahan pengambilan dan pengawetan contoh uji sangat memungkinkan terjadinya abnormalitas hasil analisis contoh uji.
	</div>
</body>
</html>