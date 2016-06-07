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
	.tagihan		{left:20px; top:150px; text-decoration: underline; text-align: center; font-weight: bold;}
	.namaInstansi	{top: 180px; left: 50px;}
	.isinamaInstansi{top: 180px; left: 250px;}
	.pj				{top: 195px; left: 50px;}
	.isipj			{top: 195px; left: 250px;}
	.alamat			{top: 210px; left: 50px;}
	.isialamat		{top: 210px; left: 250px;}
	.telpon			{top: 250px; left: 50px;}
	.isitelpon		{top: 250px; left: 250px;}
	.denganRincian	{top: 280px; left: 50px;}
	.table			{top: 300px; left: 20px; width: 100%;}
	.mohonPembayaran{top: 500px; left: 100px;}
	.tempat			{top: 600px; left: 400px;}
	.pemberi		{top: 630px; left: 400px;}
	.namapemberi	{top: 710px; left: 400px;}
	.nip			{top: 730px; left: 400px;}
	.keterangan		{top: 750px; left: 10px; font-size: 12px; font-weight: bold;}
	</style>
	<script type="text/javascript">
    window.print();
</script>
</head>
<body>
	<div class="img1"><img src="${resource(dir: 'images', file: 'header.png')}" width="100%" align="center"></div>
	<hr width="100%" align="center" color="#000">
	<div class="tagihan">TAGIHAN</div>
	<div class="default-left namaInstansi">Nama Instansi</div>
	<div class="default-left isinamaInstansi">: ${agendaInstance.namaInstansi}</div>
	<div class="default-left pj">Penanggung Jawab</div>
	<div class="default-left isipj">: ${agendaInstance.namaPenanggungJawab}</div>
	<div class="default-left alamat">Alamat</div>
	<div class="default-left isialamat">: ${agendaInstance.alamatInstansi}</div>
	<div class="default-left telpon">Untuk Pembayaran</div>
	<div class="default-left isitelpon">: Analisis air/udara/pengambilan sampel/akses/layanan lainya di UPT Lab Terpadu UNS</div>
	<div class="default-left denganRincian">Dengan Rincian</div>
	<div class="default-left table">
		<table width="100%">
			<tr>
				<td align="center">Banyak</td>
				<td align="center">Uraian</td>
				<td align="center">Harga Satuan</td>
				<td align="center">Biaya Sampling</td>
				<td align="center">Jumlah</td>
			</tr>
			<g:each in="${pendaftaranInstanceList}" status="i" var="pendaftaranInstance">
			<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
				<td align="center">${pendaftaranInstance.jumlahContohUji}</td>
				<td>${pendaftaranInstance.jenisContohUji}</td>
				<td align="right"><g:formatNumber locale="it" format="#,##0" number="${pendaftaranInstance.jenisContohUji.harga}" /></td>
				<td align="right">
				<g:if test="${pendaftaranInstance.nomorAgenda.pihakPengambilContohUji == 'Petugas UPT Lab Pusat UNS'}">
					<g:formatNumber locale="it" format="#,##0" number="${pendaftaranInstance.biayaAmbil}" />
				</g:if>
				</td>
				<td align="right"><g:formatNumber locale="it" format="#,##0" number="${pendaftaranInstance.total}" /></td>
			</tr>
			</g:each>
			<tr>
				<td colspan="4" align="center"> Jumlah Total </td>
				<td align="right">Rp. <g:formatNumber locale="it" format="#,##0" number="${total}" /></td>
			</tr>
		</table>
	</div>
	<div class="default-left mohonPembayaran"><center>Mohon pembayaran sejumlah tersebut diatas dibayarkan melalui <br>Nama Rekening : <strong>RPL 028 UNS untuk Operasional BLU 3</strong> Bank BNI <br>nomor rekening <strong>0034104488 </strong><br> Berita/Tujuan : <strong>Layanan UPT Lab Terpadu</strong> </center></div>
	<div class="default-left tempat">Surakarta, <g:formatDate format="dd-MM-yyyy" date="${tanggal}"/></div>
	<div class="default-left namapemberi">Lanjariyanti M</div>
	<div class="default-left nip">NIP. 19740603 100701 2 001</div>
	<div class="default-left keterangan">
	- Bukti transfer mohon diserahkan kepada kami atau dikirim melalui <strong>fax 0271 663379/ email: labuji@uns.ac.id</strong><br>
	- Untuk pengambilan hasil pengujian atau akses dimohon membawa surat tagihan ini beserta bukti transfer
	</div>
</body>
</html>