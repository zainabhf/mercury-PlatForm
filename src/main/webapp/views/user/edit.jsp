<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../shared/_layout.jsp" />


<form action="${appName}user/edit" method="post">
	<label>Full Name</label>
	<input type="text" name="fullName" value="${user.fullName}">
	 
	<label>Gender</label>
	<input type="text" name="gender" value="${user.gender}">
	
	<label>E-mail Address</label>
	<input type="email" name="emailAddress" value="${user.emailAddress}">
	
	<label>Password</label>
	<input type="password" name="password" value="${user.password}">
	
	<input type="hidden" name="id" value="${user.id}">
	<button type="submit">Submit</button>
</form>