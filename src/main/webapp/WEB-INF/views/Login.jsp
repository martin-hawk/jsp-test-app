<%@ include file="../common/header.jspf"%>
<%@ include file="../common/navigation.jspf"%>
<div class="container">
	<!-- My jsp says name is ${name} and my password is ${password}  -->
	<form action="/login.do" method="post">
		<p style="color: red;">${error}</p>
		<div class="form-group">
			<label for="name">Name</label> <input type="text" name="name"
				class="form-control" /> <label for="pass">Password</label> <input
				type="password" name="pass" class="form-control" /><br>
			<input type="submit" value="Login" class="btn btn-primary" />
		</div>
	</form>
</div>
<%@ include file="../common/footer.jspf"%>