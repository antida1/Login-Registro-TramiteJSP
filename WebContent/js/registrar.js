$(document).ready(function() {
	$('#btnRegistrar').on('click', function(){

		var documento = document.getElementById("txtDocumento");
		var nombre = document.getElementById("txtNombre");
		var apellido = document.getElementById("txtApellido");
		var telefono = document.getElementById("txtTelefono");
		var usuario = document.getElementById("txtUsuario");
		var clave1 = document.getElementById("txtContrasena");
		var clave2 = document.getElementById("txtConfirContrasena");	
		var email1 = document.getElementById("txtEmail");
		var email2 = document.getElementById("txtConfirEmail");

		if (documento.value != "" && apellido.value != "" && nombre.value != "" && telefono.value != "" && usuario.value != "" && clave1.value != "" && clave2.value != "" && email1.value != "" && email2.value != "") {
			$("#frmRegistrar").submit();
		}else{
			validarCampos() 
		}
	});
	limpiarCamposIngresar();

	$('#txtDocumento').focus(function() {
		$('#txtDocumento').addClass("campoConFoco");
	});

	$('#txtNombre').blur(function() {
		$('#txtNombre').removeClass("campoConFoco").addClass("campoSinFoco");
	});

	$('#txtApellido').focus(function() {
		$('#txtApellido').addClass("campoConFoco");
	});

	$('#txtTelefono').blur(function() {
		$('#txtTelefono').removeClass("campoConFoco").addClass("campoSinFoco");
	});
	$('#txtUsuario').blur(function() {
		$('#txtUsuario').removeClass("campoConFoco").addClass("campoSinFoco");
	});
	$('#txtContrasena').blur(function() {
		$('#txtContrasena').removeClass("campoConFoco").addClass("campoSinFoco");
	});
	$('#txtConfirContrasena').blur(function() {
		$('#txtConfirContrasena').removeClass("campoConFoco").addClass("campoSinFoco");
	});
	$('#txtEmail').blur(function() {
		$('#txtEmail').removeClass("campoConFoco").addClass("campoSinFoco");
	});
	$('#txtConfirEmail').blur(function() {
		$('#txtConfirEmail').removeClass("campoConFoco").addClass("campoSinFoco");
	});
});

