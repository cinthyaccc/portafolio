<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Nuevo Registro</title>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   
    <script>
    var comunicadoCreado = '<%= request.getParameter("comunicadoCreado") %>';
    if (comunicadoCreado === 'true') {
        // Muestra una ventana emergente cuando el comunicado se ha creado
        alert("Comunicado creado exitosamente.");
    }
</script>
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
                 <div class="filtrar text-center" style="margin-top: 30px; margin-bottom: 20px;">
                <form method="get" action="/Portafolio/FiltrarPorRutProfesor" class="d-flex justify-content-center">
                    <div class="input-group">
                        <input type="text" class="form-control border-dark rounded-0" placeholder="Ingrese RUT Parvulario" name="rut" style="max-width: 300px; margin-bottom: 0;" onkeyup="buscarRut()">
                        <div class="input-group-append" style="margin-left: 10px; margin-bottom: 0;">
                            <button class="btn btn-primary btn-sm rounded" type="submit"><strong>Filtrar</strong></button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="table-container">
                <table class="table table-bordered table-striped" style="margin-bottom: 100px;">
                    <thead class="thead-dark">
                       <tr>
					<th>Titulo</th>
					<th>Detalle</th>
					<th>Fecha</th>
					
				</tr>
                    </thead>
                    <tbody id="resultados">
                       
                      <c:forEach var="comunicados" items="${comunicados}">
					<tr>
						<td>${comunicados.titulo}</td>
						<td>${comunicados.detalle}</td>
						<td>${comunicados.fecha}</td>
					

					</tr>
				</c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="footer-container">
            <%@ include file='footer.jsp'%>
        </div>
    </div>

    <script>
   
        function buscarRut() {
            var input = document.querySelector('input[name="rut"]');
            var resultadosDiv = document.getElementById('resultados');
            var valorRut = input.value;

            if (valorRut.trim() === '') {
                resultadosDiv.innerHTML = ''; // Limpiar resultados si el campo est� vac�o
                return;
            }

            var filas = resultadosDiv.getElementsByTagName('tr');
            for (var i = 0; i < filas.length; i++) {
                var rutCelula = filas[i].getElementsByTagName('td')[2]; // 3era celda (�ndice 2) es el RUT
                if (rutCelula && rutCelula.textContent.includes(valorRut)) {
                    filas[i].style.display = ''; // Mostrar fila si el RUT coincide
                } else {
                    filas[i].style.display = 'none'; // Ocultar fila si el RUT no coincide
                }
            }
        }
    </script>
</body>
</html>



</html>