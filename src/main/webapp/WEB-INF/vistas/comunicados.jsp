<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listado de Comunicados</title>
    <link rel="stylesheet" type="text/css" href="/Portafolio/res/css/estilos.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
    <%@ include file='navbar.jsp'%>
    <div class="lista-container" style="margin-bottom: 50px;">
        <div class="container main content">
            <h1 style="text-align: center; margin-top: 30px; margin-bottom: 30px;">Listado de Comunicados Enviados</h1>
            <div class="filtrar text-center" style="margin-top: 30px; margin-bottom: 20px;">
                <!-- Formulario para ingresar el RUT del alumno -->
                <form method="get" action="/Portafolio/FiltrarPorRutAlumno" class="d-flex justify-content-center">
                    <div class="input-group">
                        <input type="text" class="form-control border-dark rounded-0" placeholder="Ingrese RUT Alumno" name="rut" style="max-width: 300px; margin-bottom: 0;">
                        <div class="input-group-append" style="margin-left: 10px; margin-bottom: 0;">
                            <button class="btn btn-primary btn-sm rounded" type="submit"><strong>Buscar</strong></button>
                        </div>
                    </div>
                </form>
            </div>
           
            <!-- Mostrar los comunicados filtrados si hay resultados -->
            <c:if test="${not empty comunicados}">
                <table class="table table-bordered table-striped" style="margin-bottom: 100px;">
                    <thead class="thead-dark">
                        <tr>
                            <th>Titulo</th>
                            <th>Detalle</th>
                            <th>Fecha</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="comunicado" items="${comunicados}">
                            <tr>
                                <td>${comunicado.titulo}</td>
                                <td>${comunicado.detalle}</td>
                                <td>${comunicado.fecha}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:if>
        </div>
    </div>
    <div class="footer-container">
        <%@ include file='footer.jsp'%>
    </div>
</body>
</html>
