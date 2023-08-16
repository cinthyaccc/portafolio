<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" type="text/css" href="/Portafolio/res/css/estilos.css">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
          crossorigin="anonymous">
</head>
<body>
<%@ include file='navbar.jsp'%>
<div class="container main-content" style="margin-bottom: 150px; margin-top: 60px;">
    <h1 class="tituloComunicado" style="text-align: center; margin-bottom: 30px;"><strong>Enviar Comunicado</strong></h1>
    <div class="formularioP border border-dark border-2"
         style="display: flex; justify-content: center; background-color: #c1e1c5; margin-top: 30px; padding: 20px; width: 80%; margin: 0 auto;">
        <form action="/Portafolio/crearComunicados" method="post">

            <div class="form-group" style="margin-top: 40px;">
                <label for="idProfesor" class="form-label" style="font-weight: bold;">Selecciona un Parvulario:</label>
                <select id="idProfesor" name="idProfesor" onchange="cargarAlumnos()">
                    <c:forEach var="profesor" items="${profesores}">
                        <option value="${profesor.idProfesor}">${profesor.nombre} ${profesor.apellido}</option>
                    </c:forEach>
                </select>
                <h6><strong>Listado de Alumnos:</strong></h6>
                 <div>
        		<input type="checkbox" id="selectAllCheckbox" onchange="selectAllAlumnos(this)">
        		<label for="selectAllCheckbox">Seleccionar Todos</label>
    			</div>
    			
                <div id="listaAlumnosSeleccionadosDiv" style = "border: 2px solid black; padding: 15px;">
                <!-- Inputs ocultos para almacenar los IDs de los alumnos seleccionados -->
                <input type="hidden" id="alumnosSeleccionados" name="alumnosSeleccionados" value="">
                </div>
            </div>

            <br>
            <br>
            <label for="fecha" class="form-label" style="font-weight: bold;">Ingrese Fecha:</label><br>
<input type="date" id="fecha" name="fecha" class="form-control border border-dark" title="Campo Obligatorio">
<span id="fechaValidationMessage" class="error-message"></span><br>
<br>

<label for="titulo" class="form-label" style="font-weight: bold;">Ingrese Titulo:</label><br>
<input type="text" id="titulo" name="titulo" class="form-control border border-dark" title="Campo Obligatorio">
<span id="tituloValidationMessage" class="error-message"></span><br>
<br>

<label for="detalle" class="form-label" style="font-weight: bold;">Ingrese Descripción:</label><br>
<input type="text" id="detalle" name="detalle" class="form-control border border-dark" title="Campo Obligatorio">
<span id="detalleValidationMessage" class="error-message"></span><br>
<br>

            <div class="row justify-content-center">
                <div class="col-md-8 text-center">
                        <input type="submit" value="Enviar" class="btn btn-primary btn-lg" disabled>
                </div>
            </div>
        </form>
    </div>
    <div id="listaEstudiantesSeleccionadosDiv">
        <!-- Aquí se cargará la lista de estudiantes seleccionados con checkboxes -->
    </div>
    <%@ include file='footer.jsp'%>
</div>

<script>
    function cargarAlumnos() {
        var idProfesor = document.getElementById("idProfesor").value;

        var xhr = new XMLHttpRequest();
        xhr.open("GET", "/Portafolio/obtenerAlumnosPorProfesor?idProfesor=" + idProfesor, true);
        xhr.onreadystatechange = function () {
            if (xhr.readyState === 4 && xhr.status === 200) {
                var alumnos = JSON.parse(xhr.responseText);
                actualizarListaAlumnos(alumnos);
            }
        };
        xhr.send();
    }

    function selectAllAlumnos(selectAll) {
        var checkboxes = document.getElementsByName("alumnosSeleccionados");
        checkboxes.forEach(function(checkbox) {
            checkbox.checked = selectAll;
        });
    }

    function actualizarListaAlumnos(alumnos) {
        var listaEstudiantesDiv = document.getElementById("listaAlumnosSeleccionadosDiv");
        listaEstudiantesDiv.innerHTML = "";

        alumnos.forEach(function (alumno) {
            var checkbox = document.createElement("input");
            checkbox.type = "checkbox";
            checkbox.name = "alumnosSeleccionados";
            checkbox.value = alumno.idAlumno;

            var label = document.createElement("label");
            label.textContent = alumno.nombre;

            var br = document.createElement("br");

            listaEstudiantesDiv.appendChild(checkbox);
            listaEstudiantesDiv.appendChild(label);
            listaEstudiantesDiv.appendChild(br);
        });
    }

    
    
    
    function enviarFormulario(event) {
        event.preventDefault();

        var checkboxes = document.getElementsByName("alumnosSeleccionados");
        var selectedAlumnos = [];
        checkboxes.forEach(function(checkbox) {
            if (checkbox.checked) {
                selectedAlumnos.push(checkbox.value);
            }
        });

        document.getElementById("alumnosSeleccionados").value = selectedAlumnos.join(",");
        
        // Elimina esta línea si no deseas que el formulario se envíe automáticamente
        // document.querySelector("form").submit();
    }

    
    
    document.addEventListener("DOMContentLoaded", function() {
        var form = document.querySelector("form");
        var fecha = document.getElementById("fecha");
        var titulo = document.getElementById("titulo");
        var detalle = document.getElementById("detalle");
        var botonEnviar = document.querySelector("input[type='submit']");

        function validarCampos() {
            var isValid = true;

            if (fecha.value.trim() === "") {
                document.getElementById("fechaValidationMessage").textContent = "Ingrese una fecha.";
                isValid = false;
            } else {
                document.getElementById("fechaValidationMessage").textContent = "";
            }

            if (titulo.value.trim() === "") {
                document.getElementById("tituloValidationMessage").textContent = "Ingrese un título.";
                isValid = false;
            } else {
                document.getElementById("tituloValidationMessage").textContent = "";
            }

            if (detalle.value.trim() === "") {
                document.getElementById("detalleValidationMessage").textContent = "Ingrese una descripción.";
                isValid = false;
            } else {
                document.getElementById("detalleValidationMessage").textContent = "";
            }

            if (isValid) {
                botonEnviar.removeAttribute("disabled");
            } else {
                botonEnviar.setAttribute("disabled", "disabled");
            }
        }

        // Agregar eventos de input a los campos del formulario
        fecha.addEventListener("input", validarCampos);
        titulo.addEventListener("input", validarCampos);
        detalle.addEventListener("input", validarCampos);

        // Cargar alumnos cuando cambie el profesor seleccionado
        var idProfesorSelect = document.getElementById("idProfesor");
        idProfesorSelect.addEventListener("change", cargarAlumnos);
    });

</script>

</body>
</html>
