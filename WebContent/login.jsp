<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css"
	integrity="sha384-2hfp1SzUoho7/TsGGGDaFdsuuDL0LX2hnUp6VkX3CUQ2K4K+xjboZdsXyp4oUHZj"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script
	src='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js'></script>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<title>Iniciar Sesión</title>
</head>
<body class="container">
	<form method="post" action="Servlets/Servlet_Usu" id="frmLogin"
		class="form-group">
		<header>
		<div id="titulo">
			<h1 class="text-xs-center">LOGIN</h1>
		</div>
		<div class="row">
			<img src="img/login.jpg" class="img-responsive center-block" alt="IMAGEN" style="text-align: center; margin: 40px auto; display: block;">
		</div>
		</header>
		<!-- contenido -->
		<div id="contenido"
			class="contenido col-xs-12 col-md-12 text-xs-center">
			<section>
				<div class="row">
					<div class="col-lg-6">
						<div class="input-group">
							<span class="input-group-addon"> <i class="fa fa-user"
								aria-hidden="true"></i> <label class="label control-label"
								style="margin-bottom: 0">USUARIO:</label>

							</span> <input type="text" name="txtUsuario"
								placeholder="Ingrese usuario" id="txtUsuario"
								class="textBox form-control">
						</div>
						<!-- /input-group -->
					</div>
					<!-- /.col-lg-6 -->
					<div class="col-lg-6">
						<div class="input-group">
							<span class="input-group-addon"> <i class="fa fa-key"
								aria-hidden="true"></i> <label class="label control-label"
								style="margin-bottom: 0">CONTRASEÑA:</label>
							</span> <input type="password" name="txtClave"
								placeholder="Ingrese contraseña" id="txtClave"
								class="textBox form-control">
						</div>
						<!-- /input-group -->
					</div>
					<!-- /.col-lg-6 -->
				</div>

				<div class="row" style="margin-top: 20px">
					<div class="col-lg-12">

						<div class="input-group">

							<input type="button" class="button btn btn-primary"
								name="btnIngresar" value="INGRESAR" id="btnIngresar"
								title="Ingresar"> <input type="hidden" name="accion"
								value="login">


							<div class="link">
								<a href="registrarUsuario.jsp" id="lnkRegistrarUsuario"
									class="link">Registrate Aquí</a> - <a href="recuperarClave.jsp"
									id="lnkRecuperarClave" class="link">Recuperar Clave</a>
							</div>


						</div>
					</div>
				</div>
				<dir id="alerts"></dir>


			</div>
			</section>
		</div>
	</form>
</body>
<script src="js/Login.js"></script>
</html>