package servlets;

// Importa la clase IOException para manejar excepciones de entrada/salida
import java.io.IOException;
// Importa la clase ServletException para manejar excepciones en servlets
import jakarta.servlet.ServletException;
// Importa la anotación WebServlet para definir la URL del servlet
import jakarta.servlet.annotation.WebServlet;
// Importa la clase HttpServlet para crear servlets que responden a solicitudes HTTP
import jakarta.servlet.http.HttpServlet;
// Importa la clase HttpServletRequest para manejar solicitudes HTTP
import jakarta.servlet.http.HttpServletRequest;
// Importa la clase HttpServletResponse para manejar respuestas HTTP
import jakarta.servlet.http.HttpServletResponse; 

@WebServlet("/Svinicio_sesion") // Define la URL de acceso para el servlet
public class Svinicio_sesion extends HttpServlet {

    // Constantes para el nombre de usuario y la contraseña válidos
    private static final String USUARIO_VALIDO = "wmar";
    private static final String CLAVE_VALIDA = "123";

    // Maneja las solicitudes GET
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // Redirige a la página principal o de inicio de sesión (puedes cambiar la URL 
        //según tu estructura)
        response.sendRedirect(""); // Redirige a una URL específica; actualmente vacío
    }

    // Maneja las solicitudes POST
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // Obtiene los parámetros del formulario de inicio de sesión
        String usuario = request.getParameter("usuario"); // Obtiene el valor del campo "usuario"
        String clave = request.getParameter("clave"); // Obtiene el valor del campo "clave"

        // Verifica si el nombre de usuario y la contraseña son válidos
        if (USUARIO_VALIDO.equals(usuario) && CLAVE_VALIDA.equals(clave)) {
            // Redirige al usuario a la página de bienvenida si las credenciales son correctas
            response.sendRedirect("bienvenida.jsp"); // Cambia "bienvenida.jsp" a la página 
            //de destino deseada
        } else {
            // Redirige al usuario a una página de error si las credenciales son incorrectas
            response.sendRedirect("error.jsp"); // Cambia "error.jsp" a la página de error deseada
        }
    }
}
