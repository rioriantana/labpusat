<%@ page import="labpusat.Pengujian" %>



<li>
<div class="fieldcontain ${hasErrors(bean: pengujianInstance, field: 'nomorPengujian', 'error')} required">
	<label for="nomorPengujian">
		<g:message code="pengujian.nomorPengujian.label" default="Nomor Pengujian" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nomorPengujian" value="${pengujianInstance?.nomorPengujian}"/>

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: pengujianInstance, field: 'detailPengujian', 'error')} required">
	<label for="detailPengujian">
		<g:message code="pengujian.detailPengujian.label" default="Detail Pengujian" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="detailPengujian" required="" value="${pengujianInstance?.detailPengujian}"/>

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: pengujianInstance, field: 'kodePendaftaran', 'error')} required">
	<label for="kodePendaftaran">
		<g:message code="pengujian.kodePendaftaran.label" default="Kode Pendaftaran" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="kodePendaftaran" name="kodePendaftaran.id" from="${labpusat.Pendaftaran.list()}" optionKey="id" required="" value="${pengujianInstance?.kodePendaftaran?.id}" class="many-to-one"/>

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: pengujianInstance, field: 'kelompokUji', 'error')} required">
	<label for="kelompokUji">
		<g:message code="pengujian.kelompokUji.label" default="Kelompok Uji" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="kelompokUji" required="" value="${pengujianInstance?.kelompokUji}"/>

</div>
</li>

