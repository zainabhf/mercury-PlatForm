<jsp:include page="../shared/_layout.jsp" />









<div>

<img src="${course.coursePicture}">
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



