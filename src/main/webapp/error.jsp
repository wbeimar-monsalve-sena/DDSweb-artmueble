<%-- 
    Document   : error
    Created on : 24/07/2024, 4:19:19 p. m.
    Author     : Wbeimar
--%>
<!-- Directiva JSP para configurar el contenido y la codificación de la página -->
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html> <!-- Declaración del tipo de documento -->

<head>
    <meta charset="UTF-8"> <!-- Meta etiqueta para definir la codificación de caracteres -->
    <!-- Meta etiqueta para hacer la página responsive -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Error de Inicio de Sesión</title> <!-- Título de la página -->
    <style>
        /* Estilos para el cuerpo de la página */
        body {
            margin: 0; /* Sin márgenes */
            padding: 0; /* Sin relleno */
            font-family: Arial, sans-serif; /* Fuente Arial, sans-serif como respaldo */
            height: 100vh; /* Altura de la ventana gráfica */
            display: flex; /* Uso de flexbox para centrar contenido */
            justify-content: center; /* Centrando horizontalmente */
            align-items: center; /* Centrando verticalmente */
            position: relative; /* Posición relativa para permitir capas */
        }

        /* Estilos para el fondo con el logo */
        .background-logo {
            background-image: url(imagenes/logo-Art.jpg); /* Imagen de fondo */
            background-size: cover; /* Imagen cubre todo el fondo */
            background-position: center; /* Centrado de la imagen de fondo */
            position: absolute; /* Posición absoluta para llenar la pantalla */
            top: 0; /* Desde el borde superior */
            left: 0; /* Desde el borde izquierdo */
            width: 100%; /* Ancho completo */
            height: 100%; /* Altura completa */
            z-index: -1; /* Colocar detrás del contenido */
            opacity: 0.9; /* Opacidad del 90% */
        }

        /* Estilos para el contenedor principal de contenido */
        .content {
            z-index: 1; /* Colocar delante del fondo */
            width: 100%; /* Ancho completo */
            display: flex; /* Uso de flexbox */
            flex-direction: column; /* Dirección de los elementos en columna */
            align-items: center; /* Alineación centrada */
            padding-top: 100px; /* Relleno superior de 100px */
        }

        /* Estilos para el contenedor general */
        .container {
            width: 80%; /* Ancho del 80% del contenedor principal */
            display: flex; /* Uso de flexbox */
            flex-direction: column; /* Dirección de los elementos en columna */
            justify-content: center; /* Centrando verticalmente */
            align-items: center; /* Alineación centrada */
            padding: 30px; /* Relleno de 30px */
            box-sizing: border-box; /* Incluye el relleno y el borde en el tamaño total */
            background-color: rgba(15, 64, 245, 0.8); /* Color de fondo azul con opacidad */
            margin: 10px 0; /* Margen vertical de 10px */
            border-radius: 10px; /* Bordes redondeados */
        }

        /* Espaciador de 10px de altura */
        .spacer {
            height: 10px; /* Altura de 10px */
        }

        /* Estilos para el primer contenedor (barra superior) */
        #container1 {
            width: 100%; /* Ancho completo */
            height: 100px; /* Altura de 100px */
            background-color: rgba(15, 64, 245, 1); /* Color de fondo azul */
            display: flex; /* Uso de flexbox */
            align-items: center; /* Centrando verticalmente */
            justify-content: center; /* Centrando horizontalmente */
            position: absolute; /* Posición absoluta */
            top: 0; /* Desde el borde superior */
            left: 0; /* Desde el borde izquierdo */
            padding: 0 20px; /* Relleno de 0 arriba/abajo y 20px izquierda/derecha */
            box-sizing: border-box; /* Incluye el relleno y el borde en el tamaño total */
        }

        /* Estilos para el título dentro del primer contenedor */
        #container1 h1 {
            color: white; /* Color de texto blanco */
            font-weight: bold; /* Texto en negrita */
            margin: 0 auto; /* Sin margen superior/inferior y margen automático horizontal */
            text-align: center; /* Texto centrado */
            flex-grow: 1; /* Crece para llenar el espacio disponible */
        }

        /* Estilos para la imagen dentro del primer contenedor */
        #container1 img {
            height: 80px; /* Altura de 80px */
            margin-left: auto; /* Margen automático izquierdo para alinear a la derecha */
        }

        /* Estilos para el segundo contenedor (mensaje de error) */
        #container2 {
            background-color: rgba(15, 64, 245, 1); /* Color de fondo azul */
            color: white; /* Color de texto blanco */
            padding: 10px; /* Relleno de 10px */
            border-radius: 10px; /* Bordes redondeados */
            text-align: center; /* Texto centrado */
            width: 40%; /* Ancho del 40% del contenedor principal */
        }

        /* Estilos para el tercer contenedor (formulario de reintento) */
        #container3 {
            display: flex; /* Uso de flexbox */
            flex-direction: column; /* Dirección de los elementos en columna */
            align-items: center; /* Alineación centrada */
            background-color: transparent; /* Fondo transparente */
            width: 50%; /* Ancho del 50% del contenedor principal */
            color: white; /* Color de texto blanco */
            font-weight: bold; /* Texto en negrita */
        }

        /* Estilos para las etiquetas dentro del tercer contenedor */
        #container3 label {
            display: block; /* Mostrar como bloque */
            margin: 5px 0; /* Margen vertical de 5px */
            color: white; /* Color de texto blanco */
        }

        /* Estilos para los campos de entrada dentro del tercer contenedor */
        #container3 input[type="text"],
        #container3 input[type="password"] {
            width: 150%; /* Ancho del 150% del contenedor padre */
            padding: 10px; /* Relleno de 10px */
            /* Margen vertical de 5px arriba y 15px abajo, automático horizontal */
            margin: 5px auto 15px auto; 
            border: 1px solid rgba(255, 255, 255, 1); /* Borde blanco sólido */
            border-radius: 5px; /* Bordes redondeados */
            box-sizing: border-box; /* Incluye el relleno y el borde en el tamaño total */
            font-weight: bold; /* Texto en negrita */
        }

        /* Estilos para el botón centrado */
        .centered-button {
            width: 100%; /* Ancho completo del contenedor padre */
            color: white; /* Color de texto blanco */
            font-weight: bold; /* Texto en negrita */
            background-color: rgba(0, 199, 255, 1); /* Color de fondo azul claro */
            border: none; /* Sin borde */
            padding: 10px 20px; /* Relleno de 10px arriba/abajo y 20px izquierda/derecha */
            border-radius: 5px; /* Bordes redondeados */
            font-size: 16px; /* Tamaño de fuente de 16px */
            cursor: pointer; /* Cursor de puntero */
            transition: transform 0.3s ease; /* Transición suave para el efecto de hover */
            margin: 15px auto; /* Margen vertical de 15px, automático horizontal */
            text-align: center; /* Texto centrado */
            text-decoration: none; /* Sin decoración de texto */
            box-sizing: border-box; /* Incluye el relleno y el borde en el tamaño total */
        }

        /* Estilos para el efecto de hover del botón centrado */
        .centered-button:hover {
            transform: translateY(-5px); /* Mueve el botón hacia arriba al pasar el cursor */
        }
    </style>
</head>

<body>
    <div class="background-logo"></div> <!-- Fondo con imagen de la empresa -->
    <div class="content"> <!-- Contenedor principal de contenido -->
        <div id="container1"> <!-- Contenedor para la barra superior con logo y título -->
            <img src="imagenes/logo-Art.jpg" alt="" /> <!-- Imagen del logo -->
            <h1>ArtMueble</h1> <!-- Título -->
        </div>

        <div class="spacer"></div> <!-- Espaciador entre contenedores -->

        <div id="container2"> <!-- Contenedor para el mensaje de error -->
            <h2>Error de Inicio de Sesión</h2> <!-- Título de error -->
        </div>

        <div class="spacer"></div> <!-- Espaciador entre contenedores -->

        <div id="container3"> <!-- Contenedor para el formulario de reintento -->
            <div class="container"> <!-- Contenedor para el mensaje de error y botón -->
                <!-- Mensaje de error -->
                <p>Usuario o clave incorrectos. Por favor, intente de nuevo.</p>
                <!-- Botón para volver a intentar -->
                <a href="inicio_sesion.jsp" class="centered-button">Volver a Intentar</a> 
            </div>
        </div>
    </div>
</body>

</html>

