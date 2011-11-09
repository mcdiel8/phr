<%@ page import="phr.Cita" %>



<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="cita.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${citaInstance?.fecha}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'doctor', 'error')} required">
	<label for="doctor">
		<g:message code="cita.doctor.label" default="Doctor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="doctor" name="doctor.id" from="${phr.Doctor.list()}" optionKey="id" required="" value="${citaInstance?.doctor?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: citaInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="cita.status.label" default="Status" />
		
	</label>
	<g:select name="status" from="${citaInstance.constraints.status.inList}" value="${citaInstance?.status}" valueMessagePrefix="cita.status" noSelection="['': '']"/>
</div>

