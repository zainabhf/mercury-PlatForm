<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />


<form action="${appName}user/edit" method="post">
	<div class="form-group">
		<label>Full Name</label> 
		<input class="form-control" type="text" name="fullName" value="${user.fullName}"><br>
	</div>
	
	<div class="form-group">
		<label>Gender</label> 
		<input class="form-control"	type="text" name="gender" value="${user.gender}"><br>
	</div>

	<div class="form-group">
		<label>E-mail Address</label> 
		<input class="form-control" type="email" name="emailAddress" value="${user.emailAddress}"><br>
	</div>
	
	<div class="form-group">
		<label>Password</label> 
		<input class="form-control" type="password" name="password" value="${user.password}"><br>
	</div>
	
	<div class="form-group" >
		<input type="hidden" name="id" value="${user.id}">
		<input class="form-control" type="hidden" name="role" value="${user.role}">
	</div>

	<button class="btn btn-primary" type="submit">Submit</button>
	<br>
</form>