
<%@ page import="labpusat.Pendaftaran" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pendaftaran.label', default: 'Pendaftaran')}" />
		<title>Rekap Pendaftaran Pengujian Lab Terpadu UNS</title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			</ul>
		</div>
		<div id="list-pendaftaran" class="content scaffold-list" role="main">
			<h1 class="center">Rekap Pendaftaran Pengujian Lab Terpadu UNS</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
<g:form url="[action:'pendaftaran']" >
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
