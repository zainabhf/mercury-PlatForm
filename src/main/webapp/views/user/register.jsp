<jsp:include page="../shared/_layout.jsp" />

<form action="${appName}user/register" method="post" class="form-control">
	<div class="form-group">
		<label>Full Name</label>
		<input class="form-control" type="text" name="fullName" class="form-control">
	</div>
	
	<div class="form-group">
		<label>Gender</label>
		<input class="form-control" type="text" name="gender" class="form-control">
	</div>
	
	<div class="form-group">
		<label>E-mail Address</label>
		<input class="form-control" type="email" name="emailAddress" class="form-control">
	</div>
	
	<div class="form-group" >
		<label>Password</label>
		<input class="form-control" type="password" name="password" class="form-control">
	</div>

	
	<input class="form-control" type="hidden" name="role" value="ROLE_STUDENT" />
	<button class="btn btn-primary" type="submit" class="btn btn-primary">Submit</button>
</form>
