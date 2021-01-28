<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />

Teachers's Name: ${teacher.teacherName} <br>
Email Address: ${teacher.emailAddress} <br>

Certificate: ${teacher.certificate} <br><br>


	<c:forEach items="${teacher.getCourses()}" var="Courses">
			<div>Title: ${course.courseName} </div> 

			
			<hr>
	</c:forEach>
