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
        font-size: 18px;
        font-weight: bold;
    }

 
    div.break {
      page-break-after: always;
    }
	.default-left 	{position: absolute; left: 10px; }
    .img1           {margin: 0px auto; top: 0px;}
	.nomorForm		{left:20px; top:190px; font-size: 20px; text-decoration: underline;}
	.serahTerima	{top: 210px; font-weight: bold; text-decoration: underline; font-size: 24px; left: 200px;}
    .padaKoor       {top: 234px; font-weight: bold; text-decoration: underline; font-size: 24px; left: 320px;}
	.penerima1      {top: 270px; left: 20px; font-size: 20px;}
    .nomor-agenda   {top: 270px; left: 600px; font-size: 20px;}
    .isipenerima1   {top: 270px; left: 400px; font-size: 20px;}
    .koordinator1           {top: 290px; left: 20px; font-size: 20px;}
    .isikoordinator1        {top: 290px; left: 400px; font-size: 20px;}
    .tanggalpenerima1       {top: 310px; left: 20px; font-size: 20px;}
    .isitanggalpenerima1    {top: 310px; left: 400px; font-size: 20px;}
    .table1         {top: 340px; left: 20px;}
    .tabl1          {top: 470px; left: 20px;}
    .tab1           {top: 530px; left: 20px;}
    .catatan1       {top: 590px; left: 20px; font-weight: bold;}
    .img2           {margin: 0px auto; top: 650px;}
    .nomorForm2      {left:20px; top:840px; font-size: 20px; text-decoration: underline;}
    .serahTerima2    {top: 860px; font-weight: bold; text-decoration: underline; font-size: 24px; left: 200px;}
    .padaKoor2       {top: 884px; font-weight: bold; text-decoration: underline; font-size: 24px; left: 320px;}
    .penerima2      {top: 920px; left: 20px; font-size: 20px;}
    .isipenerima2   {top: 920px; left: 400px; font-size: 20px;}
    .nomor-agenda2   {top: 920px; left: 600px; font-size: 20px;}
    .koordinator2           {top: 940px; left: 20px; font-size: 20px;}
    .isikoordinator2        {top: 940px; left: 400px; font-size: 20px;}
    .tanggalpenerima2       {top: 960px; left: 20px; font-size: 20px;}
    .isitanggalpenerima2    {top: 960px; left: 400px; font-size: 20px;}
    .table2         {top: 990px; left: 20px;}
    .tabl2          {top: 1120px; left: 20px;}
    .tab2           {top: 1180px; left: 20px;}
    .catatan2       {top: 1240px; left: 20px; font-weight: bold;}
	</style>
    <script type="text/javascript">
    window.print();
    </script>
</head>
<body>
<div class="default-left img1"><img src="${resource(dir: 'images', file: 'header.png')}" width="100%" align="center"></div>
<div class="default-left nomorForm">FORM : 5.1.1/F-5.0/2011</div>
<div class="default-left serahTerima">LEMBAR SERAH TERIMA DARI PENERIMA CONTOH UJI</div>
<div class="default-left padaKoor">KEPADA KOORDINATOR ANALISIS</div>
<div class="default-left penerima1">Penerima Contoh Uji</div>
<div class="default-left isipenerima1">: Yustina</div>
<div class="default-left nomor-agenda">Nomor agenda : ${pengujianInstance.kodePendaftaran.nomorAgenda.id}</div>
<div class="default-left koordinator1">Koordinator Analisis</div>
<div class="default-left isikoordinator1">: Retno</div>
<div class="default-left tanggalpenerima1">Tanggal Penerimaan</div>
<div class="default-left isitanggalpenerima1">: <g:formatDate format="dd-MM-yyyy" date="${pengujianInstance.kodePendaftaran.nomorAgenda.tanggal}"/></div>
<div class="default-left table1">
    <table width="1000">
        <tr align="center">
            <td>No.</td>
            <td>Kode Contoh Uji</td>
            <td>Jenis Contoh Uji</td>
            <td>Waktu Pengambilan</td>
            <td>Jenis Paket Uji</td>
        </tr>
        <tr>
            <td>1. </td>
            <td>${pengujianInstance.kodePendaftaran.nomorAgenda}.${pengujianInstance.nomorPengujian}.${pengujianInstance?.kodePendaftaran?.jenisContohUji?.kodePaket}  </td>
            <td> ${pengujianInstance?.kodePendaftaran?.jenisContohUji} </td>
            <td> <g:formatDate format="dd-MM-yyyy" date="${tanggal}"/> </td>
            <td> ${pengujianInstance.detailPengujian} </td>
        </tr>
    </table>
