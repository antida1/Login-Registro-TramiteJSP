<%@ page import="Clases.Usuario" %>
<%@ page import="Clases.UsuarioDB" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.text.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script
	src='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js'></script>
<script type="text/javascript" src="../js/requisitos.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" integrity="sha384-2hfp1SzUoho7/TsGGGDaFdsuuDL0LX2hnUp6VkX3CUQ2K4K+xjboZdsXyp4oUHZj" crossorigin="anonymous">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

<title>Seleccionar Trámite</title>
</head>
<body class="container">
	<form method="post" action="Servlet_Usu" id="frmSelecionar">
	<%Usuario usua = (Usuario)request.getAttribute("usua"); %>
		<header>
		<div id="encabezado">
			<div class="row">
				<img src="../img/bienvenido.jpg" class="img-responsive center-block" alt="BIENVENIDO" style="text-align: center; margin: 20px auto; display: block;">
			</div>
			
			<div class="row">

				<div class="col-lg-6">
					<div class="input-group">
						<span class="input-group-addon"> <label
							class="label control-label" style="margin-bottom: 0">Número
								de Cédula:</label>
						</span> 
						<input type="text" name="txtCedula" id="txtCedula" class="textBox form-control" value="<%= usua.getNumeroIdentificacion() %>" readonly>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="input-group">
						<span class="input-group-addon"> <label
							class="label control-label" style="margin-bottom: 0">Nombre:</label>
						</span> <input type="text" name="txtNombre" id="txtNombre"
							class="textBox form-control " value="<%= usua.getNombres()%> "readonly>

					</div>

				</div class="div-center col-xs-12 col-md-12 text-xs-center">
				 	<span class="linkButton"> 
				 		<input style="margin: 10px 0 10px 15px" type="button" value="MIS TRÁMITES" class="button btn btn-primary col-lg-3" name="btnTramites" id="btnTramites" title="CONSULTAR MIS TRÁMITES" onClick="location.href = 'http://demost.adacsc.co/dllo_sicof'">
					</span>
				</div>


		</div>
		</header>
		<!-- contenido -->
		<div class="contenido row" id="contenido">
			<section> <article>
			<div class="container group">
				<!-- SELECCIONAR LOS TRÁMITES -->
				<div
					class="ui-panel-titlebar ui-widget-header ui-helper-clearfix ui-corner-all">
					<h4 class='text-xs-center'>SELECCIONAR NUEVO TRÁMITE</h4>
				</div>


				<div class="col-lg-12">
					<div class="form-inline">

						<label class="label mr-sm-2" style="margin-bottom: 0">SELECCIONE EL TRÁMITE:</label> <SELECT
							name="comboTramite" SIZE=1 id="comboTramite"
							class="Required custom-select mb-2 mr-sm-2 mb-sm-0" required>
							<OPTION value="00">Seleccione</OPTION>
							<OPTION value="01">Trámite 1</OPTION>
							<OPTION value="02">Trámite 2</OPTION>							
						</SELECT>
					</div>
				</div>





				<div class="col-lg-12">
					<div class="form-inline">

						<label class="label mr-sm-2" style="margin-bottom: 0">SELECCIONE EL MUNICIPIO:</label> <SELECT
							name="comboMunicipio" SIZE=1 id="comboMunicipio"
							class="Required custom-select mb-2 mr-sm-2 mb-sm-0" required>
							<OPTION value="00">Seleccione</OPTION>
							<OPTION value="01">Municipio 1</OPTION>
							<OPTION value="02">Municipio 2</OPTION>
							<OPTION value="03">Municipio 3</OPTION>
						</SELECT>
					</div>
				</div>




				<input type="button" class="button btn btn-primary"	name="btnConsultar" value="CONSULTAR REQUISITOS" id="btnConsultar" title="CONSULTAR REQUISITOS"> 
				<input type="hidden"name="accion" value="consultar"> 
					
				<input type="button" class="button btn btn-primary" name="btnCrear" value="INGRESAR SOLICITUD" id="btnCrear" title="CREAR NUEVO TRÁMITE"  onClick="location.href = ''">
			</div>
			</article> </section>
			<sectio> <article>
			<div id='lista_oculto' style='display: none;'>
				<ol>
					<li>Requisito 1</li>
					<li>Requisito 2</li>
					<li>Requisito 3</li>					
				</ol>
			</div>
			<dir id="alerts"></dir>
			</article> </sectio>
		</div>
	</form>	
</body>
</html>