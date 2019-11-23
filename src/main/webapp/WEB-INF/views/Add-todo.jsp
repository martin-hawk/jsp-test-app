<%@ include file="../common/header.jspf"%>
<%@ include file="../common/navigation.jspf"%>

<div class="container">
	<h3>Add new Todo</h3>
	<form action="/add-todo.do" method="post">
		<div class="form-group">
			<label for="item">Todo</label><input type="text" name="todo"
				class="form-control"> <br> <label for="category">Category</label><input
				type="text" name="category" class="form-control"><br> <input
				type="submit" class="btn btn-success" value="Add">
		</div>
	</form>
</div>
<%@ include file="../common/footer.jspf"%>