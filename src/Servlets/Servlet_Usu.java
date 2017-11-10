package Servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Clases.Usuario;
import Clases.UsuarioDB;

/**
 * Servlet implementation class Servlet_Usu
 */
// @WebServlet(name = "Servlet_Usu", urlPatterns = { "/Servlets/Servlet_Usu" })
public class Servlet_Usu extends HttpServlet {
	protected void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setContentType("text/html");
		try {
			/* TODO output your page here. You may use following sample code. */
			String accion = request.getParameter("accion");

			if (accion.equals("login")) {
				IniciarSesion(request, response);
			}
			if (accion.equals("registrar")) {
				RegistrarUsuario(request, response);
			}
			// if (accion.equals("modificarClave")) {
			// ModificarClaveUsuario(request, response);
			// }
			// if (accion.equals("modificarEmail")) {
			// ModificarEmailUsuario(request, response);
			// }
			// if (accion.equals("eliminar")) {
			// DarBajaUsuario(request, response);
			// }
			// if (accion.equals("recuperar")) {
			// DarAltaUsuario(request, response);
			// }
			// if (accion.equals("logout")) {
			// Logout(request, response);
			// }
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

//	private void Login(HttpServletRequest request, HttpServletResponse response)
//			throws Exception {
//		PrintWriter out = response.getWriter();
//
//		String usuario = request.getParameter("txtUsuario");
//		String contrasena = request.getParameter("txtClave");		
//		try {
//			if (UsuarioDB.consultarUsuario(usuario, contrasena)) {
//				HttpSession sesion = request.getSession(true);
//
//				// Guardo en la sesion su nombre de usuario y contraseña
//				sesion.setAttribute("usuario", usuario);
//				sesion.setAttribute("contrasena", contrasena);
//
//				System.out.println("Sesion : " + usuario);
//
//				response.sendRedirect("../seleccionarTramite.jsp");
//
//			} else {
//				// crea el dispatcher al que reenviarle la solicitud
//				// out.println("Identificacion incorrecta");
//				RequestDispatcher dispatcher = request
//						.getRequestDispatcher("../login.jsp");
//
//				// reenvia la petición
//				dispatcher.forward(request, response);
//			}
//		} finally {
//			out.close();
//		}
//	}
	
	
	@SuppressWarnings("unused")
	private void IniciarSesion(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String usuario = request.getParameter("txtUsuario");
		String contrasena = request.getParameter("txtClave");
		ArrayList<Usuario> usu = UsuarioDB.consultarUsuarios(usuario, contrasena);
		Usuario usua = null;
		if (usu != null && usu.size() > 0) {
			HttpSession sesion = request.getSession(true);
			// Guardo en la sesion su nombre de usuario y contraseña
			sesion.setAttribute("usuario", usuario);
			sesion.setAttribute("contrasena", contrasena);

			System.out.println("Sesion : " + usuario);
			for (int i = 0; i < usu.size(); i++) {
				usua = usu.get(i);
			}
			request.setAttribute("usua", usua);
			request.getRequestDispatcher("../seleccionarTramite.jsp").forward(request, response);
		} else {
			response.sendRedirect("../respuesta.jsp?mens='Error: Usuario o Contraseña invalido'");
		}
	}
	private void RegistrarUsuario(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String numeroIdentificacion = request.getParameter("txtDocumento");
		String apellidos = request.getParameter("txtApellido");
		String nombres = request.getParameter("txtNombre");
		String telefono = request.getParameter("txtTelefono");
		String usuario = request.getParameter("txtUsuario");
		String contrasena = request.getParameter("txtContrasena");
		String correoElectronico = request.getParameter("txtEmail");

		Usuario usu = new Usuario();
		usu.setNumeroIdentificacion(numeroIdentificacion);
		usu.setApellidos(apellidos);
		usu.setNombres(nombres);
		usu.setTelefono(telefono);
		usu.setUsuario(usuario);
		usu.setContrasena(contrasena);
		usu.setCorreoElectronico(correoElectronico);

		boolean resp = UsuarioDB.registrarUsuario(usu);
		if (resp) {
			response.sendRedirect("../respuesta.jsp?mens='Se ha registrado correctamente'");
		} else {
			response.sendRedirect("../respuesta.jsp?mens='Error: Estamos solucionando un problema'");
		}
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			processRequest(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			processRequest(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>
}
