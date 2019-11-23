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
			<li><a href="/logout.do">Logout</a></li>
		</ul>

	</nav>
	<div class="container">
		<H1>Welcome, ${name}!</H1>
		Your Todo list is:
		<ol>
			<c:forEach items="${todos}" var="todo">
				<li>${todo.item}&nbsp;<a
					href="delete-todo.do?todo=${todo.item}"><i class="glyphicon glyphicon-trash"></i></a></li>
			</c:forEach>
		</ol>
		<p></p>
		<form action="/add-todo.do" method="post">
			<input type="text" name="todo"> <input type="submit"
				value="Add">
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

