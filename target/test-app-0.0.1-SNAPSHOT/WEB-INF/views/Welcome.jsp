<%@page import="java.util.Date"%>
<html>
<head>
<title>Welcome!!!</title>
</head>
<%
	System.out.println("Testing scriplets");
	System.out.println(request.getParameter("name"));
	Date date = new Date();
%>
<body>
	Welcome, ${name}!
	<br> Your password is
	<i>${password}</i>.
	<p>
		Your Todo list is: <br> ${todos}
	</p>
	<p>
		Today is
		<%=date%></p>
</body>
</html>

