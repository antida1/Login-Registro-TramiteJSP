package Clases;

import java.util.Date;

public class Usuario {
	// Atributos de la entidad Factura
	private int idUsuario;
	private String numeroIdentificacion;
	private String apellidos;
	private String nombres;
	private String telefono;
	private String usuario;
	private String contrasena;
	private String correoElectronico;

	// Constructor vacío
	public Usuario() {
		super();
	}

	public Usuario(int idUsuario, String numeroIdentificacion,
			String apellidos, String nombres, String telefono, String usuario,
			String contrasena, String correoElectronico) {
		super();
		this.idUsuario = idUsuario;
		this.numeroIdentificacion = numeroIdentificacion;
		this.apellidos = apellidos;
		this.nombres = nombres;
		this.telefono = telefono;
		this.usuario = usuario;
		this.contrasena = contrasena;
		this.correoElectronico = correoElectronico;
	}

	public int getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getNumeroIdentificacion() {
		return numeroIdentificacion;
	}

	public void setNumeroIdentificacion(String numeroIdentificacion) {
		this.numeroIdentificacion = numeroIdentificacion;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getNombres() {
		return nombres;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getContrasena() {
		return contrasena;
	}

	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}

	public String getCorreoElectronico() {
		return correoElectronico;
	}

	public void setCorreoElectronico(String correoElectronico) {
		this.correoElectronico = correoElectronico;
	}

	@Override
	public String toString() {
		return "Usuario [idUsuario=" + idUsuario + ", numeroIdentificacion="
				+ numeroIdentificacion + ", apellidos=" + apellidos
				+ ", nombres=" + nombres + ", telefono=" + telefono
				+ ", usuario=" + usuario + ", contrasena=" + contrasena
				+ ", correoElectronico=" + correoElectronico + "]";
	}

}