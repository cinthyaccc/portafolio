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
                <span id="nombreValidationMessage"  class="error-message"></span>
            </div>
        </div>
        
        <div class="row mb-3">
            <div class="col-md-4">
                <label for="apellido" class="form-label" style="font-weight: bold;">Ingrese Apellido:</label>
            </div>
            <div class="col-md-8">
                <input type="text" id="apellido" name="apellido" class="form-control border border-dark text-end" title="Campo Obligatorio">
                <span id="apellidoValidationMessage"  class="error-message"></span>
            </div>
        </div>
        
        <div class="row mb-3">
            <div class="col-md-4">
                <label for="rut" class="form-label" style="font-weight: bold;">Ingrese Rut:</label>
            </div>
            <div class="col-md-8">
                <input type="text" id="rut" name="rut" class="form-control border border-dark text-end" title="Campo Obligatorio / Debe Introducir un Valor menor a 99.999.999 /sin puntos">
                <span id="rutValidationMessage"  class="error-message"></span>
            </div>
        </div>
        
        <div class="row mb-3">
            <div class="col-md-4">
                <label for="fechaNacimiento" class="form-label" style="font-weight: bold;">Ingrese Fecha de Nacimiento:</label>
            </div>
            <div class="col-md-8">
                <input type="date" id="fechaNacimiento" name="fechaNacimiento" class="form-control border border-dark text-end" onchange="convertirFechaToString()" title="Por favor, introduzca un formato valido DD/MM/AAA).">
                <span id="fechaValidationMessage"  class="error-message"></span>
            </div>
        </div>
        
        <div class="row mb-3">
            <div class="col-md-4">
                <label for="direccion" class="form-label" style="font-weight: bold;">Ingrese Dirección:</label>
            </div>
            <div class="col-md-8">
                <input type="text" id="direccion" name="direccion" class="form-control border border-dark text-end" title="Campo Obligatorio">
                <span id="direccionValidationMessage"  class="error-message"></span>
            </div>
        </div>
        
         <div class="row mb-3">
            <div class="col-md-4">
                <label for="nombrePadre" class="form-label" style="font-weight: bold;">Ingrese Nombre del Padre:</label>
            </div>
            <div class="col-md-8">
                <input type="text" id="nombrePadre" name="nombrePadre" class="form-control border border-dark text-end" title="Campo Obligatorio">
                <span id="direccionValidationMessage"  class="error-message"></span>
            </div>
        </div>
       
        <div class="row mb-3">
            <div class="col-md-4">
                <label for="nombreMadre" class="form-label" style="font-weight: bold;">Ingrese Nombre de la Madre:</label>
            </div>
            <div class="col-md-8">
                <input type="text" id="nombreMadre" name="nombreMadre" class="form-control border border-dark text-end" title="Campo Obligatorio">
                <span id="direccionValidationMessage"  class="error-message"></span>
            </div>
        </div>
			
        <div class="row mb-3">
            <div class="col-md-4">
                <label for="telefono" class="form-label" style="font-weight: bold;">Ingrese Nro. Telefonico:</label>
            </div>
            <div class="col-md-8">
                <input type="text" id="telefono" name="telefono" class="form-control border border-dark text-end" title="Campo Obligatorio / Debe Introducir un Valor Númerico.">
                <span id="cantidadAsistentesValidationMessage"  class="error-message"></span>
            </div>
        </div>
        
        <div class="row mb-3">
            <div class="col-md-4">
                <label for="idNivel" class="form-label" style="font-weight: bold;">Ingrese id del Nivel:</label>
            </div>
            <div class="col-md-8">
                <input type="text" id="idNivel" name="idNivel" class="form-control border border-dark text-end" title="Campo Obligatorio / Debe Introducir un Valor Númerico." required>
                <span id="idValidationMessage"  class="error-message"></span>
            </div>
        </div>
        
        <div class="row mb-3">
            <div class="col-md-4">
                <label for="email" class="form-label" style="font-weight: bold;">Ingrese Email:</label>
            </div>
            <div class="col-md-8">
                <input type="text" id="email" name="email" class="form-control border border-dark text-end" title="Campo Obligatorio / Debe Introducir un Valor Númerico." required>
                <span id="idValidationMessage"  class="error-message"></span>
            </div>
        </div>
          
          <div class="row justify-content-center">
  
        <div class="row justify-content-center">
            <div class="col-md-8 text-center">
                <input type="submit" value="Enviar" class="btn btn-primary btn-lg" disabled>
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
        
        
        document.addEventListener("DOMContentLoaded", function() {
            var form = document.querySelector("form");
            var nombre = document.getElementById("nombre");
            var apellido = document.getElementById("apellido");
            var rut = document.getElementById("rut");
            var fechaNacimiento = document.getElementById("fechaNacimiento");
            var direccion = document.getElementById("direccion");
            var nombrePadre = document.getElementById("nombrePadre");
            var nombreMadre = document.getElementById("nombreMadre");
            var telefono = document.getElementById("telefono");
            var idNivel = document.getElementById("idNivel");
            var email = document.getElementById("email");
            var botonEnviar = document.querySelector("input[type='submit']");

            function validarCampos() {
                var isValid = true;

                if (nombre.value.trim() === "") {
                    document.getElementById("nombreValidationMessage").textContent = "Ingrese un nombre.";
                    isValid = false;
                } else {
                    document.getElementById("nombreValidationMessage").textContent = "";
                }

                if (apellido.value.trim() === "") {
                    document.getElementById("apellidoValidationMessage").textContent = "Ingrese un apellido.";
                    isValid = false;
                } else {
                    document.getElementById("apellidoValidationMessage").textContent = "";
                }

                if (rut.value.trim() === "") {
                    document.getElementById("rutValidationMessage").textContent = "Ingrese un rut.";
                    isValid = false;
                } else {
                    document.getElementById("rutValidationMessage").textContent = "";
                }

                if (fechaNacimiento.value.trim() === "") {
                    document.getElementById("fechaValidationMessage").textContent = "Ingrese una fecha de nacimiento.";
                    isValid = false;
                } else {
                    document.getElementById("fechaValidationMessage").textContent = "";
                }

                if (direccion.value.trim() === "") {
                    document.getElementById("direccionValidationMessage").textContent = "Ingrese una dirección.";
                    isValid = false;
                } else {
                    document.getElementById("direccionValidationMessage").textContent = "";
                }

                if (direccion.value.trim() === "") {
                    document.getElementById("telefonoValidationMessage").textContent = "Ingrese una Número de Telefono.";
                    isValid = false;
                } else {
                    document.getElementById("telefonoValidationMessage").textContent = "";
                }
                // Resto de las validaciones para los campos faltantes...

                if (isValid) {
                    botonEnviar.removeAttribute("disabled");
                } else {
                    botonEnviar.setAttribute("disabled", "disabled");
                }
            }

            // Agregar eventos de input a los campos del formulario
            nombre.addEventListener("input", validarCampos);
            apellido.addEventListener("input", validarCampos);
            rut.addEventListener("input", validarCampos);
            fechaNacimiento.addEventListener("input", validarCampos);
            direccion.addEventListener("input", validarCampos);
            nombrePadre.addEventListener("input", validarCampos);
            nombreMadre.addEventListener("input", validarCampos);
            telefono.addEventListener("input", validarCampos);
            idNivel.addEventListener("input", validarCampos);
            email.addEventListener("input", validarCampos);
        });

    </script>
</body>
</html>

