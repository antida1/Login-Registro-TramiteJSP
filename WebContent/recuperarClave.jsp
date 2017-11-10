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
<title>Recuperar Clave</title>
</head>
<body class="container">
	<form method="post" action="Servlet_Usu" id="frmLogin"
		class="form-group">
		<header>
		<div id="titulo">
			<h1 class='text-xs-center'>RECUPERACIÓN DE CONTRASEÑA</h1>
		</div>
		<div class="row">
			<img src="img/recuperarC.png" class="img-responsive center-block" alt="RECUPERAR CONTRASEÑA" style="text-align: center; margin: 40px auto; display: block;">
		</div>
		</header>
		<!-- contenido -->
		<div class="contenido col-xs-12 col-md-12 text-xs-center"
			id="contenido">
			<section> <article>
				<div class="row">
					<div class="col-lg-6">
						<div class="input-group">
							<span class="input-group-addon"> <i
								class="fa fa-envelope-o" aria-hidden="true"></i> <label
								class="label control-label" style="margin-bottom: 0">EMAIL:</label>
							</span> <input type="text" name="txtEmail"
								placeholder="Ingrese email registrado" id="txtEmail"
								class="textBox form-control">

						</div>
						<!-- /input-group -->
					</div>
					<!-- /.col-lg-6 -->

					<div class="col-lg-6">
						<div class="input-group">

							<input type="button" class="button btn btn-primary col-lg-6"
								name="btnRecuperar" value="RECUPERAR" id="btnRecuperar"
								title="RECUPERAR CONTRASEÑA">

							<div class="link col-lg-6">
								<a href="login.jsp" id="lnklogin" class="link btn btn-primary"><i
									class="fa fa-backward" aria-hidden="true"></i> Regresar</a>
							</div>

						</div>
						<!-- /input-group -->
					</div>
					<!-- /.col-lg-6 -->

				</div>






			</div>
			</article></section>
		</div>
	</form>
</body>
</html>