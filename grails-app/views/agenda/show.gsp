
<%@ page import="labpusat.Agenda" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'agenda.label', default: 'Agenda')}" />
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
		<div id="show-agenda" class="content scaffold-show" role="main">
			<h1 class="center"><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list agenda">
			
				<g:if test="${agendaInstance?.kode}">
				<li class="fieldcontain">
					<span id="kode-label" class="property-label"><g:message code="agenda.kode.label" default="Kode" /></span>
					
						<span class="property-value" aria-labelledby="kode-label"><g:fieldValue bean="${agendaInstance}" field="kode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${agendaInstance?.namaInstansi}">
				<li class="fieldcontain">
					<span id="namaInstansi-label" class="property-label"><g:message code="agenda.namaInstansi.label" default="Nama Instansi" /></span>
					
						<span class="property-value" aria-labelledby="namaInstansi-label"><g:fieldValue bean="${agendaInstance}" field="namaInstansi"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${agendaInstance?.namaPenanggungJawab}">
				<li class="fieldcontain">
					<span id="namaPenanggungJawab-label" class="property-label"><g:message code="agenda.namaPenanggungJawab.label" default="Nama Penanggung Jawab" /></span>
					
						<span class="property-value" aria-labelledby="namaPenanggungJawab-label"><g:fieldValue bean="${agendaInstance}" field="namaPenanggungJawab"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${agendaInstance?.alamatInstansi}">
				<li class="fieldcontain">
					<span id="alamatInstansi-label" class="property-label"><g:message code="agenda.alamatInstansi.label" default="Alamat Instansi" /></span>
					
						<span class="property-value" aria-labelledby="alamatInstansi-label"><g:fieldValue bean="${agendaInstance}" field="alamatInstansi"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${agendaInstance?.nomorTelepon}">
				<li class="fieldcontain">
					<span id="nomorTelepon-label" class="property-label"><g:message code="agenda.nomorTelepon.label" default="Nomor Telepon" /></span>
					
						<span class="property-value" aria-labelledby="nomorTelepon-label"><g:fieldValue bean="${agendaInstance}" field="nomorTelepon"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${agendaInstance?.pihakPengambilContohUji}">
				<li class="fieldcontain">
					<span id="pihakPengambilContohUji-label" class="property-label"><g:message code="agenda.pihakPengambilContohUji.label" default="Pihak Pengambil Contoh Uji" /></span>
					
						<span class="property-value" aria-labelledby="pihakPengambilContohUji-label"><g:fieldValue bean="${agendaInstance}" field="pihakPengambilContohUji"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${agendaInstance?.tanggal}">
				<li class="fieldcontain">
					<span id="tanggal-label" class="property-label"><g:message code="agenda.tanggal.label" default="Tanggal" /></span>
					
						<span class="property-value" aria-labelledby="tanggal-label"><g:formatDate date="${agendaInstance?.tanggal}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${agendaInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="agenda.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${agendaInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
			</ol>

			<g:form url="[resource:agendaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${agendaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
				</fieldset>
			</g:form>

			<div class="tableBaru">
			<table align="center">
					<tr>
					
						<th><g:message code="pendaftaran.nomorAgenda.label" default="Nomor Agenda" /></th>
					
					
						<th><g:message code="pendaftaran.jenisContohUji.label" default="Jenis Contoh Uji" /></th>
					
						<g:sortableColumn property="jumlahContohUji" title="${message(code: 'pendaftaran.jumlahContohUji.label', default: 'Jumlah Contoh Uji')}" />
					
						<g:sortableColumn property="ketersediaanRekamanUji" title="${message(code: 'pendaftaran.ketersediaanRekamanUji.label', default: 'Cetak Untuk Pelanggan')}" />
						
						<g:sortableColumn property="catatanAbnormalisasi" title="${message(code: 'pendaftaran.catatanAbnormalisasi.label', default: 'Action')}" />

						<g:sortableColumn property="catatanAbnormalisasi" title="${message(code: 'pendaftaran.catatanAbnormalisasi.label', default: 'Buat Surat Pengujian')}" />

						<g:sortableColumn property="status" title="${message(code: 'pendaftaran.status.label', default: 'Status')}" />
					
					</tr>
				<g:each in="${pendaftaranInstanceList}" status="i" var="pendaftaranInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link controller="pendaftaran" action="show" id="${pendaftaranInstance.id}">${fieldValue(bean: pendaftaranInstance, field: "nomorAgenda")}</g:link></td>
					
						<td>${fieldValue(bean: pendaftaranInstance, field: "jenisContohUji")}</td>
					
						<td>${fieldValue(bean: pendaftaranInstance, field: "jumlahContohUji")}</td>

						<td><g:link controller="pendaftaran" action="printBA" id="${pendaftaranInstance.id}">Cetak BA</g:link> | <g:link controller="pendaftaran" action="permintaanPengujian" id="${pendaftaranInstance.id}">Permintaaan Uji</g:link></td>

						<td>
						<g:if test="${!pendaftaranInstance?.statusBayar}">
						<g:link controller="pendaftaran" action="lunas" id="${pendaftaranInstance.id}">Lunas</g:link> | 
						</g:if>
						<g:link controller="pendaftaran" action="edit" id="${pendaftaranInstance.id}">Edit</g:link></td>
					
						<td><g:link controller="pengujian" action="create" id="${pendaftaranInstance.id}" params="[tipeUji: 'K']">Kimia</g:link> | <g:link controller="pengujian" action="create" id="${pendaftaranInstance.id}" params="[tipeUji: 'B']">Biologi</g:link> | <g:link controller="pengujian" action="create" id="${pendaftaranInstance.id}" params="[tipeUji: 'U']">Udara</g:link></td>

						<td>${fieldValue(bean: pendaftaranInstance, field: "status")}</td>
					
					</tr>
				</g:each>
			</table>
			</div>
			<button type="submit"><g:link controller="pendaftaran" action="tambahPendaftaran" id="${agendaInstance.id}">Tambah Peket Pengujian</g:link></button>
		</div>
	</body>
</html>
