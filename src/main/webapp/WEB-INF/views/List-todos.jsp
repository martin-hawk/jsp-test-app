
<%
	// System.out.println("Testing scriplets");
	// System.out.println(request.getParameter("name"));
	// Date date = new Date();
%>
<%@ include file="../common/header.jspf"%>
<%@ include file="../common/navigation.jspf"%>
<div class="container">
	<H1>Welcome, ${name}!</H1>
	<h3>Your Todo list is:</h3>

	<table class="table table-striped">
		<thead>
			<th>Description</th>
			<th>Category</th>
			<th>Actions</th>
		</thead>
		<tbody>
			<c:forEach items="${todos}" var="todo">
				<tr>
					<td>${todo.item}</td>
					<td>${todo.category}</td>
					<td>&nbsp;&nbsp;<a class="btn btn-danger"
						href="/delete-todo.do?todo=${todo.item}&category=${todo.category}">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<p></p>
	<a href="/add-todo.do" class="btn btn-success">Add new Todo</a>
</div>
<%@ include file="../common/footer.jspf"%>