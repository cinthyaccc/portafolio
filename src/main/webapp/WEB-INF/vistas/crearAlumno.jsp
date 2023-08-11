<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Nuevo Registro</title>
<link rel="stylesheet" type="text/css" href="/Portafolio/res/css/estilos.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
</head>
<body>
<%@ include file='navbar.jsp'%>

<div class="formularioP" style="display: flex; justify-content: center;">
    <form action="/Portafolio/CrearAlumno" method="post" onsubmit="return enviarFormulario(event)">
			<h1 class=tituloContacto>Registro de Estudiante</h1>
			 <label for="nombre">Ingrese Nombre del Alumno:</label><br> <input type="text" id="nombre"
				name="nombre" title="Campo Obligatorio"><br> <br>
			<span id="nombreValidationMessage" style="color: red;"></span>
			  <label for="nombre">Ingrese Apellido del Alumno:</label><br> <input type="text" id="apellido"
				name="apellido" title="Campo Obligatorio"><br> <br>
			<span id="nombreValidationMessage" style="color: red;"></span>
			
			 <label for="rut">Ingrese Rut del Alumno:</label><br> <input
				type="text" id="rut" name="rut"
				title="Campo Obligatorio / Debe Introducir un Valor menor a 99.999.999 /sin puntos"><br>
			<br> <span id="rutValidationMessage" style="color: red;"></span>
			
			<br> <label for="fechaNcimiento">Ingrese Fecha de Nacimiento:</label><br> <input type="text" id="fechaNacimiento" name="fechaNacimiento")"
				title="Por favor, introduzca un formato valido DD/MM/AAA)."><br>
			<br> <span id="fechaValidationMessage" style="color: red;"></span>
			
			<br> <label for="direccion">Ingrese Dirección:</label><br> <input type="text" id="direccion" name="direccion"
				title="Campo Obligatorio"><br> <br>
			<span id="direccionValidationMessage" style="color: red;"></span> <br>
			
			<label for="nombrePadre">Nombre del Padre:</label><br>
			<input type="text" id="nombrePadre" name="nombrePadre"
				title="Campo Obligatorio / Min 10 Caracteres Max 50"><br>
			<br> <span id="nombreValidationMessage" style="color: red;"></span>
			
			<br> <label for="nombreMadre">Nombre de la Madre:</label><br> <input type="text" id="nombreMadre"
				name="nombreMadre" title="Campo Obligatorio / Max 70 Caracteres."><br>
			<br> <span id="nombreValidationMessage" style="color: red;"></span>
			
			<br> <label for="telefono">Ingrese Número Telefonico:</label><br> <input type="text" id="telefono"
				name="telefono" title="Campo Obligatorio / Debe Introducir un Valor Númerico."><br>
			<br> <span id="cantidadAsistentesValidationMessage" style="color: red;"></span> <br>
			
			
			
			<br> <label for="idNivel">Ingrese id del Nivel:</label><br> <input type="text" id="idNivel"
				name="idNivelString" title="Campo Obligatorio / Debe Introducir un Valor Númerico." required><br>
			<br> <span id="idValidationMessage" style="color: red;"></span> <br>

			
			<br> <label for="email">Ingrese Email:</label><br> <input type="text" id="email"
				name="email" title="Campo Obligatorio"><br>
			<br> <span id="cantidadAsistentesValidationMessage" style="color: red;"></span> <br>

			<div style="display: flex; justify-content: center;">
            <input type="submit" value="Enviar" class="boton-enviar">
        </div>
		</form>
	</div>




</body>
</html>