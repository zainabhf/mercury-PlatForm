<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="../shared/_layout.jsp" />

<div class="course-index-continer">


<c:forEach items="${courses}" var="course">
<a href="${appName}course/detail?id=${course.courseId}">
<div class="course-card">
<img alt="course pic" src="" style="width:100%">

<h4>	Course Name: ${course.courseName}  </h4><br>
	Description: ${course.courseDescreption}<br>
	</div>
	</a>
</c:forEach>


</div>