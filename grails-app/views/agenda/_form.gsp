<%@ page import="labpusat.Pendaftaran" %>
<%@ page import="labpusat.Agenda" %>




<li>
<div class="fieldcontain ${hasErrors(bean: agendaInstance, field: 'namaInstansi', 'error')} ">
	<label for="namaInstansi">
		<g:message code="agenda.namaInstansi.label" default="Nama Instansi" />
		
	</label>
	<g:textField name="namaInstansi" value="${agendaInstance?.namaInstansi}" required="true"/>

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: agendaInstance, field: 'namaPenanggungJawab', 'error')} ">
	<label for="namaPenanggungJawab">
		<g:message code="agenda.namaPenanggungJawab.label" default="Nama Penanggung Jawab" />
		
	</label>
	<g:textField name="namaPenanggungJawab" value="${agendaInstance?.namaPenanggungJawab}" required="true"/>

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: agendaInstance, field: 'alamatInstansi', 'error')} ">
	<label for="alamatInstansi">
		<g:message code="agenda.alamatInstansi.label" default="Alamat Instansi" />
		
	</label>
	<g:textField name="alamatInstansi" value="${agendaInstance?.alamatInstansi}" required="true"/>

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: agendaInstance, field: 'nomorTelepon', 'error')} ">
	<label for="nomorTelepon">
		<g:message code="agenda.nomorTelepon.label" default="Nomor Telepon" />
		
	</label>
	<g:textField name="nomorTelepon" value="${agendaInstance?.nomorTelepon}" required="true"/>

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



<li>
<div class="fieldcontain ${hasErrors(bean: pendaftaranInstance, field: 'jenisContohUji', 'error')} ">
	<label for="jenisContohUji">
		<g:message code="pendaftaran.jenisContohUji.label" default="Contoh Uji" />
		
	</label>
	<g:select id="jenisContohUji" name="jenisContohUji.id" from="${labpusat.Paket.list(sort:'nomorUrut')}" optionKey="id" value="${pendaftaranInstance?.jenisContohUji?.id}" class="many-to-one" required="true" />

</div>
</li>


<li>
<div class="fieldcontain  ">
	<label for="ketersediaanRekamanUji">
		Ketersediaan Rekaman Uji
		
	</label>
	<select name="ketersediaanRekamanUji" id="ketersediaanRekamanUji" style="opacity: 0;">
<option value="Ada">Ada</option>
<option value="Tidak Ada">Tidak Ada</option>
</select>

</div>
</li>

<li>
<div class="fieldcontain ${hasErrors(bean: pendaftaranInstance, field: 'jumlahContohUji', 'error')} ">
	<label for="jumlahContohUji">
		<g:message code="pendaftaran.jumlahContohUji.label" default="Jumlah Contoh Uji" />
		
	</label>
	<g:field type="number" min="1" size="60" name="jumlahContohUji" value="${pendaftaranInstance?.jumlahContohUji}" required="true"/>

</div>
</li>

<li>
<div class="fieldcontain  ">
	<label for="kondisiContohUji">
		Kondisi Contoh Uji
		
	</label>
	<select name="kondisiContohUji" id="kondisiContohUji" style="opacity: 0;">
<option value="Jernih ada endapan">Jernih ada endapan</option>
<option value="Jernih tidak ada endapan">Jernih tidak ada endapan</option>
<option value="Keruh ada endapan">Keruh ada endapan</option>
<option value="Keruh tidak ada endapan">Keruh tidak ada endapan</option>
</select>

</div>
</li>

<li>
<div class="fieldcontain  ">
	<label for="prosesPengawetan">
		Proses Pengawetan
		
	</label>
	<select name="prosesPengawetan" id="prosesPengawetan" style="opacity: 0;">
<option value="Diawetkan">Diawetkan</option>
<option value="Tidak Diawetkan">Tidak Diawetkan</option>
</select>

</div>
</li>

<li>
<div class="fieldcontain  ">
	<label for="kemasan">
		Kemasan
		
	</label>
	
	<select name="kemasan" id="kemasan" style="opacity: 0;">
	<option value="Botol Plastik">Botol Plastik</option>
	<option value="Botol Kaca">Botol Kaca</option>
	<option value="Jirigen">Jirigen</option>
	</select>
	

</div>
	</li>

<li>
<div class="fieldcontain ${hasErrors(bean: pendaftaranInstance, field: 'catatanAbnormalisasi', 'error')} ">
	<label for="catatanAbnormalisasi">
		<g:message code="pendaftaran.catatanAbnormalisasi.label" default="Catatan Abnormalisasi" />
		
	</label>
	<g:textArea cols="45" rows="5" name="catatanAbnormalisasi" value="${pendaftaranInstance?.catatanAbnormalisasi}" required="true"/>

</div>
	</li>