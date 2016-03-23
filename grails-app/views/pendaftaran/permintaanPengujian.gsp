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
	.default-left 	{position: absolute; left: 80px; }
	.img1           {margin: 0px auto; top: 0px;}
	hr {
    display: block;
    height: 1px;
    border: 0;
    border-top: 1px solid #000;
    margin: 1em 0;
    padding: 0; 
}
	.nomorForm		{left:20px; top:130px; text-decoration: underline; font-size: 14px;}
	.beritaAcara	{top: 180px; font-weight: bold; text-decoration: underline; font-size: 16px; left: 200px;}
	.yangBertanda	{top: 210px; left: 20px; font-size: 14px;}
	.namaInstansi	{top: 240px; left: 50px; font-size: 14px;}
	.isinamaInstansi{top: 240px; left: 250px; font-size: 14px;}
	.pj				{top: 255px; left: 50px; font-size: 14px;}
	.isipj			{top: 255px; left: 250px; font-size: 14px;}
	.alamat			{top: 270px; left: 50px; font-size: 14px;}
	.isialamat		{top: 270px; left: 250px; font-size: 14px;}
	.telpon			{top: 285px; left: 50px; font-size: 14px;}
	.isitelpon		{top: 285px; left: 250px; font-size: 14px;}
	.menyerahkan	{top: 305px; left: 20px; font-size: 14px;}
	.analisa		{top: 345px; left: 50px; }
	.table			{top: 565px; left: 30px; font-size: 14px;}
	.pengambilCU	{top: 700px; left: 50px; font-size: 14px;}
	.isipengambilCU	{top: 700px; left: 300px; font-size: 14px;}
	.rekamanlCU		{top: 715px; left: 50px; font-size: 14px;}
	.isirekamanlCU	{top: 715px; left: 300px; font-size: 14px;}
	.catatan		{top: 730px; left: 50px; font-size: 14px;}
	.isicatatan		{top: 730px; left: 300px; font-size: 14px;}
	.demikian		{top: 750px; left: 20px; font-size: 14px;}
	.tempat			{top: 790px; left: 400px; font-size: 14px;}
	.penerima		{top: 820px; left: 50px; font-size: 14px;}
	.pemberi		{top: 820px; left: 400px; font-size: 14px;}
	.namapemberi	{top: 900px; left: 400px; font-size: 14px;}
	.namapenerima	{top: 900px; left: 50px; font-size: 14px;}
	</style>
	<script type="text/javascript">
    window.print();
	</script>
</head>
<body>
	<div class="img1"><img src="${resource(dir: 'images', file: 'header.png')}" width="100%" align="center"></div>
	<hr width="100%" align="center" color="#000000">
	<div class="default-left nomorForm">FORM : 5.1.3/F-5.0/2011</div>
	<div class="default-left beritaAcara">PERMINTAAN PENGUJIAN</div>
	<div class="default-left yangBertanda">Yang bertanda tangan dibawah ini :</div>
	<div class="default-left namaInstansi">Nama Instansi/Perusahaan </div>
	<div class="default-left isinamaInstansi">: ${pendaftaranInstance?.nomorAgenda?.namaInstansi}</div>
	<div class="default-left pj">Penanggung Jawab </div>
	<div class="default-left isipj">: ${pendaftaranInstance?.nomorAgenda?.namaPenanggungJawab}</div>
	<div class="default-left alamat">Alamat Instansi/Perusahaan </div>
	<div class="default-left isialamat">: ${pendaftaranInstance?.nomorAgenda?.alamatInstansi}</div>
	<div class="default-left telpon">Telp./Fax </div>
	<div class="default-left isitelpon">: ${pendaftaranInstance?.nomorAgenda?.nomorTelepon}</div>
	<div class="default-left menyerahkan">Bersama ini kami mengajukan permohonan untuk dilakukan pengujian terhadap contoh ujia yang telah kami serahkan pada Laboratorium Pusat MIPA UNS, meliputi parameter dan catatan sebagai berikut :</div>
	<div class="default-left analisa"><img src="${resource(dir: 'images', file: 'scan1.png')}" width="90%" class="absolute" align="center"></div>
	<div class="default-left table">
		<table>
			<tr align="center">
				<td>Jenis Contoh Uji</td>
				<td>Jumlah</td>
				<td> Kondisi </td>
				<td> Parameter </td>
			</tr>
			<tr>
				<td> ${pendaftaranInstance?.jenisContohUji}  </td>
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
	<div class="default-left catatan">Catatan abnormalitas contoh uji</div>
	<div class="default-left isicatatan">: ${pendaftaranInstance?.catatanAbnormalisasi}</div>
	<div class="default-left demikian">Demikian permintaan pengujian ini saya buat, atas kerjasama yang baik saya mengucapkan terimakasih.</div>
	<div class="default-left tempat">Surakarta, <g:formatDate format="dd-MM-yyyy" date="${tanggal}"/></div>
	<div class="default-left penerima">Penerima contoh uji</div>
	<div class="default-left pemberi">Pemberi contoh uji,</div>
	<div class="default-left namapemberi">${pendaftaranInstance?.nomorAgenda?.namaPenanggungJawab}</div>
	<div class="default-left namapenerima">Yustina</div>
</body>
</html>