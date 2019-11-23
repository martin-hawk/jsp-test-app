<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.Date"%>
<html>
<head>
<title>Welcome!!!</title>
<link rel='shortcut icon' type='image/x-icon' href='favicon.ico' />
<link rel='stylesheet'
	href='webjars/bootstrap/3.3.6/css/bootstrap.min.css' />
<style type="text/css">
.footer {
	position: absolute;
	bottom: 0;
	width: 100%;
	height: 60px;
	background-color: #f5f5f5;
}
</style>
</head>
<%
	// System.out.println("Testing scriplets");
	// System.out.println(request.getParameter("name"));
	// Date date = new Date();
%>
<body>
	<nav class="navbar navbar-default">

		<a href="/" class="navbar-brand">Brand</a>

		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
			<li><a href="/todo.do">Todos</a></li>
			<li><a href="http://www.in28minutes.com">In28Minutes</a></li>
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li><a href="/login.do">Login</a></li>
		</ul>

	</nav>
	<div class="container">
		<!-- My jsp says name is ${name} and my password is ${password}  -->
		<form action="/login.do" method="post">
			<p style="color: red;">${error}</p>
			<label>Name</label> <input type="text" name="name" /> <label>Password</label> <input
				type="password" name="pass" /> <input type="submit"
				value="Login" class="btn btn-default" />
		</form>
	</div>

	<footer class="footer">
		<p>footer content</p>
	</footer>

	<script type="text/javascript" src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>