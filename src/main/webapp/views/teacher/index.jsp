<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="../shared/_layout.jsp" />


<c:forEach items="${teachers}" var="teacher">
<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="${teacher.teacherPic}" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Teacher Name:${teacher.teacherName}</h5>
    <p class="card-text">	E-mail Address: ${teacher.emailAddress}<br>
        <p class="card-text">Certificate: ${teacher.certificate}<br>
    
    </p>
    Courses:<br> 
<c:forEach items="${teacher.getCourses()}" var="course">
			 ${course.courseName} 
	</c:forEach>
	<hr>
<p>
  </div>
</div>
<%-- <div>
	<img src="${teacher.teacherPic}"width="200" height="200">
	
	<b>Teacher Name:${teacher.teacherName}</b><br>
	E-mail Address: ${teacher.emailAddress}<br>
	Certificate: ${teacher.certificate}<br>
	
	</div> --%>


<%if(session.getAttribute("user") != null){%>
<%if(session.getAttribute("userRole").equals("ROLE_ADMIN")){%>
<a href="${appName}teacher/edit?id=${teacher.id}">Edit</a> |
<a href="${appName}teacher/delete?id=${teacher.id}">Delete</a><br>

 <%}}%>
 

</c:forEach>
	
