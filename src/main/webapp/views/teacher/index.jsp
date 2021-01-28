<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />


<c:forEach items="${teachers}" var="teacher">
		<tr>
 Teachers's Name: <td>${teacher.teacherName}</td>
 		
 Email Address:<td>${teacher.emailAddress}</td>
	Certificate:		<td>${teacher.certificate}</td>

	Courses: <c:forEach items="${teacher.getCourses()}" var="Courses">
			<div>Title: ${course.courseName} </div> 

			
			<hr>
	</c:forEach>
		</c:forEach>
	
