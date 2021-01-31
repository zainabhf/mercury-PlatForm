<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="../shared/_layout.jsp" />



	<c:forEach items="${courses}" var="course">
	 <div class="card"  >
		<a href="${appName}course/detail?id=${course.courseId}">	
		<img class="card-img-top" alt="${course.courseName}" src="${course.coursePicture}"  >
		 <div class="card-body">
	 	<h5 class="card-title" >${course.courseName}</h5>
	 	</div>
	 	</a>
	 	</div>

		
	</c:forEach>

