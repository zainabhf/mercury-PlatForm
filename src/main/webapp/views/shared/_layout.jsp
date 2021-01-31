<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

<a href="${appName}">Home</a>
<a href="${appName}course/index">courses</a>
<a href="${appName}teacher/index">Teachers</a>

<% if(session.getAttribute("user") != null){%>
<% if(session.getAttribute("userRole").equals("ROLE_ADMIN")){%>
	<a href="${appName}course/add">add course</a>
	<a href="${appName}teacher/add">Add teacher</a>
	<%} %>
	<div style="float: right;">
	<a href="${appName}user/profile?id=${user.id}">profile</a>
	
	<a href="${appName}user/logout">Logout</a>
	
<%}else{ %>
	<a href="${appName}user/login">login</a>
	<a href="${appName}user/register">register</a>
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

</body>
</html>