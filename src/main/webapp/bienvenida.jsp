<%-- 
    Document   : bienvenida
    Created on : 24/07/2024, 4:17:56 p. m.
    Author     : Wbeimar
--%>
<!-- Directiva JSP para configurar el contenido y la codificación de la página -->
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang="en"> <!-- Declaración del tipo de documento y el idioma de la página -->

<head>
    <meta charset="UTF-8"> <!-- Meta etiqueta para definir la codificación de caracteres -->
    <!-- Meta etiqueta para hacer la página responsive -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Bienvenida ArtMueble</title> <!-- Título de la página -->
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
            position: relative; /* Posición relativa para capas */
        }

        /* Estilos para el fondo con el logo */
        .background-logo {
            background-image: url(imagenes/logo-ArtMueble-1.jpeg); /* Imagen de fondo */
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

        /* Estilos para el contenido principal */
        .content {
            z-index: 1; /* Colocar delante del fondo */
            width: 100%; /* Ancho completo */
            display: flex; /* Uso de flexbox */
            flex-direction: column; /* Dirección de los elementos en columna */
            align-items: center; /* Alineación centrada */
        }

        /* Estilos para el primer contenedor (bienvenida) */
        .container1 {
            background-color: rgba(15, 64, 245, 0.8); /* Color de fondo azul con opacidad */
            width: 100%; /* Ancho completo */
            height: 150px; /* Altura de 150px */
            text-align: center; /* Texto centrado */
            margin-top: 20px; /* Margen superior de 20px */
            display: flex; /* Uso de flexbox */
            justify-content: center; /* Centrando horizontalmente */
            align-items: center; /* Centrando verticalmente */
            flex-direction: column; /* Dirección de los elementos en columna */
        }

        /* Estilos para el párrafo dentro del primer contenedor */
        .container1 p {
            padding: 20px; /* Relleno de 20px */
            color: rgba(255, 255, 255, 1); /* Color de texto blanco */
        }

        /* Estilos para el contenedor interno del primer contenedor */
        .container1 .inner-container {
            text-align: center; /* Texto centrado */
            color: rgba(255, 255, 255, 1); /* Color de texto blanco */
        }

        /* Estilos para la lista de navegación dentro del primer contenedor */
        .container1 nav ul {
            list-style-type: none; /* Sin estilo de lista */
        }

        /* Estilos para los enlaces dentro de la lista de navegación */
        .container1 nav ul li a {
            color: rgba(255, 255, 255, 1); /* Color de enlace blanco */
        }

        /* Estilos para el segundo contenedor (descripción de la herramienta) */
        .container2 {
            background-color: rgba(0, 199, 255, 0.8); /* Color de fondo azul claro con opacidad */
            color: #fff; /* Color de texto blanco */
            padding: 10px 20px; /* Relleno de 10px arriba/abajo y 20px izquierda/derecha */
            border: none; /* Sin borde */
            cursor: pointer; /* Cursor de puntero */
            position: relative; /* Posición relativa */
            height: 125px; /* Altura de 125px */
            display: flex; /* Uso de flexbox */
            justify-content: center; /* Centrando horizontalmente */
            align-items: center; /* Centrando verticalmente */
            width: 100%; /* Ancho completo */
            font-size: 18px; /* Tamaño de fuente de 18px */
        }

        /* Estilos para el tercer contenedor (botón de exploración) */
        .container3 {
            background-color: rgba(15, 64, 245, 0.8); /* Color de fondo azul con opacidad */
            color: rgba(0, 199, 255, 1); /* Color de texto azul claro */
            padding: 10px 20px; /* Relleno de 10px arriba/abajo y 20px izquierda/derecha */
            cursor: pointer; /* Cursor de puntero */
            position: relative; /* Posición relativa */
            height: 125px; /* Altura de 125px */
            display: flex; /* Uso de flexbox */
            justify-content: center; /* Centrando horizontalmente */
            align-items: center; /* Centrando verticalmente */
            width: 100%; /* Ancho completo */
        }

        /* Estilos para el botón dentro del tercer contenedor */
        .container3 button {
            background-color: rgba(0, 199, 255, 1); /* Color de fondo azul claro */
            color: rgba(255, 255, 255, 1); /* Color de texto blanco */
            border: none; /* Sin borde */
            padding: 10px 20px; /* Relleno de 10px arriba/abajo y 20px izquierda/derecha */
            cursor: pointer; /* Cursor de puntero */
            border-radius: 5px; /* Bordes redondeados */
            font-size: 16px; /* Tamaño de fuente de 16px */
            font-weight: bold; /* Texto en negrita */
            width: 200px; /* Ancho de 200px */
            height: 50px; /* Altura de 50px */
        }

        /* Estilos para el mensaje de autenticación */
        .auth-message {
            font-size: 20px; /* Tamaño de fuente de 20px */
            color: rgba(255, 255, 255, 1); /* Color de texto blanco */
            margin-bottom: 10px; /* Margen inferior de 10px */
        }
    </style> <!-- Estilos CSS para la página -->
</head>

<body>
    <div class="background-logo"></div> <!-- Fondo con logo de la empresa -->

    <div class="content"> <!-- Contenedor principal de contenido -->
        <div class="container1"> <!-- Contenedor para el mensaje de bienvenida -->
            <div class="inner-container"> <!-- Contenedor interno centrado -->
                <!-- Mensaje de autenticación correcta -->
                <p class="auth-message">Su autenticación ha sido correcta.</p> 
                <h1>Bienvenidos a ArtMueble</h1> <!-- Título de bienvenida -->
            </div>
        </div>

        <div class="container2"> <!-- Contenedor para la descripción de la herramienta -->
            <!-- Descripción de la herramienta -->
            <p>Nuestra herramienta integral amplifica la gestión de fabricación y restauración de muebles. Optimiza procesos, aumenta la productividad y ofrece un servicio de calidad. ArtMueble se adapta a tus necesidades. Explora nuestras funciones y lleva
                tu negocio al siguiente nivel. ¡Gracias por elegirnos!</p> 
        </div>

        <div class="container3"> <!-- Contenedor para el botón de exploración -->
            <form action="inicio.jsp" method="post"> <!-- Formulario que redirige a 'inicio.jsp' -->
                <button type="submit">Explorar</button> <!-- Botón de envío para explorar -->
            </form>
        </div>
    </div>
</body>

</html>
