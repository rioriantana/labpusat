<%@ page import="labpusat.Pendaftaran" %>



<li>
<div class="fieldcontain ${hasErrors(bean: pendaftaranInstance, field: 'nomorAgenda', 'error')} ">
	<label for="nomorAgenda">
		<g:message code="pendaftaran.nomorAgenda.label" default="Nomor Agenda" />
		
	</label>
	<g:select id="nomorAgenda" name="nomorAgenda.id" from="${labpusat.Agenda.list()}" optionKey="id" value="${pendaftaranInstance?.nomorAgenda?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: pendaftaranInstance, field: 'ketersediaanRekamanUji', 'error')} ">
	<label for="ketersediaanRekamanUji">
		<g:message code="pendaftaran.ketersediaanRekamanUji.label" default="Ketersediaan Rekaman Uji" />
		
	</label>
	<g:select name="ketersediaanRekamanUji" from="${pendaftaranInstance.constraints.ketersediaanRekamanUji.inList}" value="${pendaftaranInstance?.ketersediaanRekamanUji}" valueMessagePrefix="pendaftaran.ketersediaanRekamanUji" />

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: pendaftaranInstance, field: 'jenisContohUji', 'error')} ">
	<label for="jenisContohUji">
		<g:message code="pendaftaran.jenisContohUji.label" default="Jenis Contoh Uji" />
		
	</label>
	<g:select id="jenisContohUji" name="jenisContohUji.id" from="${labpusat.Paket.list()}" optionKey="id" value="${pendaftaranInstance?.jenisContohUji?.id}" class="many-to-one"/>

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: pendaftaranInstance, field: 'jumlahContohUji', 'error')} ">
	<label for="jumlahContohUji">
		<g:message code="pendaftaran.jumlahContohUji.label" default="Jumlah Contoh Uji" />
		
	</label>
	<g:field name="jumlahContohUji" required="true" type="number" value="${pendaftaranInstance.jumlahContohUji}"/>

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: pendaftaranInstance, field: 'kondisiContohUji', 'error')} ">
	<label for="kondisiContohUji">
		<g:message code="pendaftaran.kondisiContohUji.label" default="Kondisi Contoh Uji" />
		
	</label>
	<g:select name="kondisiContohUji" from="${pendaftaranInstance.constraints.kondisiContohUji.inList}" value="${pendaftaranInstance?.kondisiContohUji}" valueMessagePrefix="pendaftaran.kondisiContohUji" />

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: pendaftaranInstance, field: 'prosesPengawetan', 'error')} ">
	<label for="prosesPengawetan">
		<g:message code="pendaftaran.prosesPengawetan.label" default="Proses Pengawetan" />
		
	</label>
	<g:select name="prosesPengawetan" from="${pendaftaranInstance.constraints.prosesPengawetan.inList}" value="${pendaftaranInstance?.prosesPengawetan}" valueMessagePrefix="pendaftaran.prosesPengawetan" />

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: pendaftaranInstance, field: 'kemasan', 'error')} ">
	<label for="kemasan">
		<g:message code="pendaftaran.kemasan.label" default="Kemasan" />
		
	</label>
	<g:select name="kemasan" from="${pendaftaranInstance.constraints.kemasan.inList}" value="${pendaftaranInstance?.kemasan}" valueMessagePrefix="pendaftaran.kemasan" />

</div>
</li>


<li>
<div class="fieldcontain ${hasErrors(bean: pendaftaranInstance, field: 'catatanAbnormalisasi', 'error')} ">
	<label for="catatanAbnormalisasi">
		<g:message code="pendaftaran.catatanAbnormalisasi.label" default="Catatan Abnormalisasi" />
		
	</label>
	<g:textArea cols="45" rows="5" name="catatanAbnormalisasi" value="${pendaftaranInstance?.catatanAbnormalisasi}"/>

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: pendaftaranInstance, field: 'biayaAmbil', 'error')} ">
	<label for="biayaAmbil">
		<g:message code="pendaftaran.biayaAmbil.label" default="Biaya Ambil" />
		
	</label>
	<g:textField name="biayaAmbil" value="${pendaftaranInstance?.biayaAmbil}" required="true"/>

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: pendaftaranInstance, field: 'keterangan', 'error')} ">
	<label for="keterangan">
		<g:message code="pendaftaran.keterangan.label" default="Keterangan" />
		
	</label>
	<g:textField name="keterangan" value="${pendaftaranInstance?.keterangan}" required="true"/>

</div>
</li>