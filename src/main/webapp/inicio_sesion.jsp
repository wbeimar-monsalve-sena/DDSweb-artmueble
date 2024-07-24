<%-- 
    Document   : inicio_sesion
    Created on : 24/07/2024, 4:13:41 p. m.
    Author     : Wbeimar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> <!-- Configuración de la página JSP 
    para contenido HTML y codificación UTF-8 -->
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8"> <!-- Especifica la codificación de caracteres como UTF-8 -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- Hace que la 
        página sea responsive -->
    <title>Iniciar Sesión ArtMueble</title> <!-- Título de la página -->

    <!-- Estilos CSS -->
    <style>
        body {
            margin: 0; /* Quita el margen por defecto */
            padding: 0; /* Quita el padding por defecto */
            font-family: Arial, sans-serif; /* Fuente para el cuerpo */
            height: 100vh; /* Altura de la pantalla completa */
            display: flex; /* Utiliza flexbox para centrar el contenido */
            justify-content: center; /* Centra horizontalmente */
            align-items: center; /* Centra verticalmente */
            position: relative; /* Posicionamiento relativo para el fondo */
        }

        .background-logo {
            background-image: url(imagenes/logo-Art.jpg); /* Imagen de fondo */
            background-size: cover; /* La imagen cubre todo el fondo */
            background-position: center; /* Centra la imagen */
            position: absolute; /* Posicionamiento absoluto */
            top: 0; /* Desde el tope */
            left: 0; /* Desde la izquierda */
            width: 100%; /* Ancho completo */
            height: 100%; /* Altura completa */
            z-index: -1; /* Detrás del contenido */
            opacity: 0.9; /* Transparencia de la imagen */
        }

        .content {
            z-index: 1; /* Delante del fondo */
            width: 100%; /* Ancho completo */
            display: flex; /* Utiliza flexbox */
            flex-direction: column; /* Dirección de la flexbox en columna */
            align-items: center; /* Centra los elementos horizontalmente */
            padding-top: 100px; /* Espacio en la parte superior */
        }

        .container {
            width: 80%; /* Ancho del contenedor */
            display: flex; /* Utiliza flexbox */
            flex-direction: column; /* Dirección de la flexbox en columna */
            justify-content: center; /* Centra los elementos verticalmente */
            align-items: center; /* Centra los elementos horizontalmente */
            padding: 30px; /* Padding alrededor */
            box-sizing: border-box; /* Incluye el padding en el ancho total */
            background-color: rgba(15, 64, 245, 0.8); /* Color de fondo semitransparente */
            margin: 10px 0; /* Margen arriba y abajo */
            border-radius: 10px; /* Bordes redondeados */
        }

        .spacer {
            height: 10px; /* Espacio entre elementos */
        }

        #container1 {
            width: 100%; /* Ancho completo */
            height: 100px; /* Altura del contenedor */
            background-color: rgba(15, 64, 245, 1); /* Color de fondo */
            display: flex; /* Utiliza flexbox */
            align-items: center; /* Centra los elementos verticalmente */
            justify-content: center; /* Centra los elementos horizontalmente */
            position: absolute; /* Posicionamiento absoluto */
            top: 0; /* Desde el tope */
            left: 0; /* Desde la izquierda */
            padding: 0 20px; /* Padding lateral */
            box-sizing: border-box; /* Incluye el padding en el ancho total */
        }

        #container1 h1 {
            color: white; /* Color del texto */
            font-weight: bold; /* Texto en negrita */
            margin: 0 auto; /* Márgenes automáticos para centrar */
            text-align: center; /* Texto centrado */
            flex-grow: 1; /* Permite que el elemento crezca */
        }

        #container1 img {
            height: 80px; /* Altura de la imagen */
            margin-left: auto; /* Margen izquierdo automático */
        }

        #container2 {
            background-color: rgba(15, 64, 245, 1); /* Color de fondo */
            color: white; /* Color del texto */
            padding: 10px; /* Padding alrededor */
            border-radius: 10px; /* Bordes redondeados */
            text-align: center; /* Texto centrado */
            width: 40%; /* Ancho del contenedor */
        }

        #container3 {
            display: flex; /* Utiliza flexbox */
            flex-direction: column; /* Dirección de la flexbox en columna */
            align-items: center; /* Centra los elementos horizontalmente */
            background-color: transparent; /* Fondo transparente */
            width: 50%; /* Ancho del contenedor */
            color: white; /* Color del texto */
            font-weight: bold; /* Texto en negrita */
        }

        #container3 label {
            display: block; /* Mostrar como bloque */
            margin: 5px 0; /* Márgenes arriba y abajo */
            color: white; /* Color del texto */
        }

        #container3 input[type="text"],
        #container3 input[type="password"] {
            width: 150%; /* Ancho del input */
            padding: 10px; /* Padding alrededor */
            margin: 5px auto 15px auto; /* Márgenes */
            border: 1px solid rgba(255, 255, 255, 1); /* Borde */
            border-radius: 5px; /* Bordes redondeados */
            box-sizing: border-box; /* Incluye el padding en el ancho total */
            font-weight: bold; /* Texto en negrita */
        }

        .centered-button {
            width: 150%; /* Ancho del botón */
            color: white; /* Color del texto */
            font-weight: bold; /* Texto en negrita */
            background-color: rgba(0, 199, 255, 1); /* Color de fondo */
            border: none; /* Sin borde */
            padding: 10px 20px; /* Padding alrededor */
            border-radius: 5px; /* Bordes redondeados */
            font-size: 16px; /* Tamaño de fuente */
            cursor: pointer; /* Cursor de puntero */
            transition: transform 0.3s ease; /* Transición suave */
            margin: 15px auto; /* Márgenes */
        }

        .centered-button:hover {
            transform: translateY(-5px); /* Mueve el botón hacia arriba al pasar el ratón */
        }

        #piepagina {
            margin-top: 20px; /* Margen superior */
            text-align: center; /* Texto centrado */
        }

        #piepagina a {
            color: blue; /* Color del enlace */
            font-weight: bold; /* Texto en negrita */
            text-decoration: none; /* Sin subrayado */
        }

        footer {
            margin-top: 10px; /* Margen superior */
        }
    </style>
