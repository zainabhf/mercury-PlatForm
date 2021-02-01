<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />

<div>	
	<%if(session.getAttribute("user") != null){%>
		<%boolean isEnroll = false; %>
			<c:forEach items="${user.getCourses()}" var="userCourse">
				<c:if test="${userCourse.courseId == course.courseId}">
						<h2 class="header-h">${course.courseName}</h2><br>
				        <iframe width="1000" height="500" height="315" 
			            src="${course.courseUrl}" 
			            frameborder="0"
			            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
			            allowfullscreen>
		    			</iframe><br>
		    			<%isEnroll = true; %> 
				      	<br>
				</c:if>
			</c:forEach>
			<%if(!isEnroll){ %>
			  <div style ="margin-left: 30px;"><br>
						  <div class="course-header">
							 	<img alt="course pic" src="${course.coursePicture}" class="header-img">
								<h2 class="header-h">${course.courseName}</h2>
							</div>
							<h5>Description:</h5> ${course.courseDescreption}<br>
							<a href="#"><h5>Teaching by:</h5> ${course.teacher.teacherName}<br></a>
							<h5>Start Date:</h5> ${course.startDate}<br>
							<h5>End Date: </h5>${course.endtDate}<br><br>
					<%if(session.getAttribute("userRole").equals("ROLE_STUDENT")){ %>
						<form action="${appName}course/enroll?id=${course.courseId}" method="post">
							<input type="hidden" value="${course.courseId}" name="courseId">
							<button type="submit" class="btn btn-info">Enroll</button>
							<br>
						</form>					
					<%} %>
			  </div>
			<%} %>
			
			<%if(session.getAttribute("userRole").equals("ROLE_ADMIN")){ %>
				<a href="${appName}course/edit?id=${course.courseId}" class="btn btn-secondary">Edit</a> 
				<a href="${appName}course/delete?id=${course.courseId}" class="btn btn-danger">Delete</a><br>
			<%}%>
			
		<%} else { %>
		<div class="course-header">
			 	<img alt="course pic" src="${course.coursePicture}" class="header-img">
				<h2 class="header-h">${course.courseName}</h2>
			</div>
			<h5>Description:</h5> ${course.courseDescreption}<br>
			<h5>Teaching by:</h5> ${course.teacher.teacherName}<br>
			<h5>Start Date:</h5> ${course.startDate}<br>
			<h5>End Date: </h5>${course.endtDate}<br><br>
		<% }%>
</div>