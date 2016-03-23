<%@ page import="labpusat.Pengujian" %>



<li>
<div class="fieldcontain ${hasErrors(bean: pengujianInstance, field: 'nomorPengujian', 'error')} required">
	
	<g:field  type="hidden" name="nomorPengujian" value="1"/>

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: pengujianInstance, field: 'detailPengujian', 'error')} required">
	<label for="detailPengujian">
		<g:message code="pengujian.detailPengujian.label" default="Detail Pengujian" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="detailPengujian" required="" value="${detailPengujian}"/>

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: pengujianInstance, field: 'kodePendaftaran', 'error')} required">
	<label for="kodePendaftaran">
		<g:message code="pengujian.kodePendaftaran.label" default="Kode Pendaftaran" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="kodePendaftaran.id" required="" value="${pendaftaranInstance?.id}"/>
</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: pengujianInstance, field: 'kelompokUji', 'error')} required">
	<label for="kelompokUji">
		<g:message code="pengujian.kelompokUji.label" default="Kelompok Uji" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="kelompokUji" required="" value="${uji}"/>

</div>
</li>

