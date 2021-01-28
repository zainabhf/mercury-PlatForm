<jsp:include page="../shared/_layout.jsp" />


<%-- 



<img src="${course.coursePicture}" width="500" height="600">


<iframe width="420" height="345" src="${course.courseUrl}">
</iframe>
=======
 --%>
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

<!-- 
<iframe width="420" height="345" src="${course.courseUrl}">
</iframe>

<video width="320" height="240" controls>
  <source src="${course.courseUrl}">
  <source src="${course.courseUrl}">
</video> 
-->

