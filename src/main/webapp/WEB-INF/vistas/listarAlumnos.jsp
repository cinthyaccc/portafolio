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
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
</head>
<body>
<%@ include file='navbar.jsp'%>

<div class="container">
		<h1>Listado de Alumnos</h1>
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th>Nombre</th>
					<th>Apellidos</th>
					<th>Rut</th>
					<th>Direccion</th>
					<th>Papá</th>
					<th>Mamá</th>
					<th>Telefono</th>
					<th>Nivel</th>
					<th>Sección</th>
					<th>Fecha Nac.</th>
					<th>Email</th>
				</tr>
			</thead>
			<tbody>
				<%-- Iterar a través de la lista de Alumnos enviada desde el controlador --%>
				<c:forEach var="alumno" items="${alumnos}">
					<tr>
						<td>${alumno.nombre}</td>
						<td>${alumno.apellido}</td>
						<td>${alumno.rut}</td>
						<td>${alumno.direccion}</td>
						<td>${alumno.nombrePadre}</td>
						<td>${alumno.nombreMadre}</td>
						<td>${alumno.telefono}</td>
						<td>${alumno.idNivel}</td>
						<td>${alumno.idNivel.getSeccion()}</td>
						<td>${alumno.fechaNacimiento}</td>
						<td>${alumno.email}</td>


					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<%@ include file='footer.jsp'%>
</body>

</html>