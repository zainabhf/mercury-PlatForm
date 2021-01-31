<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="../shared/_layout.jsp" />

<div class="course-index-continer">


<c:forEach items="${courses}" var="course">
<a href="${appName}course/detail?id=${course.courseId}">
<div class="course-card">
<img alt="course pic" src="imges/mer.jpg" style="width:100%">

<<<<<<< HEAD
<h6>	Course Name: <a href="${appName}course/detail?id=${course.courseId}">${course.courseName}</a> </h6><br>
<p>	 Description: ${course.courseDescreption} <br>  </p>
	<%if(session.getAttribute("user") != null){%>
	<% if(session.getAttribute("userRole").equals("ROLE_ADMIN")){%>

	<a href="${appName}course/edit?id=${course.courseId}">Edit</a> |  
	<a href="${appName}course/delete?id=${course.courseId}">Delete</a><br>
	<%}} %>
=======
<h4>	Course Name: ${course.courseName}  </h4><br>
	Description: ${course.courseDescreption}<br>
>>>>>>> b7cc2f73eae3757e84422bde98daa0531f4dfbce
	</div>
	</a>
</c:forEach>


</div>