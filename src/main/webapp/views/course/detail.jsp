<jsp:include page="../shared/_layout.jsp" />


Teaching by: ${course.teacher.teacherName}



<video width="320" height="240" controls>
  <source src="${course.courseUrl}" type="video/mp4">
  <source src="${course.courseUrl}"type="video/ogg">
</video>