function validarCampos() {
	validarEmail();
	validarContrasena();
	
	var documento = document.getElementById("txtDocumento");
	var nombre = document.getElementById("txtNombre");
	var apellido = document.getElementById("txtApellido");
	var telefono = document.getElementById("txtTelefono");
	var usuario = document.getElementById("txtUsuario");
	var clave1 = document.getElementById("txtContrasena");
	var clave2 = document.getElementById("txtConfirContrasena");	
	var email1 = document.getElementById("txtEmail");
	var email2 = document.getElementById("txtConfirEmail");
	
	if (documento.value == "" && apellido.value == "" && nombre.value == "" && telefono.value == "" && usuario.value == "" && clave1.value == "" && clave2.value == "" && email1.value == "" && email2.value == "") {
		$("#alerts").append('<div class="alert alert-info"><strong>¡Atención! </strong>Debe ingresar todos los campos para su registro</div>')
		$('#txtUsuario').focus();
		setTimeout(function(){
			$("#alerts .alert.alert-info").fadeOut('slow');
			setTimeout(function(){
				$(".alert.alert-info").remove();
			}, 1000)
		}, 2000)
	}else if(documento.value == "" && apellido.value != "" && nombre.value!=""&& telefono.value!="" && usuario.value != "" && clave1.value != "" && clave2.value!="" && email1.value!="" && email2.value!=""){
		$("#alerts").append('<div class="alert alert-info"><strong>¡Atención! </strong>Debe ingresar un número de identificación</div>')
		$('#txtDocumento').focus();
		setTimeout(function(){
			$("#alerts .alert.alert-info").fadeOut('slow');
			setTimeout(function(){
				$(".alert.alert-info").remove();
			}, 1500)
		}, 2000)
	}else if(documento.value != "" && apellido.value == "" && nombre.value == "" && telefono.value == "" && usuario.value == "" && clave1.value == "" && clave2.value == "" && email1.value == "" && email2.value == ""){
		$("#alerts").append('<div class="alert alert-info"><strong>¡Atención! </strong>Debe llenar todos los campos</div>')
		$('#txtApellido').focus();
		setTimeout(function(){
			$("#alerts .alert.alert-info").fadeOut('slow');
			setTimeout(function(){
				$(".alert.alert-info").remove();
			}, 1500)
		}, 2000)
	}else if(documento.value != "" && apellido.value != "" && nombre.value == "" && telefono.value == "" && usuario.value == "" && clave1.value == "" && clave2.value == "" && email1.value == "" && email2.value == ""){
		$("#alerts").append('<div class="alert alert-info"><strong>¡Atención! </strong>Debe llenar todos los campos</div>')
		$('#txtNombre').focus();
		setTimeout(function(){
			$("#alerts .alert.alert-info").fadeOut('slow');
			setTimeout(function(){
				$(".alert.alert-info").remove();
			}, 1500)
		}, 2000)
	}else if(documento.value != "" && apellido.value != "" && nombre.value != "" && telefono.value == "" && usuario.value == "" && clave1.value == "" && clave2.value == "" && email1.value == "" && email2.value == ""){
		$("#alerts").append('<div class="alert alert-info"><strong>¡Atención! </strong>Debe llenar todos los campos</div>')
		$('#txtTelefono').focus();
		setTimeout(function(){
			$("#alerts .alert.alert-info").fadeOut('slow');
			setTimeout(function(){
				$(".alert.alert-info").remove();
			}, 1500)
		}, 2000)
	}else if(documento.value != "" && apellido.value != "" && nombre.value != "" && telefono.value != "" && usuario.value == "" && clave1.value == "" && clave2.value == "" && email1.value == "" && email2.value == ""){
		$("#alerts").append('<div class="alert alert-info"><strong>¡Atención! </strong>Debe llenar todos los campos</div>')
		$('#txtUsuario').focus();
		setTimeout(function(){
			$("#alerts .alert.alert-info").fadeOut('slow');
			setTimeout(function(){
				$(".alert.alert-info").remove();
			}, 1500)
		}, 2000)
	}else if(documento.value != "" && apellido.value != "" && nombre.value != "" && telefono.value != "" && usuario.value != "" && clave1.value == "" && clave2.value == "" && email1.value == "" && email2.value == ""){
		$("#alerts").append('<div class="alert alert-info"><strong>¡Atención! </strong>Debe llenar todos los campos</div>')
		$('#txtContrasena').focus();
		setTimeout(function(){
			$("#alerts .alert.alert-info").fadeOut('slow');
			setTimeout(function(){
				$(".alert.alert-info").remove();
			}, 1500)
		}, 2000)
	}else if(documento.value != "" && apellido.value != "" && nombre.value != "" && telefono.value != "" && usuario.value != "" && clave1.value != "" && clave2.value == "" && email1.value == "" && email2.value == ""){
		$("#alerts").append('<div class="alert alert-info"><strong>¡Atención! </strong>Debe llenar todos los campos</div>')
		$('#txtConfirmarContrasena').focus();
		setTimeout(function(){
			$("#alerts .alert.alert-info").fadeOut('slow');
			setTimeout(function(){
				$(".alert.alert-info").remove();
			}, 1500)
		}, 2000)
	}else if(documento.value != "" && apellido.value != "" && nombre.value != "" && telefono.value != "" && usuario.value != "" && clave1.value != "" && clave2.value != "" && email1.value == "" && email2.value == ""){
		$("#alerts").append('<div class="alert alert-info"><strong>¡Atención! </strong>Debe llenar todos los campos</div>')
		$('#txtEmail').focus();
		setTimeout(function(){
			$("#alerts .alert.alert-info").fadeOut('slow');
			setTimeout(function(){
				$(".alert.alert-info").remove();
			}, 1500)
		}, 2000)
	}else if(documento.value != "" && apellido.value != "" && nombre.value != "" && telefono.value != "" && usuario.value != "" && clave1.value != "" && clave2.value != "" && email1.value != "" && email2.value == ""){
		$("#alerts").append('<div class="alert alert-info"><strong>¡Atención! </strong>Debe llenar todos los campos</div>')
		$('#txtConfirmarEmail').focus();
		setTimeout(function(){
			$("#alerts .alert.alert-info").fadeOut('slow');
			setTimeout(function(){
				$(".alert.alert-info").remove();
			}, 1500)
		}, 2000)
	}else if(documento.value!="" && apellido.value =="" && nombre.value!=""&& telefono.value!="" && usuario.value != "" && clave1.value != "" && clave2.value!="" && email1.value!="" && email2.value!=""){
		$("#alerts").append('<div class="alert alert-info"><strong>¡Atención! </strong>Debe ingresar su apellido</div>')		
		$('#txtApellido').focus();
		setTimeout(function(){
			$("#alerts .alert.alert-info").fadeOut('slow');
			setTimeout(function(){
				$(".alert.alert-info").remove();
			}, 1500)
		}, 2000)
	}else if(documento.value!="" && apellido.value!="" && nombre.value ==""&& telefono.value!="" && usuario.value != "" && clave1.value != "" && clave2.value!="" && email1.value!="" && email2.value!=""){
		$("#alerts").append('<div class="alert alert-info"><strong>¡Atención! </strong>Debe ingresar su nombre</div>')		
		$('#txtNombre').focus();
		setTimeout(function(){
			$("#alerts .alert.alert-info").fadeOut('slow');
			setTimeout(function(){
				$(".alert.alert-info").remove();
			}, 1500)
		}, 2000)
	}else if(documento.value!="" && apellido.value!="" && nombre.value!=""&& telefono.value=="" && usuario.value != "" && clave1.value != "" && clave2.value!="" && email1.value!="" && email2.value!=""){
		$("#alerts").append('<div class="alert alert-info"><strong>¡Atención! </strong>Debe ingresar su teléfono</div>')		
		$('#txtTelefono').focus();
		setTimeout(function(){
			$("#alerts .alert.alert-info").fadeOut('slow');
			setTimeout(function(){
				$(".alert.alert-info").remove();
			}, 1500)
		}, 2000)
	}else if(documento.value!="" && apellido.value!="" && nombre.value!=""&& telefono.value!="" && usuario.value == "" && clave1.value != "" && clave2.value!="" && email1.value!="" && email2.value!=""){
		$("#alerts").append('<div class="alert alert-info"><strong>¡Atención! </strong>Debe ingresar su usuario</div>')		
		$('#txtUsuario').focus();
		setTimeout(function(){
			$("#alerts .alert.alert-info").fadeOut('slow');
			setTimeout(function(){
				$(".alert.alert-info").remove();
			}, 1500)
		}, 2000)
	}else if(documento.value!="" && apellido.value!="" && nombre.value!=""&& telefono.value!="" && usuario.value != "" && clave1.value == "" && clave2.value!="" && email1.value!="" && email2.value!=""){
		$("#alerts").append('<div class="alert alert-info"><strong>¡Atención! </strong>Debe ingresar su contraseña</div>')		
		$('#txtContrasena').focus();
		setTimeout(function(){
			$("#alerts .alert.alert-info").fadeOut('slow');
			setTimeout(function(){
				$(".alert.alert-info").remove();
			}, 1500)
		}, 2000)
	}else if(documento.value!="" && apellido.value!="" && nombre.value!=""&& telefono.value!="" && usuario.value != "" && clave1.value != "" && clave2.value=="" && email1.value!="" && email2.value!=""){
		$("#alerts").append('<div class="alert alert-info"><strong>¡Atención! </strong>Debe confirmar su contraseña</div>')		
		$('#txtConfirmarContrasena').focus();
		setTimeout(function(){
			$("#alerts .alert.alert-info").fadeOut('slow');
			setTimeout(function(){
				$(".alert.alert-info").remove();
			}, 1500)
		}, 2000)
	}else if(documento.value!="" && apellido.value!="" && nombre.value!=""&& telefono.value!="" && usuario.value != "" && clave1.value != "" && clave2.value!="" && email1.value=="" && email2.value!=""){
		$("#alerts").append('<div class="alert alert-info"><strong>¡Atención! </strong>Debe ingresar su email</div>')		
		$('#txtEmail').focus();
		setTimeout(function(){
			$("#alerts .alert.alert-info").fadeOut('slow');
			setTimeout(function(){
				$(".alert.alert-info").remove();
			}, 1500)
		}, 2000)
	}else if(documento.value!="" && apellido.value!="" && nombre.value!=""&& telefono.value!="" && usuario.value != "" && clave1.value != "" && clave2.value!="" && email1.value!="" && email2.value==""){
		$("#alerts").append('<div class="alert alert-info"><strong>¡Atención! </strong>Debe confirmar email</div>')		
		$('#txtConfirmarEmail').focus();
		setTimeout(function(){
			$("#alerts .alert.alert-info").fadeOut('slow');
			setTimeout(function(){
				$(".alert.alert-info").remove();
			}, 1500)
		}, 2000)
	}
}

