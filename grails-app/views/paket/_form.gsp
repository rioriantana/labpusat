<%@ page import="labpusat.Paket" %>




<li>
<div class="fieldcontain ${hasErrors(bean: paketInstance, field: 'nama', 'error')} ">
	<label for="nama">
		<g:message code="paket.nama.label" default="Nama" />
		
	</label>
	<g:textField name="nama" value="${paketInstance?.nama}"/>

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: paketInstance, field: 'jenisContohUji', 'error')} ">
	<label for="jenisContohUji">
		<g:message code="paket.jenisContohUji.label" default="Jenis Contoh Uji" />
		
	</label>
	<g:textField name="jenisContohUji" value="${paketInstance?.jenisContohUji}"/>

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: paketInstance, field: 'parameterKimia', 'error')} ">
	<label for="parameterKimia">
		<g:message code="paket.parameterKimia.label" default="Parameter Kimia" />
		
	</label>
	<g:textField name="parameterKimia" value="${paketInstance?.parameterKimia}"/>

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: paketInstance, field: 'parameterBiologi', 'error')} ">
	<label for="parameterBiologi">
		<g:message code="paket.parameterBiologi.label" default="Parameter Biologi" />
		
	</label>
	<g:textField name="parameterBiologi" value="${paketInstance?.parameterBiologi}"/>

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: paketInstance, field: 'parameterUdara', 'error')} ">
	<label for="parameterUdara">
		<g:message code="paket.parameterUdara.label" default="Parameter Udara" />
		
	</label>
	<g:textField name="parameterUdara" value="${paketInstance?.parameterUdara}"/>

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: paketInstance, field: 'harga', 'error')} ">
	<label for="harga">
		<g:message code="paket.harga.label" default="Harga" />
		
	</label>
	<g:textField name="harga" value="${paketInstance?.harga}"/>

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: paketInstance, field: 'kodePaket', 'error')} ">
	<label for="kodePaket">
		<g:message code="paket.kodePaket.label" default="Kode Paket" />
		
	</label>
	<g:textField name="kodePaket" value="${paketInstance?.kodePaket}"/>

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: paketInstance, field: 'nomorUrut', 'error')} ">
	<label for="nomorUrut">
		<g:message code="paket.nomorUrut.label" default="Nomor Urut Paket" />
		
	</label>
	<g:textField name="nomorUrut" value="${paketInstance?.nomorUrut}"/>

</div>
</li>