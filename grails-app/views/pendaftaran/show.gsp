
<%@ page import="labpusat.Pendaftaran" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pendaftaran.label', default: 'Pendaftaran')}" />
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
		<div id="show-pendaftaran" class="content scaffold-show" role="main">
			<h1 class="center"><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pendaftaran">
			
				<g:if test="${pendaftaranInstance?.nomorAgenda}">
				<li class="fieldcontain">
					<span id="nomorAgenda-label" class="property-label"><g:message code="pendaftaran.nomorAgenda.label" default="Nomor Agenda" /></span>
					
						<span class="property-value" aria-labelledby="nomorAgenda-label"><g:link controller="agenda" action="show" id="${pendaftaranInstance?.nomorAgenda?.id}">${pendaftaranInstance?.nomorAgenda?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${pendaftaranInstance?.ketersediaanRekamanUji}">
				<li class="fieldcontain">
					<span id="ketersediaanRekamanUji-label" class="property-label"><g:message code="pendaftaran.ketersediaanRekamanUji.label" default="Ketersediaan Rekaman Uji" /></span>
					
						<span class="property-value" aria-labelledby="ketersediaanRekamanUji-label"><g:fieldValue bean="${pendaftaranInstance}" field="ketersediaanRekamanUji"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pendaftaranInstance?.catatanAbnormalisasi}">
				<li class="fieldcontain">
					<span id="catatanAbnormalisasi-label" class="property-label"><g:message code="pendaftaran.catatanAbnormalisasi.label" default="Catatan Abnormalisasi" /></span>
					
						<span class="property-value" aria-labelledby="catatanAbnormalisasi-label"><g:fieldValue bean="${pendaftaranInstance}" field="catatanAbnormalisasi"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pendaftaranInstance?.jenisContohUji}">
				<li class="fieldcontain">
					<span id="jenisContohUji-label" class="property-label"><g:message code="pendaftaran.jenisContohUji.label" default="Jenis Contoh Uji" /></span>
					
						<span class="property-value" aria-labelledby="jenisContohUji-label"><g:link controller="paket" action="show" id="${pendaftaranInstance?.jenisContohUji?.id}">${pendaftaranInstance?.jenisContohUji?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${pendaftaranInstance?.jumlahContohUji}">
				<li class="fieldcontain">
					<span id="jumlahContohUji-label" class="property-label"><g:message code="pendaftaran.jumlahContohUji.label" default="Jumlah Contoh Uji" /></span>
					
						<span class="property-value" aria-labelledby="jumlahContohUji-label"><g:fieldValue bean="${pendaftaranInstance}" field="jumlahContohUji"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pendaftaranInstance?.kondisiContohUji}">
				<li class="fieldcontain">
					<span id="kondisiContohUji-label" class="property-label"><g:message code="pendaftaran.kondisiContohUji.label" default="Kondisi Contoh Uji" /></span>
					
						<span class="property-value" aria-labelledby="kondisiContohUji-label"><g:fieldValue bean="${pendaftaranInstance}" field="kondisiContohUji"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pendaftaranInstance?.prosesPengawetan}">
				<li class="fieldcontain">
					<span id="prosesPengawetan-label" class="property-label"><g:message code="pendaftaran.prosesPengawetan.label" default="Proses Pengawetan" /></span>
					
						<span class="property-value" aria-labelledby="prosesPengawetan-label"><g:fieldValue bean="${pendaftaranInstance}" field="prosesPengawetan"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pendaftaranInstance?.kemasan}">
				<li class="fieldcontain">
					<span id="kemasan-label" class="property-label"><g:message code="pendaftaran.kemasan.label" default="Kemasan" /></span>
					
						<span class="property-value" aria-labelledby="kemasan-label"><g:fieldValue bean="${pendaftaranInstance}" field="kemasan"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pendaftaranInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="pendaftaran.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${pendaftaranInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pendaftaranInstance?.total}">
				<li class="fieldcontain">
					<span id="total-label" class="property-label"><g:message code="pendaftaran.total.label" default="Total" /></span>
					
						<span class="property-value" aria-labelledby="total-label"><g:fieldValue bean="${pendaftaranInstance}" field="total"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:pendaftaranInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${pendaftaranInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
