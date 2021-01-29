<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="../shared/_layout.jsp" />

<div>

<c:forEach items="${courses}" var="course">
		
		
	Course Name: <a href="${appName}course/detail?id=${course.courseId}">${course.courseName}</a><br>
	Description: ${course.courseDescreption}<br>
	<%if(session.getAttribute("user") != null){%>
	<% if(session.getAttribute("userRole").equals("ROLE_ADMIN")){%>

	<a href="${appName}course/edit?id=${course.courseId}">Edit</a> |  
	<a href="${appName}course/delete?id=${course.courseId}">Delete</a><br>
	<%}} %>
	<hr>
</c:forEach>


</div>