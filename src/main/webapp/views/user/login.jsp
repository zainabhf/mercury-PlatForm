<jsp:include page="../shared/_layout.jsp" />

<body class="user-page-login">

	<form action="${appName}user/login" method="post" class="login-form">
		<h1 id="h1-login">Login</h1>

		<div class="div-loginForm">
			<label for="emailAddress">e-mail Address</label> 
            <input type="text" name="emailAddress" class="form-control">
		</div>
		<div class="div-loginForm">
			<label for="password">Password</label>
			<input type="password" name="password" class="form-control">
		</div>
		<button class="btn btn-primary btn-ghost" type="submit">Login</button>
	</form>

</body>
