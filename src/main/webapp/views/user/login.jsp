<jsp:include page="../shared/_layout.jsp" />


<b style="color: red;">${message}</b>

<form action="${appName}user/login" method="post" class="form-control">

	<div class="form-group">
		<label>E-mail Address</label>
		<input class="form-control" type="email" name="emailAddress" class="form-control">
		
	</div>
	
	<div class="form-group">
		<label>Password</label>
		<input class="form-control" type="password" name="password" class="form-control">
	</div>


	<button class="btn btn-primary" type="submit">Submit</button>
</form>
