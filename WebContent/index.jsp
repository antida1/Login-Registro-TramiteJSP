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
<script
	src='http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js'></script>
<title>TRÁMITES</title>
</head>
<body class="container">
	<header>	
	<div id="titulo">	
		<h1 class="text-xs-center">SISTEMA DE TRÁMITES XLX</h1>
	</div>
	<div class="row">
		<img src="img/tramites.jpg" class="img-responsive center-block" alt="TRÁMITES Y SERVICIOS" style="text-align: center; margin: 40px auto; display: block;">
	</div>
	</header>
	<article>
	<div class="div-center col-xs-12 col-md-12 text-xs-center">
		<span class="linkButton"> 
			<input type="button" value="MUNICIPIOS" class="button btn btn-primary" onClick="location.href = '' ">
		</span> 
		<span class="linkButton"> 
			<input type="button" value="CIUDADANOS" class="button btn btn-primary" onClick="location.href = 'login.jsp' ">
		</span>
	</div>
	</article>
</body>
</html>