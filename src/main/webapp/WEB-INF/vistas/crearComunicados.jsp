<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title><link rel="stylesheet" type="text/css" href="/Portafolio/res/css/estilos.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
</head>
<body>
<%@ include file='navbar.jsp'%>

<div class="formularioP" style="display: flex; justify-content: center;">
    <form action="/Portafolio/crearComunicados" method="post" onsubmit="return enviarFormulario(event)">
			<h1 class=tituloComunicado>Enviar Comunicado</h1>
			
		<div class="form-group">
		<label for="idProfesor">Selecciona un profesor:</label>
    <select id="idProfesor" name="idProfesor">
        <c:forEach var="profesor" items="${profesores}">
            <option value="${profesor.idProfesor}">${profesor.nombre} ${profesor.apellido}</option>
        </c:forEach>
    </select>
    </div>
    <div class="form-group">
		<label for="idNivel">Selecciona un profesor:</label>
    <select id="idNivel" name="idNivel">
        <c:forEach var="nivel" items="${niveles}">
            <option value="${nivel.idNivel}">${nivel.seccion} ${profesor.nombreNivel}</option>
        </c:forEach>
    </select>
    </div>
		<br>
		<br>
			 <label for="nombre">Ingrese Fecha:</label><br> <input type="text" id="fecha"
				name="fecha" title="Campo Obligatorio"><br> <br>
			<span id="nombreValidationMessage" style="color: red;"></span>
			
			  <label for="nombre">Ingrese Titulo:</label><br> <input type="text" id="titulo"
				name="titulo" title="Campo Obligatorio"><br> <br>
			<span id="nombreValidationMessage" style="color: red;"></span>
			
			<label for="nombre">Ingrese Descripción:</label><br> <input type="text" id="detalle"
				name="detalle" title="Campo Obligatorio"><br> <br>
			<span id="nombreValidationMessage" style="color: red;"></span>
			
			<div style="display: flex; justify-content: center;">
            <input type="submit" value="Enviar" class="boton-enviar">
        </div>
		</form>
	</div>




</body>
</html>