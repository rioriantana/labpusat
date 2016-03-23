
<%@ page import="labpusat.Pendaftaran" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pendaftaran.label', default: 'Pendaftaran')}" />
		<title>Rekap Pengujian Lab Terpadu UNS</title>
		<style type="text/css">
		.right{
			float: right;
		}
		</style>
	</head>
	<body>
		<div id="list-pendaftaran" class="content scaffold-list" role="main">
			<h1 class="center">Rekap Pengujian Lab Terpadu UNS</h1>
<g:form url="[action:'pengujian']" >
Berdasarkan Kelompok Uji:<br>
<g:select class="right" name="kelompok" value="${params?.kelompok}" from="${['Kimia': 'Kimia', 'Biologi': 'Biologi', 'Udara': 'Udara', 'Semua': 'Semua']}" optionKey="key" optionValue="value" />
<br><br>
<g:datePicker name="tanggalAwal" precision="day"  relativeYears="[-10..10]" default="${new Date()}" />
<br><br><h2><center>Sampai Dengan</center></h2>
<g:datePicker name="tanggalAhir" precision="day"  relativeYears="[-10..10]" default="${new Date()}" />
<br><br>
<fieldset class="buttons">
<button type="submit" class="action">Print</button>
</fieldset>
</g:form>

</div>
	</body>
</html>
