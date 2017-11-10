package Clases;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Clases.Usuario;
import Conexion.Conexion;

public class UsuarioDB {
	// Consulta los usuarios en la base de datos
	public static boolean consultarUsuario(String usuario, String contrasena) {
		boolean resp = false;
		Conexion c = new Conexion();
		Connection con = c.getConexion();
		try {
			
			Statement st = con.createStatement();
			ResultSet rs = st
					.executeQuery("SELECT * FROM ECUADOR.USUARIO WHERE USUARIO ='"
							+ usuario
							+ "' AND CONTRASENA = '"
							+ contrasena
							+ "'");

			while (rs.next()) {
				resp= true;
			}
			
		} catch (Exception se) {
			System.out.println(se);
		}
		return resp;
	}
	//retornandolista
	public static ArrayList<Usuario> consultarUsuarios(String usuario, String contrasena) {
		ArrayList<Usuario> lista = new ArrayList<Usuario>();
		try{
			Conexion c= new Conexion();
			Connection con = c.getConexion();
			Statement st = con.createStatement();
			if(usuario!="" && contrasena != ""){
				ResultSet rs = st.executeQuery("SELECT * FROM ECUADOR.USUARIO WHERE USUARIO ='"
							+ usuario
							+ "' AND CONTRASENA = '"
							+ contrasena
							+ "'");
				while(rs.next()){
					Usuario usua = new Usuario(rs.getInt("ID_USUARIO"),rs.getString("NUMERO_IDENTIFICACION"),
								rs.getString("APELLIDOS"),rs.getString("NOMBRES"),rs.getString("TELEFONO"),
								rs.getString("USUARIO"),rs.getString("CONTRASENA"),rs.getString("CORREO_ELECTRONICO"));
					lista.add(usua);
				}
				rs.close();
				st.close();
				c.cerrarConexion();
			}
		}catch(SQLException se){
			se.printStackTrace();
		}
		return lista;
	}
		
				
//registra los usuarios en la bd
	public static boolean registrarUsuario(Usuario usu) {
		boolean resp = false;
		Conexion con = new Conexion();
		Connection cn = con.getConexion();
		try {
			CallableStatement cs = cn
					.prepareCall("INSERT INTO ECUADOR.USUARIO(NUMERO_IDENTIFICACION,APELLIDOS, NOMBRES, TELEFONO, USUARIO, CONTRASENA,CORREO_ELECTRONICO) VALUES('"
							+ usu.getNumeroIdentificacion()
							+ "','"
							+ usu.getApellidos()
							+ "','"
							+ usu.getNombres()
							+ "','"
							+ usu.getTelefono()
							+ "','"
							+ usu.getUsuario()
							+ "','"
							+ usu.getContrasena()
							+ "','" 
							+ usu.getCorreoElectronico() 
							+ "')");
			int i = cs.executeUpdate();
			if (i == 1)
				resp = true;
			else
				resp = false;
		} catch (Exception e) {
			System.out.println(e);
		}
		return resp;
	}

}