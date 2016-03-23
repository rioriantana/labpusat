
<%@ page import="labpusat.Pengujian" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pengujian.label', default: 'Pengujian')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-pengujian" class="content scaffold-list" role="main">
			<h1 class="center"><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="tableBaru">
			<table align="center">
					<tr>
					
						<g:sortableColumn property="nomorPengujian" title="${message(code: 'pengujian.nomorPengujian.label', default: 'Nomor Pengujian')}" />
					
						<g:sortableColumn property="detailPengujian" title="${message(code: 'pengujian.detailPengujian.label', default: 'Detail Pengujian')}" />
					
						<th><g:message code="pengujian.kodePendaftaran.label" default="Kode Pendaftaran" /></th>
					
						<g:sortableColumn property="kelompokUji" title="${message(code: 'pengujian.kelompokUji.label', default: 'Kelompok Uji')}" />

						<g:sortableColumn property="kelompokUji" title="Cetak Ulang" />
					
					</tr>
				<g:each in="${pengujianInstanceList}" status="i" var="pengujianInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pengujianInstance.id}">${fieldValue(bean: pengujianInstance, field: "nomorPengujian")}</g:link></td>
					
						<td>${fieldValue(bean: pengujianInstance, field: "detailPengujian")}</td>
					
						<td>${fieldValue(bean: pengujianInstance, field: "kodePendaftaran")}</td>
					
						<td>${fieldValue(bean: pengujianInstance, field: "kelompokUji")}</td>

						<td><g:link target="_blank" action="serahTerimaPengujian" id="${pengujianInstance.id}">Cetak</g:link></td>
					
					</tr>
				</g:each>
			</table>
			</div>
			<div class="pagination">
				<g:paginate total="${pengujianInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
