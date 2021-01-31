<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="../shared/_layout.jsp" />

<div>
	<img src="imges/${course.coursePicture}">
	<b>Course:${course.courseName}</b><br>
	Descreption: ${course.courseDescreption}<br>
	Teaching by: ${course.teacher.teacherName}<br>
	Start Date: ${course.startDate}<br>
	End Date: ${course.endtDate}<br>
	</p>
<div class="course-header">
 	<img alt="course pic" src="${course.coursePicture}" class="header-img">
 	<h2 class="header-h">${course.courseName}</h2>
 	</div>
	<br>
	<div>
<div style =" margin-left: 30px;">
    <br>
	<h5>Descreption:</h5> ${course.courseDescreption}<br>
	<h5>Teaching by:</h5> ${course.teacher.teacherName}<br>
	<h5>Start Date:</h5> ${course.startDate}<br>
<h5>End Date: </h5>${course.endtDate}<br><br>
	</div>
>>>>>>> 9f1392b0dc5ce8bd19f1af45d4d52a8503eb97e9
	<% if(session.getAttribute("user") != null){%>
		<iframe width="1000" height="500"
            height="315" 
            src="${course.courseUrl}" 
            frameborder="0" 
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
            allowfullscreen>
    </iframe>
    <br>
	<% if(session.getAttribute("userRole").equals("ROLE_STUDENT")){%>
	
	<form action="${appName}course/enroll?id=${course.courseId}" method="post">
		<input type="hidden" value="${course.courseId}" name="courseId">
		<button type="submit" class="btn btn-info">Enroll</button>
		<br>
	</form>
	<%}else if (session.getAttribute("userRole").equals("ROLE_ADMIN")){ %>
	<a href="${appName}course/edit?id=${course.courseId}" class="btn btn-secondary">Edit</a> 
	<a href="${appName}course/delete?id=${course.courseId}" class="btn btn-danger">Delete</a><br>
	<%}} %>
</div>



