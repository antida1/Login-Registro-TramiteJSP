package Conexion;

import java.sql.*;

public class Conexion {
	Connection conectar;

	public Conexion() {
		String aux = "";
		String bd = "ECUADOR";
		String driver = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@172.16.0.26:1521:bellodev";
		String usuario = "FISCA";
		String clave = "FISCA";
		try {
			Class.forName(driver);
			this.conectar = DriverManager.getConnection(url, usuario, clave);
		} catch (SQLException arg29) {
			aux = "<br><br>error al comunicarse la base de datos\n\n<br><br>"
					+ arg29.getMessage() + "<br>" + "<br>";
			System.out.println(aux);
		} catch (ClassNotFoundException arg30) {
			aux = aux + "error al cargar el driver\n\n" + "<br>" + "<br>"
					+ arg30.getMessage() + "<br>" + "<br>";
			System.out.println(aux);
		}
	}

	public Connection getConexion() {
		return conectar;
	}

	public void setConexion(Connection conectar) {
		this.conectar = conectar;
	}

	public void cerrarConexion() {
		try {
			this.conectar.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}
