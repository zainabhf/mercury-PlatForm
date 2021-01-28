<jsp:include page="../shared/_layout.jsp" />




Teaching by: ${course.teacher.teacherName}
<br>

<%-- 
>>>>>>> e08e481e13ff3b3d13c32c488cc6f8ae66636cc7



<img src="${course.coursePicture}" width="500" height="600">


<iframe width="420" height="345" src="${course.courseUrl}">
</iframe>
<<<<<<< HEAD

=======
=======
 --%>
>>>>>>> e08e481e13ff3b3d13c32c488cc6f8ae66636cc7
<div>

<img src="${course.coursePicture}">
<p>
<b>Course:${course.courseName}</b><br>
Descreption: ${course.courseDescreption}<br>
Teaching by: ${course.teacher.teacherName}<br>
Start Date: ${course.startDate}<br>
End Date: ${course.endtDate}<br>
</p>
<form action="${appName}course/enroll?id=${course.courseId}" method="post">

	<input type="hidden" value="${course.courseId}" name="courseId">
	<button type="submit">Enroll</button>
</form>
</div>

<hr>



