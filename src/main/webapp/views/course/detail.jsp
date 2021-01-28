<jsp:include page="../shared/_layout.jsp" />



Teaching by: ${course.teacher.teacherName}
<br>



<img src="${course.coursePicture}" width="500" height="600">


<iframe width="420" height="345" src="${course.courseUrl}">
</iframe>

<div>
<img src="${course.coursePicture}">
<p>
<b>Course:${course.courseName}</b><br>
Descreption: ${course.courseDescreption}<br>
Start Date: ${course.startDate}<br>
End Date: ${course.endtDate}<br>
</p>

<form method="${appName}course/enroll" action="post">
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

