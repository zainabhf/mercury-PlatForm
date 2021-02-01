<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Audiowide|Sofia|Trirong">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia&effect=neon|outline|emboss|shadow-multiple">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="css/style.css">

</head>
<body>

<div>
<a href="${appName}">
<img alt="app icon" src="">
<h1 class="font-effect-emboss" id="h1"> ${Welcome}</h1>
</a>
</div>
<nav>

<div class="navbar">
<a href="${appName}" class="nav-link">Home</a>
<a href="${appName}course/index" class="nav-link">courses</a>
<a href="${appName}teacher/index"class="nav-link">Teachers</a>

<% if(session.getAttribute("user") != null){%>
<% if(session.getAttribute("userRole").equals("ROLE_ADMIN")){%>
	<a href="${appName}course/add"class="nav-link">add Course</a>
	<a href="${appName}teacher/add"class="nav-link">Add Teacher</a>
	</div>
	<%} %> 
	<div style="float: right;">
	<a href="${appName}user/profile?id=${user.id}" class="nav-link">Profile</a>
	<a href="${appName}user/logout" class="nav-link">Logout</a>
	</div>
	
<%}else{ %>
<div style="float:left;">
	<a href="${appName}user/login" class="nav-link">login</a>
	<a href="${appName}user/register"class="nav-link" >Registration</a>
</div>

	
<%} %>


</nav>

<c:if test="${message != null}">

<div class="alert alert-primary fade show" role="alert">
${message}
</div>
<% session.removeAttribute("message"); %>
</c:if> 


<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$('.fade').slideUp(4000);
	</script>

<footer class ="footer">
CopyRight2021 :
  <a href="atheer@mercury.com">ATHEER</a>
  <a href="Moudi@mercury.com">MOUDI</a>
  <a href="ghosoon@mercury.com">GHOSOON</a>
  <a href="zainab@mercury.com">ZAINAB</a>
</footer>



</body>
</html>