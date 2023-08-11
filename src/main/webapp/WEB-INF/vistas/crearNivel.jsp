<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title><link rel="stylesheet" type="text/css" href="/Portafolio/res/css/estilos.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
</head>
<body>
<%@ include file='navbar.jsp'%>

<div class="formularioP" style="display: flex; justify-content: center;">
    <form action="/Portafolio/CrearNivel" method="post" onsubmit="return enviarFormulario(event)">
			<h1 class=tituloContacto>Registro de Nuevo Nivel</h1>
			 <label for="nombre">Ingrese Nombre del Nivel:</label><br> <input type="text" id="nombreNivel"
				name="nombreNivel" title="Campo Obligatorio"><br> <br>
			<span id="nombreValidationMessage" style="color: red;"></span>
			
			  <label for="nombre">Ingrese Sección:</label><br> <input type="text" id="seccion"
				name="seccion" title="Campo Obligatorio"><br> <br>
			<span id="nombreValidationMessage" style="color: red;"></span>
			
			
			<div style="display: flex; justify-content: center;">
            <input type="submit" value="Enviar" class="boton-enviar">
        </div>
		</form>
	</div>




</body>
</html>