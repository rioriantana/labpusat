<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<title>Rekap Pendaftaran</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<style  type="text/css">
    @page {
        size: A4 landscape;
        @top-center {
            content: element(header);
        }
    }
    table {
        border-collapse:collapse;
        border:1px solid #FF0000;
        font-size: 14px;
    }
    table td {
        border:1px solid #FF0000;
        padding: 6px;
    }
    td.center {
        text-align: center;
    }

</style>
	<script type="text/javascript">
    window.print();
	</script>
</head>
<body>
    <br/>
<h3><center>RINCIAN PENDAFTARAN PENGUJIAN LAB TERPADU UNS</center></h3>
<h3><center>Tanggal <g:formatDate format="dd-MM-yyyy" date="${tanggalAwal}"/> s/d <g:formatDate format="dd-MM-yyyy" date="${tanggalAhir}"/></center></h3>

<table width="100%">
    <tr>
        <td>No.</td>
         <td align="center">Kode Pendaftaran</td>
         <td align="center">Tanggal Pendaftaran</td>
        <td align="center">Instansi</td>
        <td align="center">Penanggung</td>
        <td align="center">Jenis Paket</td>
        <td align="center">Jumlah Contoh Uji</td>
        <td align="center">Posisi</td>
        <td align="center">Harga Satuan</td>
        <td align="center">Total</td>
        <td align="center">Status</td>
    </tr>
    <g:each in="${pendaftaranInstance}" status="i" var="pendaftaran">
        <tr>
            <td >${i+1}</td>
            <td align="left">${pendaftaran?.nomorAgenda?.kode}</td>
            <td align="center"><g:formatDate format="dd-MM-yyyy HH:mm" date="${pendaftaran?.nomorAgenda?.tanggal}"/></td>
            <td align="left">${pendaftaran?.nomorAgenda?.namaInstansi}</td>
            <td align="left">${pendaftaran?.nomorAgenda?.namaPenanggungJawab}</td>
            <td align="center">${pendaftaran?.jenisContohUji}</td>
            <td align="center">${pendaftaran?.jumlahContohUji}</td>
            <td align="center">${pendaftaran?.status}</td>
            <td align="right"><g:formatNumber locale="it" format="#,##0" number="${pendaftaran?.jenisContohUji?.harga}"/></td>
            <td align="right"><g:formatNumber locale="it" format="#,##0" number="${pendaftaran?.total}"/></td>
            <td align="center"><g:if test="${!pendaftaran?.statusBayar}">BELUM LUNAS</g:if><g:else>LUNAS</g:else></td>
        </tr>
    </g:each>
    <tr>
    	<td colspan="8" align="center"><strong>Total Biaya</strong></td>
    	<td colspan="2" align="right">Rp. <g:formatNumber format="#,##0" number="${pemasukan}"/> </td>
        <td align="right">Rp. <g:formatNumber format="#,##0" number="${lunas}"/> </td>
    </tr>
</table>
<br/>
Tanggal Cetak : <g:formatDate format="dd-MM-yyyy HH:mm" date="${new java.util.Date()}"/>

</body>
</html>
