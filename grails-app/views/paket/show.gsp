
<%@ page import="labpusat.Paket" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'paket.label', default: 'Paket')}" />
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
		<div id="show-paket" class="content scaffold-show" role="main">
			<h1 class="center"><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list paket">
			
				<g:if test="${paketInstance?.nama}">
				<li class="fieldcontain">
					<span id="nama-label" class="property-label"><g:message code="paket.nama.label" default="Nama" /></span>
					
						<span class="property-value" aria-labelledby="nama-label"><g:fieldValue bean="${paketInstance}" field="nama"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paketInstance?.jenisContohUji}">
				<li class="fieldcontain">
					<span id="jenisContohUji-label" class="property-label"><g:message code="paket.jenisContohUji.label" default="Jenis Contoh Uji" /></span>
					
						<span class="property-value" aria-labelledby="jenisContohUji-label"><g:fieldValue bean="${paketInstance}" field="jenisContohUji"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paketInstance?.parameterKimia}">
				<li class="fieldcontain">
					<span id="parameterKimia-label" class="property-label"><g:message code="paket.parameterKimia.label" default="Parameter Kimia" /></span>
					
						<span class="property-value" aria-labelledby="parameterKimia-label"><g:fieldValue bean="${paketInstance}" field="parameterKimia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paketInstance?.parameterBiologi}">
				<li class="fieldcontain">
					<span id="parameterBiologi-label" class="property-label"><g:message code="paket.parameterBiologi.label" default="Parameter Biologi" /></span>
					
						<span class="property-value" aria-labelledby="parameterBiologi-label"><g:fieldValue bean="${paketInstance}" field="parameterBiologi"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paketInstance?.parameterUdara}">
				<li class="fieldcontain">
					<span id="parameterUdara-label" class="property-label"><g:message code="paket.parameterUdara.label" default="Parameter Udara" /></span>
					
						<span class="property-value" aria-labelledby="parameterUdara-label"><g:fieldValue bean="${paketInstance}" field="parameterUdara"/></span>
					
				</li>
				</g:if>
			

				<g:if test="${paketInstance?.harga}">
				<li class="fieldcontain">
					<span id="harga-label" class="property-label"><g:message code="paket.harga.label" default="Harga" /></span>
					
						<span class="property-value" aria-labelledby="harga-label"><g:fieldValue bean="${paketInstance}" field="harga"/></span>
					
				</li>
				</g:if>

				<g:if test="${paketInstance?.biayaAmbil}">
				<li class="fieldcontain">
					<span id="biayaAmbil-label" class="property-label"><g:message code="paket.biayaAmbil.label" default="Biaya Ambil" /></span>
					
						<span class="property-value" aria-labelledby="biayaAmbil-label"><g:fieldValue bean="${paketInstance}" field="biayaAmbil"/></span>
					
				</li>
				</g:if>

				<g:if test="${paketInstance?.kodePaket}">
				<li class="fieldcontain">
					<span id="kodePaket-label" class="property-label"><g:message code="paket.kodePaket.label" default="Kode Paket" /></span>
					
						<span class="property-value" aria-labelledby="kodePaket-label"><g:fieldValue bean="${paketInstance}" field="kodePaket"/></span>
					
				</li>
				</g:if>
				

				<g:if test="${paketInstance?.nomorUrut}">
				<li class="fieldcontain">
					<span id="nomorUrut-label" class="property-label"><g:message code="paket.nomorUrut.label" default="Nomor Urut" /></span>
					
						<span class="property-value" aria-labelledby="nomorUrut-label"><g:fieldValue bean="${paketInstance}" field="nomorUrut"/></span>
					
				</li>
				</g:if>

			</ol>
			<g:form url="[resource:paketInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${paketInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
