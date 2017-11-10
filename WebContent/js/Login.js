$(document).ready(function() {
	limpiarCamposIngresar();

	$('#txtUsuario').focus(function() {
		$('#txtUsuario').addClass("campoConFoco");
	});

	$('#txtUsuario').blur(function() {
		$('#txtUsuario').removeClass("campoConFoco").addClass("campoSinFoco");
	});

	$('#txtClave').focus(function() {
		$('#txtClave').addClass("campoConFoco");
	});

	$('#txtClave').blur(function() {
		$('#txtClave').removeClass("campoConFoco").addClass("campoSinFoco");
	});
});

function validarCampos() {
	var usuario = document.getElementById("txtUsuario");
	var contrasena = document.getElementById("txtClave");

	if (usuario.value == "" && contrasena.value == "") {
		$("#alerts").append('<div class="alert alert-info"><strong>¡Atención! </strong>Debe ingresar su usuario y contraseña</div>')
		$('#txtUsuario').focus();
		setTimeout(function(){
			$("#alerts .alert.alert-info").fadeOut('slow');
			setTimeout(function(){
				$(".alert.alert-info").remove();
			}, 1000)
		}, 2000)
	}else if(usuario.value =="" && contrasena != ""){
		$("#alerts").append('<div class="alert alert-info"><strong>¡Atención! </strong>Debe ingresar un usuario regitrado</div>')
		$('#txtUsuario').focus();
		setTimeout(function(){
			$("#alerts .alert.alert-info").fadeOut('slow');
			setTimeout(function(){
				$(".alert.alert-info").remove();
			}, 1500)
		}, 2000)
	}else if(usuario.value !="" && contrasena.value==""){
		$("#alerts").append('<div class="alert alert-info"><strong>¡Atención! </strong>Debe ingresar su contraseña</div>')		
		$('#txtContrasena').focus();
		setTimeout(function(){
			$("#alerts .alert.alert-info").fadeOut('slow');
			setTimeout(function(){
				$(".alert.alert-info").remove();
			}, 1500)
		}, 2000)
	}
}

function limpiarCamposIngresar() {
	$('.textBox').val("");
}

document.getElementById("txtUsuario").addEventListener('change', validarCampos)
document.getElementById("txtClave").addEventListener('change', validarCampos)

$('#btnIngresar').on('click', function(){

	var usuario = document.getElementById("txtUsuario");
	var contrasena = document.getElementById("txtClave");

	if (usuario.value != "" && contrasena.value != "") {
		$("#frmLogin").submit();
	}else{
		validarCampos()
	}
})
