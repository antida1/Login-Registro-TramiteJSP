<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css"	integrity="sha384-2hfp1SzUoho7/TsGGGDaFdsuuDL0LX2hnUp6VkX3CUQ2K4K+xjboZdsXyp4oUHZj"	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script	src='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js'></script>
<script	src='http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js'></script>
<script type="text/javascript" src="js/registrar.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">


<style type="text/css">
body .container .row {
	margin-top: 10px
}

#alertas {
	position: fixed;
	width: 50%;
	top: 25%;
	z-index: 1000;
	right: 0
}
</style>

<title>Registrar Usuario</title>
</head>
<body class="container">
	<div id="alertas"></div>
	<form method="post" action="Servlets/Servlet_Usu" id="frmRegistrar"	class="form-group">
		<header>
		<div id="titulo">
			<h1 class='text-xs-center'>REGISTRO</h1>
		</div>
		<div class="row">
			<img src="img/login.jpg" class="img-responsive center-block" alt="REGISTRARME" style="text-align: center; margin: 40px auto; display: block;">
		</div>
		</header>
		<!-- CONTENIDO -->
		<div class="contenido col-xs-12 col-md-12 text-xs-center" id="contenido">
			<section> 
			<article>
			
				<div class="row">
					<div class="col-lg-12">
						<div class="input-group">
							<span class="input-group-addon"> 
							<label class="label control-label" style="margin-bottom: 0">Número de Identificación:</label>
							</span> 
							<input type="text" name="txtDocumento" id="txtDocumento" class="textBox form-control" placeholder="Cédula, RUC" size="30" maxlength="15">
						</div>
					</div>
				</div>


				<div class="row">

					<div class="col-lg-6">
						<div class="input-group">
							<span class="input-group-addon"> 
							<label class="label control-label" style="margin-bottom: 0">Apellido del Ciudadano:</label>
							</span> 
							<input type="text" name="txtApellido" id="txtApellido" class="textBox form-control" placeholder="Apellido Obligatorio" size="30" maxlength="100">
						</div>
					</div>
					<div class="col-lg-6">
						<div class="input-group">
							<span class="input-group-addon"> 
							<label class="label control-label" style="margin-bottom: 0">Nombre	del Ciudadano:</label>
							</span> 
							<input type="text" name="txtNombre" id="txtNombre" class="textBox form-control" placeholder="Nombre Obligatorio" size="30" maxlength="100">
						</div>
					</div>

				</div>




				<div class="row">

					<div class="col-lg-6">
						<div class="input-group">
							<span class="input-group-addon"> 
							<label class="label control-label" style="margin-bottom: 0">Telefono:</label>
							</span>
							 <input type="text" name="txtTelefono" id="txtTelefono"	class="textBox form-control" placeholder="Teléfono" size="30" maxlength="50">
						</div>
					</div>
					<div class="col-lg-6">
						<div class="input-group">
							<span class="input-group-addon"> 
							<label class="label control-label" style="margin-bottom: 0">Usuario:</label>
							</span> 
							<input type="text" name="txtUsuario" id="txtUsuario" class="textBox form-control" placeholder="Usuario" size="30" maxlength="50">
						</div>
					</div>

				</div>





				<div class="row">

					<div class="col-lg-6">
						<div class="input-group">
							<span class="input-group-addon"> 
							<label class="label control-label" style="margin-bottom: 0">Contraseña:</label>
							</span> 
							<input type="password" name="txtContrasena" id="txtContrasena" class="textBox form-control" placeholder="Contraseña" size="30" maxlength="50">
						</div>
					</div>
					<div class="col-lg-6">
						<div class="input-group">
							<span class="input-group-addon"> 
							<label class="label control-label" style="margin-bottom: 0">Confirmar Contraseña:</label>
							</span> 
							<input type="password" name="txtConfirmarContrasena" id="txtConfirContrasena" class="textBox form-control" placeholder="Confirme Contraseña" size="30" maxlength="50">
						</div>
					</div>
				</div>



				<div class="row">

					<div class="col-lg-6">
						<div class="input-group">
							<span class="input-group-addon"> 
							<label class="label control-label" style="margin-bottom: 0">Email:</label>
							</span> 
							<input type="text" name="txtEmail" id="txtEmail" class="textBox form-control" placeholder="Correo electronico"	size="30" maxlength="50">
						</div>
					</div>
					<div class="col-lg-6">
						<div class="input-group">
							<span class="input-group-addon"> 
							<label class="label control-label" style="margin-bottom: 0">Confirmar Email:</label>
							</span> 
							<input type="text" name="txtConfirmarEmail" id="txtConfirEmail" class="textBox form-control" placeholder="Confirme correo electronico" size="30" maxlength="50">
						</div>
					</div>
				</div>



				<div class="row col-lg-6">

					<div class="text-xs-center">
						<div class="input-group">
							<input type="button" class="button btn btn-primary col-lg-6" name="btnRegistrar" value="REGISTRARME" id="btnRegistrar" title="REGISTRARME"> 
							<input type="hidden" name="accion" value="registrar">
								
							<div class="link col-lg-6">
								<a href="login.jsp" id="lnklogin" class="link btn btn-primary"><i
									class="fa fa-backward" aria-hidden="true"></i> Regresar</a>
							</div>
						</div>
					</div>
				</div>
				<dir id="alerts"></dir>
				
		</article>
		</section>
		</div>	
	</form>	
</body>
</html>