</div>
<div class="default-left tabl1">
    <table width="1000">
        <tr>
            <td>Catatan : ${pengujianInstance.kodePendaftaran.catatanAbnormalisasi} </td>
            <td>Kondisi : ${pengujianInstance.kodePendaftaran.kondisiContohUji} <br> Jumlah Contoh Uji :${pengujianInstance.kodePendaftaran.jumlahContohUji}</td>
            <td>Mengetahui </td>
        </tr>
    </table>
</div>
<div class="default-left tab1">
    <table width="1000">
        <tr>
            <td>Dikirim Oleh : Yustina <br> Paraf :</td>
            <td>Tanggal : <g:formatDate format="dd-MM-yyyy" date="${tanggal}"/> <br> Jam : <g:formatDate type="time" date="${tanggal}"/></td>
            <td>Diterima Oleh : Koordinator Analis <br> Paraf : </td>
        </tr>
    </table>
</div>
<div class="default-left catatan1">Catatan : - Lembar 1 untuk penerima contoh uji. Lembar 2 untuk koordinator analisis</div>
<div class="default-left img2"><img src="${resource(dir: 'images', file: 'header.png')}" width="100%" align="center"></div>
<div class="default-left nomorForm2">FORM : 5.1.1/F-5.0/2011</div>
<div class="default-left serahTerima2">LEMBAR SERAH TERIMA DARI PENERIMA CONTOH UJI</div>
<div class="default-left padaKoor2">KEPADA KOORDINATOR ANALISIS</div>
<div class="default-left penerima2">Penerima Contoh Uji</div>
<div class="default-left isipenerima2">: Yustina</div>
<div class="default-left nomor-agenda2">Nomor agenda : ${pengujianInstance.kodePendaftaran.nomorAgenda.id}</div>
<div class="default-left koordinator2">Koordinator Analisis</div>
<div class="default-left isikoordinator2">: Retno</div>
<div class="default-left tanggalpenerima2">Tanggal Penerimaan</div>
<div class="default-left isitanggalpenerima2">: <g:formatDate format="dd-MM-yyyy" date="${pengujianInstance.kodePendaftaran.nomorAgenda.tanggal}"/></div>
<div class="default-left table2">
    <table width="1000">
        <tr align="center">
            <td>No.</td>
            <td>Kode Contoh Uji</td>
            <td>Jenis Contoh Uji</td>
            <td>Waktu Pengambilan</td>
            <td>Jenis Paket Uji</td>
        </tr>
        <tr>
            <td>1. </td>
            <td>${pengujianInstance.kodePendaftaran.nomorAgenda}.${pengujianInstance.nomorPengujian}.${pengujianInstance?.kodePendaftaran?.jenisContohUji?.kodePaket} </td>
            <td> ${pengujianInstance?.kodePendaftaran?.jenisContohUji} </td>
            <td> <g:formatDate format="dd-MM-yyyy" date="${tanggal}"/> </td>
            <td> ${pengujianInstance.detailPengujian} </td>
        </tr>
    </table>
</div>
<div class="default-left tabl2">
    <table width="1000">
        <tr>
            <td>Catatan : ${pengujianInstance.kodePendaftaran.catatanAbnormalisasi} </td>
            <td>Kondisi : ${pengujianInstance.kodePendaftaran.kondisiContohUji} <br> Jumlah Contoh Uji :${pengujianInstance.kodePendaftaran.jumlahContohUji}</td>
            <td>Mengetahui </td>
        </tr>
    </table>
</div>
<div class="default-left tab2">
    <table width="1000">
        <tr>
            <td>Dikirim Oleh : Yustina <br> Paraf :</td>
            <td>Tanggal : <g:formatDate format="dd-MM-yyyy" date="${tanggal}"/> <br> Jam : <g:formatDate type="time" date="${tanggal}"/></td>
            <td>Diterima Oleh : Koordinator Analis <br> Paraf : </td>
        </tr>
    </table>
</div>
<div class="default-left catatan2">Catatan : - Lembar 1 untuk penerima contoh uji. Lembar 2 untuk koordinator analisis</div>
</body>
</html>