<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nuevo Registro</title>
<link rel="stylesheet" type="text/css" href="/Portafolio/res/css/estilos.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

   
</head>
<body>
<%@ include file='navbar.jsp'%>
<div class="container main-content" style="margin-bottom: 150px; margin-top: 60px;">
<div class="formularioP container  mx-auto" style="border: 2px solid black; padding: 20px; max-width: 850px; margin: 0 auto; background-color: #edf6ed">
    <form action="/Portafolio/CrearProfesor" method="post" onsubmit="return enviarFormulario(event)">
        <h1 class="tituloContacto text-center" style="margin-bottom: 50px;">Registro del Alumno</h1>
        
        <div class="row mb-3">
            <div class="col-md-4">
                <label for="nombre" class="form-label" style="font-weight: bold;">Ingrese Nombre:</label>
            </div>
            <div class="col-md-8">
                <input type="text" id="nombre" name="nombre" class="form-control border border-dark text-end" title="Campo Obligatorio">
                <span id="nombreValidationMessage" style="color: red;"></span>
            </div>
        </div>
        
        <div class="row mb-3">
            <div class="col-md-4">
                <label for="apellido" class="form-label" style="font-weight: bold;">Ingrese Apellido:</label>
            </div>
            <div class="col-md-8">
                <input type="text" id="apellido" name="apellido" class="form-control border border-dark text-end" title="Campo Obligatorio">
                <span id="apellidoValidationMessage" style="color: red;"></span>
            </div>
        </div>
        
        <div class="row mb-3">
            <div class="col-md-4">
                <label for="rut" class="form-label" style="font-weight: bold;">Ingrese Rut:</label>
            </div>
            <div class="col-md-8">
                <input type="text" id="rut" name="rut" class="form-control border border-dark text-end" title="Campo Obligatorio / Debe Introducir un Valor menor a 99.999.999 /sin puntos">
                <span id="rutValidationMessage" style="color: red;"></span>
            </div>
        </div>
        
        <div class="row mb-3">
            <div class="col-md-4">
                <label for="fechaNacimiento" class="form-label" style="font-weight: bold;">Ingrese Fecha de Nacimiento:</label>
            </div>
            <div class="col-md-8">
                <input type="date" id="fechaNacimiento" name="fechaNacimiento" class="form-control border border-dark text-end" onchange="convertirFechaToString()" title="Por favor, introduzca un formato valido DD/MM/AAA).">
                <span id="fechaValidationMessage" style="color: red;"></span>
            </div>
        </div>
        
        <div class="row mb-3">
            <div class="col-md-4">
                <label for="direccion" class="form-label" style="font-weight: bold;">Ingrese Dirección:</label>
            </div>
            <div class="col-md-8">
                <input type="text" id="direccion" name="direccion" class="form-control border border-dark text-end" title="Campo Obligatorio">
                <span id="direccionValidationMessage" style="color: red;"></span>
            </div>
        </div>
        
         <div class="row mb-3">
            <div class="col-md-4">
                <label for="nombrePadre" class="form-label" style="font-weight: bold;">Ingrese Nombre del Padre:</label>
            </div>
            <div class="col-md-8">
                <input type="text" id="nombrePadre" name="nombrePadre" class="form-control border border-dark text-end" title="Campo Obligatorio">
                <span id="direccionValidationMessage" style="color: red;"></span>
            </div>
        </div>
       
        <div class="row mb-3">
            <div class="col-md-4">
                <label for="nombreMadre" class="form-label" style="font-weight: bold;">Ingrese Nombre de la Madre:</label>
            </div>
            <div class="col-md-8">
                <input type="text" id="nombreMadre" name="nombreMadre" class="form-control border border-dark text-end" title="Campo Obligatorio">
                <span id="direccionValidationMessage" style="color: red;"></span>
            </div>
        </div>
			
        <div class="row mb-3">
            <div class="col-md-4">
                <label for="telefono" class="form-label" style="font-weight: bold;">Ingrese Nro. Telefonico:</label>
            </div>
            <div class="col-md-8">
                <input type="text" id="telefono" name="telefono" class="form-control border border-dark text-end" title="Campo Obligatorio / Debe Introducir un Valor Númerico.">
                <span id="cantidadAsistentesValidationMessage" style="color: red;"></span>
            </div>
        </div>
        
        <div class="row mb-3">
            <div class="col-md-4">
                <label for="idNivel" class="form-label" style="font-weight: bold;">Ingrese id del Nivel:</label>
            </div>
            <div class="col-md-8">
                <input type="text" id="idNivel" name="idNivel" class="form-control border border-dark text-end" title="Campo Obligatorio / Debe Introducir un Valor Númerico." required>
                <span id="idValidationMessage" style="color: red;"></span>
            </div>
        </div>
        
        <div class="row mb-3">
            <div class="col-md-4">
                <label for="email" class="form-label" style="font-weight: bold;">Ingrese Email:</label>
            </div>
            <div class="col-md-8">
                <input type="text" id="email" name="email" class="form-control border border-dark text-end" title="Campo Obligatorio / Debe Introducir un Valor Númerico." required>
                <span id="idValidationMessage" style="color: red;"></span>
            </div>
        </div>
          
          <div class="row justify-content-center">
  
        <div class="row justify-content-center">
            <div class="col-md-8 text-center">
                <input type="submit" value="Enviar" class="btn btn-primary btn-lg">
            </div>
        </div>
        </div>
    </form>
</div>
</div>
<div class="footer-container">
<%@ include file='footer.jsp'%>
</div>
<script>
        function convertirFechaToString() {
            // Obtener el valor del campo de entrada de fecha
            var fechaInput = document.getElementById("fecha");
            var fechaSeleccionada = fechaInput.value;
            
            // Convertir la fecha en formato YYYY-MM-DD a una cadena más legible
            var partesFecha = fechaSeleccionada.split("-");
            var fechaString = partesFecha[2] + "/" + partesFecha[1] + "/" + partesFecha[0];
            
            // Mostrar la fecha en formato de cadena
            var fechaStringElement = document.getElementById("fechaString");
            fechaStringElement.textContent = "Fecha seleccionada: " + fechaString;
        }
    </script>
</body>
</html>

