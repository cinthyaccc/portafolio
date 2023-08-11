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
		<h1>Listado de Profesores</h1>
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th>Nombre</th>
					<th>Apellidos</th>
					<th>Rut</th>
					<th>Fecha Nac.</th>
					<th>Direccion</th>
					<th>Telefono</th>
					<th>Nivel</th>
					<th>Sección</th>
					
				</tr>
			</thead>
			<tbody>
				<%-- Iterar a través de la lista de Alumnos enviada desde el controlador --%>
				<c:forEach var="profesor" items="${profesor}">
					<tr>
						<td>${profesor.nombre}</td>
						<td>${profesor.apellido}</td>
						<td>${profesor.rut}</td>
						<td>${profesor.fechaNacimiento}</td>
						<td>${profesor.direccion}</td>
						<td>${profesor.telefono}</td>
						<td>${profesor.nivel}</td>
						<td>${profesor.nivel.getSeccion()}</td>
						
				


					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<%@ include file='footer.jsp'%>
</body>

</html>