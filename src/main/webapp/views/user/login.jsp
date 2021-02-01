<jsp:include page="../shared/_layout.jsp" />
<!-- <b style="color: red;">${message}</b>-->
<body class="user-page-login">
<form action="${appName}user/login" method="post" class="login-form">
<h1 id="h1-login">Login</h1>

	<div class="form-group">
	<label for="emailAddress">e-mail Address</label>
		<input class="form-control" type="text" name="emailAddress" class="form-control">
	</div>
	
	<div class="form-group">
	<label for="password">Password</label>
		<input class="form-control" type="password" name="password" class="form-control">
	</div>


	<button class="btn btn-primary btn-ghost" type="submit">Login</button>
</form>
</body>
