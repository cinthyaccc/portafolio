<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nuevo Registro</title>
<link rel="stylesheet" type="text/css" href="/Portafolio/res/css/estilos.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<style>
    body, html {
        height: 100%;
        margin: 0;
    }
    .formulario-container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100%;
   margin-bottom: 30px; /* Agrega un margen inferior */
    }
  .formularioP {
    border: 2px solid #333;
    padding: 20px;
    text-align: center;
   margin-bottom: 30px; /* Agrega un margen inferior */
    transform: translateY(+20%);
    background-color: #f2f2f2;
}
  
     .centrar-botones {
        display: flex;
        justify-content: center;
    }
</style>
</head>
<body>
<%@ include file='navbar.jsp'%>

<div class="formularioP container">
    <form action="/Portafolio/CrearProfesor" method="post" onsubmit="return enviarFormulario(event)">
        <h1 class="tituloContacto text-center">Registro de Profesor</h1>
        
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
                <input type="text" id="fechaNacimiento" name="fechaNacimiento" class="form-control border border-dark text-end" title="Por favor, introduzca un formato valido DD/MM/AAA).">
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
          <div class="centrar-botones"> 
        <div class="row justify-content-center">
            <div class="col-md-8">
                <input type="submit" value="Enviar" class="btn btn-primary">
            </div>
        </div>
        </div>
    </form>
</div>

</body>
</html>
