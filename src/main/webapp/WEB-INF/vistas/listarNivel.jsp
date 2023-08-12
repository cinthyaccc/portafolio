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
    <h1 class="text-center">Listado de Niveles</h1>
    <div class="table-container d-flex justify-content-center">
        <table class="table table-bordered table-striped" style="margin-bottom: 100px; max-width: 800px;">
            <thead class="thead-dark">
                <tr>
                    <th>Nombre del Nivel</th>
                    <th>Sección</th>
                    <th>Tias del Nivel</th>
                </tr>
            </thead>
            <tbody>
                <%-- Iterar a través de la lista de Alumnos enviada desde el controlador --%>
                <c:forEach var="nivel" items="${niveles}">
                    <tr>
                        <td>${nivel.nombreNivel}</td>
                        <td>${nivel.seccion}</td>
                        <td>
                            <c:forEach var="profesor" items="${nivel.profesores}">
                                ${profesor.nombre} ${profesor.apellido}<br>
                            </c:forEach>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<%@ include file='footer.jsp'%>
</body>
</html>