</head>

<body>
    <!-- Fondo con logo -->
    <div class="background-logo"></div>

    <!-- Contenido principal -->
    <div class="content">
        <!-- Contenedor superior con logo y título -->
        <div id="container1">
            <img src="imagenes/logo-Art.jpg" alt=""/>
            <h1>ArtMueble</h1>
        </div>

        <!-- Espacio entre contenedores -->
        <div class="spacer"></div>

        <!-- Contenedor de ingreso de usuarios -->
        <div id="container2">
            <h2>Ingreso Usuarios</h2>
        </div>

        <!-- Espacio entre contenedores -->
        <div class="spacer"></div>

        <!-- Contenedor del formulario de inicio de sesión -->
        <div id="container3">
            <div class="container">
                <form action="Svinicio_sesion" method="post"> <!-- Formulario que envía datos 
                    a la servlet 'Svinicio_sesion' usando el método POST -->
                    <label for="usuario">Usuario:</label> <!-- Etiqueta para el campo de usuario -->
                    <!-- Campo de entrada para el usuario -->
                    <input type="text" id="usuario" name="usuario" placeholder="Usuario"> 

                    <label for="clave">Clave:</label> <!-- Etiqueta para el campo de clave -->
                    <input type="password" id="clave" name="clave" placeholder="Clave"> <!-- Campo 
                      de entrada para la clave -->
                    <br>
                    <!-- Botón de envío del formulario -->
                    <button class="centered-button btn-a" name="role" value="Clientes">Ingresar</button> 
                </form>
            </div>
        </div>

        <!-- Pie de página con enlace y nota -->
        <div id="piepagina">
            <a href="">¿Has olvidado tu contraseña?</a> <!-- Enlace para recuperación de contraseña -->
            <footer>
                <p><b>ARTMUEBLE V1.0. 2022</b></p> <!-- Nota de versión -->
            </footer>
        </div>
    </div>
</body>

</html>
