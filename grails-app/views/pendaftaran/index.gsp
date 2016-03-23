
<%@ page import="labpusat.Pendaftaran" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pendaftaran.label', default: 'Pendaftaran')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-pendaftaran" class="content scaffold-list" role="main">
			<h1 class="center"><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="tableBaru">
			<table align="center">
					<tr>
					
						<th><g:message code="pendaftaran.nomorAgenda.label" default="Nomor Agenda" /></th>
					
						<g:sortableColumn property="ketersediaanRekamanUji" title="${message(code: 'pendaftaran.ketersediaanRekamanUji.label', default: 'Ketersediaan Rekaman Uji')}" />
					
						<g:sortableColumn property="catatanAbnormalisasi" title="${message(code: 'pendaftaran.catatanAbnormalisasi.label', default: 'Catatan Abnormalisasi')}" />
					
						<th><g:message code="pendaftaran.jenisContohUji.label" default="Jenis Contoh Uji" /></th>
					
						<g:sortableColumn property="jumlahContohUji" title="${message(code: 'pendaftaran.jumlahContohUji.label', default: 'Jumlah Contoh Uji')}" />
					
						<g:sortableColumn property="kondisiContohUji" title="${message(code: 'pendaftaran.kondisiContohUji.label', default: 'Kondisi Contoh Uji')}" />
					
					</tr>
				<g:each in="${pendaftaranInstanceList}" status="i" var="pendaftaranInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pendaftaranInstance.id}">${fieldValue(bean: pendaftaranInstance, field: "nomorAgenda")}</g:link></td>
					
						<td>${fieldValue(bean: pendaftaranInstance, field: "ketersediaanRekamanUji")}</td>
					
						<td>${fieldValue(bean: pendaftaranInstance, field: "catatanAbnormalisasi")}</td>
					
						<td>${fieldValue(bean: pendaftaranInstance, field: "jenisContohUji")}</td>
					
						<td>${fieldValue(bean: pendaftaranInstance, field: "jumlahContohUji")}</td>
					
						<td>${fieldValue(bean: pendaftaranInstance, field: "kondisiContohUji")}</td>
					
					</tr>
				</g:each>
			</table>
			</div>
			<div class="pagination">
				<g:paginate total="${pendaftaranInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
