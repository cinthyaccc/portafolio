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
        <h1 class="tituloContacto text-center" style="margin-bottom: 50px;">Registro del Nivel</h1>
        
        <div class="row mb-3">
            <div class="col-md-4">
                <label for="nombre" class="form-label" style="font-weight: bold;">Nombre del Nivel:</label>
            </div>
            <div class="col-md-8">
                <input type="text" id="nombreNivel" name="nombreNivel" class="form-control border border-dark text-end" title="Campo Obligatorio">
                <span id="nombreNivelValidationMessage" class="error-message"></span>
            </div>
        </div>
        
        <div class="row mb-3">
            <div class="col-md-4">
                <label for="seccion" class="form-label" style="font-weight: bold;">Ingrese Sección:</label>
            </div>
            <div class="col-md-8">
                <input type="text" id="seccion" name="secccion" class="form-control border border-dark text-end" title="Campo Obligatorio">
                <span id="seccionValidationMessage" class="error-message"></span>
            </div>
        </div>
        
        
          
          <div class="row justify-content-center">
  
        <div class="row justify-content-center">
            <div class="col-md-8 text-center">
                <input type="submit" value="Enviar" class="btn btn-primary btn-lg"  disabled>
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
document.addEventListener("DOMContentLoaded", function() {
    var form = document.querySelector("form");
    var nombreNivel = document.getElementById("nombreNivel");
    var seccion = document.getElementById("seccion");
    var botonEnviar = document.querySelector("input[type='submit']");

    function validarCampos() {
        var isValid = true;

        if (nombreNivel.value.trim() === "") {
            document.getElementById("nombreNivelValidationMessage").textContent = "Ingrese un nombre para el nivel.";
            isValid = false;
        } else {
            document.getElementById("nombreNivelValidationMessage").textContent = "";
        }

        if (seccion.value.trim() === "") {
            document.getElementById("seccionValidationMessage").textContent = "Ingrese una sección.";
            isValid = false;
        } else {
            document.getElementById("seccionValidationMessage").textContent = "";
        }

        if (isValid) {
            botonEnviar.removeAttribute("disabled");
        } else {
            botonEnviar.setAttribute("disabled", "disabled");
        }
    }

    // Agregar eventos de input a los campos del formulario
    nombreNivel.addEventListener("input", validarCampos);
    seccion.addEventListener("input", validarCampos);
});


</script>
</body>
</html>
