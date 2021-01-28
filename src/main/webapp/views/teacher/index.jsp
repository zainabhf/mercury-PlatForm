<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />


<c:forEach items="${teachers}" var="teacher">
		<tr>
<a href="${appName}teacher/delete?id=${teacher.id}">Delete</a>
 
<a href="${appName}teacher/edit?id=${teacher.id}">Edit</a> | 

 	Teachers's Name: ${teacher.teacherName}
 Email Address:${teacher.emailAddress}
	Certificate:	${teacher.certificate}

	Courses: <c:forEach items="${teacher.getCourses()}" var="course">
			<div> ${course.courseName}</div> 

			
			<hr>
			</tr>
	</c:forEach>
		</c:forEach>
	
