<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registro Nuevo Usuario</title>
<link rel="stylesheet" type="text/css" href="/Portafolio/res/css/estilos.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

   
</head>
<body>
<%@ include file='navbar.jsp'%>
<div class="container main-content" style="margin-bottom: 150px; margin-top: 60px;">
<div class="formularioP container  mx-auto" style="border: 2px solid black; padding: 20px; max-width: 850px; margin: 0 auto; background-color: #edf6ed">
    <form action="/Portafolio/registro" method="post" onsubmit="return enviarFormulario(event)">
        <h1 class="tituloContacto text-center" style="margin-bottom: 50px;">Registro de Nuevo Usuario</h1>
        
        <div class="row mb-3">
            <div class="col-md-4">
                <label for="usuario" class="form-label" style="font-weight: bold;">Nombre:</label>
            </div>
            <div class="col-md-8">
                <input type="text" id="usuario" name="usuario" class="form-control border border-dark" title="Campo Obligatorio">
                <span id="usuarioValidationMessage" class="error-message"></span>
            </div>
        </div>
        
        <div class="row mb-3">
            <div class="col-md-4">
                <label for="password" class="form-label" style="font-weight: bold;">Ingrese Contraseña:</label>
            </div>
            <div class="col-md-8">
                <input type="text" id="password" name="password" class="form-control border border-dark" title="Campo Obligatorio">
                <span id="passwordValidationMessage" class="error-message"></span>
            </div>
        </div>
        
         <div class="row mb-3">
            <div class="col-md-4">
                <label for="email" class="form-label" style="font-weight: bold;">Ingrese Email:</label>
            </div>
            <div class="col-md-8">
                <input type="text" id="email" name="email" class="form-control border border-dark" title="Campo Obligatorio">
                <span id="emailValidationMessage" class="error-message"></span>
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
    var nombre = document.getElementById("nombre");
    var password = document.getElementById("password");
    var email = document.getElementById("email");
    var botonEnviar = document.querySelector("input[type='submit']");

    function validarCampos() {
        var isValid = true;

        if (usuario.value.trim() === "") {
            document.getElementById("usuarioValidationMessage").textContent = "Ingrese nombre de Usuario";
            isValid = false;
        } else {
            document.getElementById("usuarioValidationMessage").textContent = "";
        }

        if (password.value.trim() === "") {
            document.getElementById("passwordValidationMessage").textContent = "Ingrese password";
            isValid = false;
        } else {
            document.getElementById("passwordValidationMessage").textContent = "";
        }

        if (email.value.trim() === "") {
            document.getElementById("emailValidationMessage").textContent = "Ingrese Email";
            isValid = false;
        } else {
            document.getElementById("emailValidationMessage").textContent = "";
        }
        if (isValid) {
            botonEnviar.removeAttribute("disabled");
        } else {
            botonEnviar.setAttribute("disabled", "disabled");
        }
    }

    // Agregar eventos de input a los campos del formulario
    usuario.addEventListener("input", validarCampos);
    password.addEventListener("input", validarCampos);
    email.addEventListener("input", validarCampos);
});


</script>
</body>
</html>
