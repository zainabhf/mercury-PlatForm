<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="../shared/_layout.jsp" />



<div>
	<img src="imges/${course.coursePicture}">
	<p>
	<b>Course:${course.courseName}</b><br>
	Descreption: ${course.courseDescreption}<br>
	Teaching by: ${course.teacher.teacherName}<br>
	Start Date: ${course.startDate}<br>
	End Date: ${course.endtDate}<br>
	</p>
	<% if(session.getAttribute("user") != null){%>
	<form action="${appName}course/enroll?id=${course.courseId}" method="post">
		<input type="hidden" value="${course.courseId}" name="courseId">
		<button type="submit">Enroll</button>
	</form>
	<%} %>
</div>

<hr>

<iframe width="560" 
            height="315" 
            src="${course.courseUrl}" 
            frameborder="0" 
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
            allowfullscreen>
    </iframe>