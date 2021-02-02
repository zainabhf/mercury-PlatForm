<jsp:include page="../shared/_layout.jsp" />

<div id="login">
	<div class="container">
		<div id="login-row"
			class="row justify-content-center align-items-center">
			<div id="login-column" class="col-md-6">
				<div id="login-box" class="col-md-12">
				
					<form id="login-form" class="form" action="${appName}user/register" method="post">
						<h1> Registration</h1>
						
					<div class="form-group">
		           <label for="fullName" >Full Name</label>
		           <input type="text" name="fullName" class="form-control">
	                </div>
					<div class="form-group">
		             <label for="gender">Gender</label>
		            <input type="text" name="gender" class="form-control">
	                 </div>
						<div class="form-group">
							<label  for="emailAddress">e-mail address</label>
							<input type="text" name="emailAddress" class="form-control">
						</div>
						<div class="form-group">
							<label for="password">Password</label>
							<input type="password" name="password" class="form-control">
						</div>
						<br>
						   <div class="form-group">
            <input class="form-control" type="hidden" name="role" value="ROLE_STUDENT" />
	<button class="btn btn-primary" type="submit" class="btn btn-primary">Submit</button>
                            </div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>