<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'agenda.label', default: 'Agenda')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="create-agenda" class="content scaffold-create" role="main">
			<h1 class="center">Form Pendaftaran Pengujian Lab Terpadu UNS</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${agendaInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${agendaInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:agendaInstance, action:'save']" >
			<ul>
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
			</ul>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="Simpan" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
