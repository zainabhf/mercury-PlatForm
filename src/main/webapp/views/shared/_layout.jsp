<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>${Welcome}</h1>

<nav>

<a href="${appName}">Home</a>
<a href="${appName}course/index">courses</a>
<a href="${appName}teacher/index">Teachers</a>

<% if(session.getAttribute("user") != null){%>
	<a href="${appName}course/add">add course</a>
	<a href="${appName}user/profile?id=${user.id}">profile</a>
	<a href="${appName}teacher/add">Add teacher</a>
	<a href="${appName}user/logout">Logout</a>
	
<%}else{ %>
	<a href="${appName}user/login">login</a>
	<a href="${appName}user/register">register</a>
	
<%} %>

</nav>
</body>
</html>