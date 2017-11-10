<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet" href="css/login.css" />
<title>MENSAJE RESPUESTA</title>
</head>
<body>
	<h1 align="center">
		<%
			if (request.getParameter("mens") != null) {
				out.println(request.getParameter("mens"));
			}
		%>
	</h1>
	<br>
	<h2 align="center">
		<a href="login.jsp">Inicio</a>
	</h2>

</body>
</html>