<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="../shared/_layout.jsp" />


<c:forEach items="${teachers}" var="teacher">
<p>
Teachers's Name: ${teacher.teacherName}<br>
Email Address: ${teacher.emailAddress}<br>
Certificate: ${teacher.certificate}<br>

<%if(session.getAttribute("user") != null){%>
<%if(session.getAttribute("userRole").equals("ROLE_ADMIN")){%>
<a href="${appName}teacher/edit?id=${teacher.id}">Edit</a> |
<a href="${appName}teacher/delete?id=${teacher.id}">Delete</a><br>

 <%}}%>
 
Courses:<br> 
<c:forEach items="${teacher.getCourses()}" var="course">
			 ${course.courseName} 
	</c:forEach>
	<hr>
<p>
</c:forEach>
	
