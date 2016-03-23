
<%@ page import="labpusat.Paket" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'paket.label', default: 'Paket')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-paket" class="content scaffold-list" role="main">
			<h1 class="center"><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="tableBaru">
			<table align="center">
					<tr>
					
						<g:sortableColumn property="nama" title="${message(code: 'paket.nama.label', default: 'Nama')}" />
					
						<g:sortableColumn property="jenisContohUji" title="${message(code: 'paket.jenisContohUji.label', default: 'Jenis Contoh Uji')}" />
					
						<g:sortableColumn property="parameterKimia" title="${message(code: 'paket.parameterKimia.label', default: 'Parameter Kimia')}" />
					
						<g:sortableColumn property="parameterBiologi" title="${message(code: 'paket.parameterBiologi.label', default: 'Parameter Biologi')}" />
					
						<g:sortableColumn property="parameterUdara" title="${message(code: 'paket.parameterUdara.label', default: 'Parameter Udara')}" />
					
						<g:sortableColumn property="harga" title="${message(code: 'paket.harga.label', default: 'Harga')}" />
					
					</tr>
				<g:each in="${paketInstanceList}" status="i" var="paketInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${paketInstance.id}">${fieldValue(bean: paketInstance, field: "nama")}</g:link></td>
					
						<td>${fieldValue(bean: paketInstance, field: "jenisContohUji")}</td>
					
						<td>${fieldValue(bean: paketInstance, field: "parameterKimia")}</td>
					
						<td>${fieldValue(bean: paketInstance, field: "parameterBiologi")}</td>
					
						<td>${fieldValue(bean: paketInstance, field: "parameterUdara")}</td>
					
						<td>${fieldValue(bean: paketInstance, field: "harga")}</td>
					
					</tr>
				</g:each>
			</table>
			</div>
			<div class="pagination">
				<g:paginate total="${paketInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
