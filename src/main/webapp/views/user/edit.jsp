<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../shared/_layout.jsp" />


<form action="${appName}user/edit" method="post">
	<label>Full Name</label>
	<input type="text" name="fullName" value="${user.fullName}"><br>
	 
	<label>Gender</label>
	<input type="text" name="gender" value="${user.gender}"><br>
	
	<label>E-mail Address</label>
	<input type="email" name="emailAddress" value="${user.emailAddress}"><br>
	
	<label>Password</label>
	<input type="password" name="password" value="${user.password}"><br>
	
	<input type="hidden" name="id" value="${user.id}">
	<button type="submit">Submit</button><br>
</form>