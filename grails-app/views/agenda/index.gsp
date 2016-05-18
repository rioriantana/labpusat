
<%@ page import="labpusat.Agenda" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'agenda.label', default: 'Agenda')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-agenda" class="content scaffold-list" role="main">
			<h1 class="center"><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<form method="post"><input placeholder="Masukan Nama Pelanggan" type="text" name="pelanggan"/>
			<input type="submit" value="cari"/></form> 
			<br>
			<div class="tableBaru">
			<table align="center">
					<tr>
					
						<g:sortableColumn property="kode" title="${message(code: 'agenda.kode.label', default: 'Kode')}" />
					
						<g:sortableColumn property="namaInstansi" title="${message(code: 'agenda.namaInstansi.label', default: 'Nama Instansi')}" />
					
						<g:sortableColumn property="namaPenanggungJawab" title="${message(code: 'agenda.namaPenanggungJawab.label', default: 'Nama Penanggung Jawab')}" />
					
						<g:sortableColumn property="alamatInstansi" title="${message(code: 'agenda.alamatInstansi.label', default: 'Alamat Instansi')}" />
					
						<g:sortableColumn property="nomorTelepon" title="${message(code: 'agenda.nomorTelepon.label', default: 'Nomor Telepon')}" />
					
						<g:sortableColumn property="pihakPengambilContohUji" title="${message(code: 'agenda.pihakPengambilContohUji.label', default: 'Pihak Pengambil Contoh Uji')}" />

						<td>Cetak</td>
					
					</tr>
				<g:each in="${agendaInstanceList}" status="i" var="agendaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${agendaInstance.id}">${fieldValue(bean: agendaInstance, field: "kode")}</g:link></td>
					
						<td>${fieldValue(bean: agendaInstance, field: "namaInstansi")}</td>
					
						<td>${fieldValue(bean: agendaInstance, field: "namaPenanggungJawab")}</td>
					
						<td>${fieldValue(bean: agendaInstance, field: "alamatInstansi")}</td>
					
						<td>${fieldValue(bean: agendaInstance, field: "nomorTelepon")}</td>
					
						<td>${fieldValue(bean: agendaInstance, field: "pihakPengambilContohUji")}</td>
						
						<td><g:link action="tagihan" id="${agendaInstance.id}">Tagihan</g:link> | <g:link action="kwitansi" id="${agendaInstance.id}">Kwitansi</g:link></td>
					</tr>
				</g:each>
			</table>
			</div>
			<div class="pagination">
				<g:paginate total="${agendaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
