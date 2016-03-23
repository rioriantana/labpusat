<%@ page import="labpusat.Pengujian" %>




<li>
<div class="fieldcontain ${hasErrors(bean: pengujianInstance, field: 'detailPengujian', 'error')} required">
	<label for="detailPengujian">
		<g:message code="pengujian.detailPengujian.label" default="Detail Pengujian" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="detailPengujian" required="" value="${pendaftaranInstance?.jenisContohUji?.parameterKimia}"/>

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: pengujianInstance, field: 'kodePendaftaran', 'error')} required">
	<label for="kodePendaftaran">
		<g:message code="pengujian.kodePendaftaran.label" default="Kode Pendaftaran" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="kodePendaftaran" required="" value="${pendaftaranInstance?.kode}"/>

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: pengujianInstance, field: 'kelompokUji', 'error')} required">
	<label for="kelompokUji">
		<g:message code="pengujian.kelompokUji.label" default="Kelompok Uji" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="kelompokUji" required="" value="Kimia"/>

</div>
</li>

