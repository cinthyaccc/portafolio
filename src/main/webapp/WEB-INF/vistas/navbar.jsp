<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">

</head>
<body>

<div class="navbar-container">
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
           <a class="navbar-brand" href="#" style="color: black;">
    <img src="/Portafolio/res/img/ampalu_logo.jpg" alt="Logo Jardin Infantil Ampalu" style="height: 80px; width: auto;">
</a>

            <div class="navbar-nav ml-auto" id="navbar-list" style="margin-right: 0; color: black>
                <!-- Utiliza la clase "nav-item" en cada enlace -->
                <a class="nav-item nav-link" href="/Portafolio/" style="color: black;  font-size: 20px; font-weight: bold;">Inicio</a>
                <%-- Verificar si el usuario NO está autenticado --%>
                    <% if (request.getRemoteUser() == null) { %>
                     <a class="nav-item nav-link" href="login" style="color: black; font-size: 20px; font-weight: bold;">Iniciar Sesión</a>
                     <a class="nav-item nav-link" href="Registrarse" style="color: black; font-size: 20px; font-weight: bold;">Registrarse</a>
                     
                    <% } %>
               <%-- Verificar si el usuario tiene el rol "administrador" --%>
                    <% if (request.isUserInRole("ROLE_administrador")) { %>
                          
                 <div class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: black;">
        Parvulario
    </a>
    <ul class="dropdown-menu" aria-labelledby="navbarDropdown" style="background-color: white;">
        <li><a class="dropdown-item" href="CrearProfesor" style="color: black;">Crear Parvulario</a></li>
        <li><a class="dropdown-item" href="ListarProfesor" style="color: black;">Listar Parvulario</a></li>
    </ul>
</div>

<div class="nav-item dropdown"> 
    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: black;">
        Alumno
    </a>
    <ul class="dropdown-menu" aria-labelledby="navbarDropdown" style="background-color: white;">
        <li><a class="dropdown-item" href="CrearAlumno" style="color: black;">Crear Alumno</a></li>
        <li><a class="dropdown-item" href="ListarAlumno" style="color: black;">Listar Alumnos</a></li>
    </ul>
</div>

<div class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: black;">
        Nivel
    </a>
    <ul class="dropdown-menu" aria-labelledby="navbarDropdown" style="background-color: white;">
        <li><a class="dropdown-item" href="CrearNivel" style="color: black;">Crear Nivel</a></li>
        <li><a class="dropdown-item" href="ListarNivel" style="color: black;">Listar Niveles</a></li>
    </ul>
</div>
                 
      <form action="${pageContext.request.contextPath}/logout" method="post">
    <button type="submit" class="btn btn-link" style="color: black ; text-decoration: none; font-weight: bold; font-size: 20px;">Salir</button>
</form>
    <% } %>

                    
               
                <%-- Verificar si el usuario tiene el rol "profesor" --%>
                    <% if (request.isUserInRole("ROLE_profesor")) { %>
                	<a class="nav-item nav-link" href="CrearComunicado" style="color: black;">Crear Comunicado</a>
                	<a class="nav-item nav-link" href="ListarAlumnos" style="color: black;">Listado de Alumnos</a>
                  	<form action="${pageContext.request.contextPath}/logout" method="post">
                            <button type="submit" class="btn btn-link" style="color: black;">Logout</button>
                    </form>
                   <% } %>
               <%-- Verificar si el usuario tiene el rol "apoderao" --%>
                    <% if (request.isUserInRole("ROLE_apoderado")) { %>
                <a class="nav-item nav-link" href="ListarApoderado" style="color: black;">ListarApoderado</a>
            		 <a class="nav-item nav-link" href="Pintemos" style="color: black;">Pintemos</a>
            		 <form action="${pageContext.request.contextPath}/logout" method="post">
                            <button type="submit" class="btn btn-link" style="color: black;">Logout</button>
                     </form>
            		<% } %>
            </div>
        </div>
    </nav>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>