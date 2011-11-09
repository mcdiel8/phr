<%@ page import="phr.Especialidad" %>



<div class="fieldcontain ${hasErrors(bean: especialidadInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="especialidad.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${especialidadInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: especialidadInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="especialidad.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${especialidadInstance?.descripcion}"/>
</div>

