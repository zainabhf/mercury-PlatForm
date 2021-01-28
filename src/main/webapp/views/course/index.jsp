<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />

<div>

<c:forEach items="${courses}" var="course">
		
		
			Course Name: <a href="${appName}course/detail?id=${course.courseId}">${course.courseName}</a><br>
			Description: ${course.courseDescreption}<br>

			<a href="${appName}course/edit?id=${course.courseId}">Edit</a> |  
			<a href="${appName}course/delete?id=${course.courseId}">Delete</a><br>
		<hr>
	</c:forEach>


</div>