function validarEmail() {
	var txtEmail = document.getElementById("txtEmail").value, txtConfirEmail = document
			.getElementById("txtConfirEmail").value;
	if (txtEmail != txtConfirEmail) {
		$("#alertas")
				.append(
						'<div class="alert alert-danger"><strong>¡Atención! </strong>Los campos del email son diferentes</div>')
		setTimeout(function() {
			$("#alertas .alert.alert-danger").fadeOut('slow');
			setTimeout(function() {
				$(".alert.alert-danger").remove();
			}, 1000)
		}, 2000);
	}
}

function validarContrasena() {

	var clave1 = document.getElementById("txtContrasena").value, clave2 = document
			.getElementById("txtConfirContrasena").value;
	if (clave1 != clave2) {
		$("#alertas")
				.append(
						'<div class="alert alert-danger"><strong>¡Atención! </strong>Los campos de contraseña son diferentes</div>')
		setTimeout(function() {
			$("#alertas .alert.alert-danger").fadeOut('slow');
			setTimeout(function() {
				$(".alert.alert-danger").remove();
			}, 1000)
		}, 2000);
	}
}

function limpiarCamposIngresar() {
	$('.textBox').val("");
}

document.getElementById("txtDocumento").addEventListener('change', validarCampos)
document.getElementById("txtNombre").addEventListener('change', validarCampos)
document.getElementById("txtApellido").addEventListener('change', validarCampos)
document.getElementById("txtTelefono").addEventListener('change', validarCampos)
document.getElementById("txtUsuario").addEventListener('change', validarCampos)
document.getElementById("txtContrasena").addEventListener('change', validarCampos)
document.getElementById("txtEmail").addEventListener('change', validarCampos)
document.getElementById("txtContrasena").addEventListener('focusout', validarContrasena)
document.getElementById("txtConfirContrasena").addEventListener('focusout', validarContrasena)
document.getElementById("txtEmail").addEventListener('focusout', validarEmail)
document.getElementById("txtConfirEmail").addEventListener('focusout', validarEmail)



