<jsp:include page="../shared/_layout.jsp" />

<form action="${appName}user/register" method="post" class="form-control">
	<div class="form-group">
		<label>Full Name</label>
		<input type="text" name="fullName" class="form-control">
	</div>
	
	<div class="form-group">
		<label>Gender</label>
		<input type="text" name="gender" class="form-control">
	</div>
	
	<div class="form-group">
		<label>E-mail Address</label>
		<input type="email" name="emailAddress" class="form-control">
	</div>
	
	<div class="form-group" >
		<label>Password</label>
		<input type="password" name="password" class="form-control">
	</div>

	
	<input type="hidden" name="role" value="ROLE_STUDENT" />
	<button type="submit" class="btn btn-primary">Submit</button>
</form>
