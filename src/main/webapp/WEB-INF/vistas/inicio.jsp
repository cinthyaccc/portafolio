<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Inicio</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
	


<%@ include file="navbar.jsp"%>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/fabric.js/5.3.1/fabric.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
  <script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
		
<style>
    

    /* Estilos para cuando se pasa el cursor por encima del botón */
    .carousel-control-prev:hover,
    .carousel-control-next:hover {
      background-color: rgba(255, 255, 255, 0.8); /* Cambiar color de fondo con opacidad */
    }

    /* Estilos para cambiar el color de las flechas del carrusel a negro */
    .carousel-control-prev-icon,
    .carousel-control-next-icon {
      filter: invert(1); /* Invertir el color (blanco a negro) */
    }

    /* Estilos personalizados para las imágenes del carrusel */
    .carousel-image {
      max-width: 500px;
      height: auto;
    }
  </style>
  <link rel="stylesheet" type="text/css" href="/Portafolio/res/css/estilos.css">
</head>
<body>



<div class="container-fluid main-content" style="margin-bottom: 100px; margin-top: 20px;">
<div style="position: relative;">
    <img src="/Portafolio/res/img/arcoiris2.gif" alt="Animación" style="width: 100%;" />
    <div style="position: absolute; top: 22%; left: 50%; transform: translate(-50%, -50%); text-align: center;">
        <h1 style="font-weight: bold;">Quiénes Somos</h1>
        <p>Bienvenidos a Jardin Infantil Ampalús, un lugar donde los niños 
        exploran, aprenden y crecen en un ambiente lleno de alegría y descubrimiento. Fundado en 1985, nos enorgullecemos 
       de ser un jardín infantil comprometido con brindar una educación de calidad en un entorno seguro y 
       enriquecedor.</p>
         <a href="mision" class="btn btn-primary" style="margin-right: 30px; font-weight: bold;">MISIÓN</a>
    <a href="vision" class="btn btn-primary" style="font-weight: bold;">VISIÓN</a>
    </div>
    </div>
     <div class="container-fluid main-content" style="padding-bottom: 50px; margin-bottom: 30px; margin-top: 30px; background-color: #c8e6c9;">
        
        
    <div class="row justify-content-center align-items-center">
    <h1 class="mt-5 text-center"><strong>Nuestros Niveles:</strong></h1>
    
        <div class="col-md-4 text-center">
            <img src="/Portafolio/res/img/salaCuna.jpg" class="img-fluid" alt="Imagen 1">
        </div>
        <div class="col-md-4 text-center">
            <img src="/Portafolio/res/img/medioMenor.jpg"class="img-fluid" alt="Imagen 2">
        </div>
        <div class="col-md-4 text-center">
            <img src="/Portafolio/res/img/medioMayor.jpg" class="img-fluid" alt="Imagen 3">

        </div>
       
    </div>
                </div>
        
  
    
    
    
<h1 class="mt-5 text-center"><strong>Galeria</strong></h1>
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="/Portafolio/res/img/galeria1.jpg" onclick="abrirImagen(this.src)" class="d-block w-50 mx-auto carousel-image" alt="Dibujo 2">
                </div>
                <div class="carousel-item">
                    <img src="/Portafolio/res/img/galeria2.jpg" onclick="abrirImagen(this.src)" class="d-block w-50 mx-auto carousel-image" alt="Dibujo 3">
                </div>
                <!-- Agrega más elementos de carousel-item aquí -->
            </div>
            <!-- Flechas de control del carrusel -->
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
            </a>
        </div>
 
       

        
    <div class="container main-content" style="margin-top: 20px; padding-bottom: 50px;">
            <div class="row justify-content-center align-items-center">
                <div class="col-md-6 text-center">
                    <h1 class="mt-5"><strong>Jugando Aprendo</strong></h1>
                    <h4>Porque jugando también se aprende, ¡a divertirse!</h4>
                    <a href="pintemos" class="btn btn-lg btn-primary">Jugar</a>

        </div>
	</div>
    </div>  
      </div> 
	<%@ include file='footer.jsp'%>
	
	 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>