<%@ page import="phr.Doctor" %>



<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="doctor.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${doctorInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'apellido', 'error')} ">
	<label for="apellido">
		<g:message code="doctor.apellido.label" default="Apellido" />
		
	</label>
	<g:textField name="apellido" value="${doctorInstance?.apellido}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'cita', 'error')} ">
	<label for="cita">
		<g:message code="doctor.cita.label" default="Cita" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${doctorInstance?.cita?}" var="c">
    <li><g:link controller="cita" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="cita" action="create" params="['doctor.id': doctorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'cita.label', default: 'Cita')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: doctorInstance, field: 'especialidad', 'error')} required">
	<label for="especialidad">
		<g:message code="doctor.especialidad.label" default="Especialidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="especialidad" name="especialidad.id" from="${phr.Especialidad.list()}" optionKey="id" required="" value="${doctorInstance?.especialidad?.id}" class="many-to-one"/>
</div>

