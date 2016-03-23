<%@ page import="labpusat.Pendaftaran" %>
<%@ page import="labpusat.Agenda" %>




<li>
<div class="fieldcontain ${hasErrors(bean: agendaInstance, field: 'namaInstansi', 'error')} ">
	<label for="namaInstansi">
		<g:message code="agenda.namaInstansi.label" default="Nama Instansi" />
		
	</label>
	<g:textField name="namaInstansi" value="${agendaInstance?.namaInstansi}"/>

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: agendaInstance, field: 'namaPenanggungJawab', 'error')} ">
	<label for="namaPenanggungJawab">
		<g:message code="agenda.namaPenanggungJawab.label" default="Nama Penanggung Jawab" />
		
	</label>
	<g:textField name="namaPenanggungJawab" value="${agendaInstance?.namaPenanggungJawab}"/>

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: agendaInstance, field: 'alamatInstansi', 'error')} ">
	<label for="alamatInstansi">
		<g:message code="agenda.alamatInstansi.label" default="Alamat Instansi" />
		
	</label>
	<g:textField name="alamatInstansi" value="${agendaInstance?.alamatInstansi}"/>

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: agendaInstance, field: 'nomorTelepon', 'error')} ">
	<label for="nomorTelepon">
		<g:message code="agenda.nomorTelepon.label" default="Nomor Telepon" />
		
	</label>
	<g:textField name="nomorTelepon" value="${agendaInstance?.nomorTelepon}"/>

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: agendaInstance, field: 'pihakPengambilContohUji', 'error')} ">
	<label for="pihakPengambilContohUji">
		<g:message code="agenda.pihakPengambilContohUji.label" default="Pihak Pengambil Contoh Uji" />
		
	</label>
	<g:select name="pihakPengambilContohUji" from="${agendaInstance.constraints.pihakPengambilContohUji.inList}" value="${agendaInstance?.pihakPengambilContohUji}" valueMessagePrefix="agenda.pihakPengambilContohUji"/>

</div>
</li>

