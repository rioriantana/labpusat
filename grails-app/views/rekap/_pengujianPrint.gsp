<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<title>Rekap Pengujian</title>
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
<h3><center>RINCIAN PENGUJIAN LAB TERPADU UNS</center></h3>
<h3><center>Tanggal <g:formatDate format="dd-MM-yyyy" date="${tanggalAwal}"/> s/d <g:formatDate format="dd-MM-yyyy" date="${tanggalAhir}"/></center></h3>

<table width="100%">
    <tr>
        <td>No.</td>
         <td align="center">Kode Pengujian</td>
         <td align="center">Nama Paket</td>
         <td align="center">Tanggal pengujian</td>
        <td align="center">Kelompok Uji</td>
        <td align="center">Parameter Pengujian</td>
    </tr>
    <g:each in="${pengujianInstance}" status="i" var="pengujian">
        <tr>
            <td >${i+1}</td>
            <td align="left">${pengujian.kodePendaftaran.nomorAgenda}.${pengujian.nomorPengujian}.${pengujian?.kodePendaftaran?.jenisContohUji?.kodePaket}</td>
            <td align="left">${pengujian?.kodePendaftaran?.jenisContohUji}</td>
            <td align="center"><g:formatDate format="dd-MM-yyyy HH:mm" date="${pengujian?.kodePendaftaran?.nomorAgenda?.tanggal}"/></td>
            <td align="center">${pengujian?.kelompokUji}</td>
            <td align="left">${pengujian?.detailPengujian}</td>
        </tr>
    </g:each>
</table>
<br/>
Tanggal Cetak : <g:formatDate format="dd-MM-yyyy HH:mm" date="${new java.util.Date()}"/>

</body>
</html>
