
<%@ page import="labpusat.Pengujian" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pengujian.label', default: 'Pengujian')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-pengujian" class="content scaffold-show" role="main">
			<h1 class="center"><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pengujian">
			
				<g:if test="${pengujianInstance?.nomorPengujian}">
				<li class="fieldcontain">
					<span id="nomorPengujian-label" class="property-label"><g:message code="pengujian.nomorPengujian.label" default="Nomor Pengujian" /></span>
					
						<span class="property-value" aria-labelledby="nomorPengujian-label"><g:fieldValue bean="${pengujianInstance}" field="nomorPengujian"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pengujianInstance?.detailPengujian}">
				<li class="fieldcontain">
					<span id="detailPengujian-label" class="property-label"><g:message code="pengujian.detailPengujian.label" default="Detail Pengujian" /></span>
					
						<span class="property-value" aria-labelledby="detailPengujian-label"><g:fieldValue bean="${pengujianInstance}" field="detailPengujian"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pengujianInstance?.kodePendaftaran}">
				<li class="fieldcontain">
					<span id="kodePendaftaran-label" class="property-label"><g:message code="pengujian.kodePendaftaran.label" default="Kode Pendaftaran" /></span>
					
						<span class="property-value" aria-labelledby="kodePendaftaran-label"><g:link controller="pendaftaran" action="show" id="${pengujianInstance?.kodePendaftaran?.id}">${pengujianInstance?.kodePendaftaran?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${pengujianInstance?.kelompokUji}">
				<li class="fieldcontain">
					<span id="kelompokUji-label" class="property-label"><g:message code="pengujian.kelompokUji.label" default="Kelompok Uji" /></span>
					
						<span class="property-value" aria-labelledby="kelompokUji-label"><g:fieldValue bean="${pengujianInstance}" field="kelompokUji"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:pengujianInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${pengujianInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
			<button type="submit"><g:link target="_blank" controller="pengujian" action="serahTerimaPengujian"  id="${pengujianInstance.id}">Cetak Surat Serah Terima Pengujian</g:link></button>
		</div>
	</body>
</html>
