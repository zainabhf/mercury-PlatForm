<%-- <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="../shared/_layout.jsp" />


<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="${teacher.teacherPic}" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Teacher Name:${teacher.teacherName}</h5>
    <h5 class="card-text">	E-mail Address: ${teacher.emailAddress}</h5>
        <h5 class="card-text">Certificate: ${teacher.certificate}</h5>
    
    
   <h5> Courses:
<c:forEach items="${teacher.getCourses()}" var="course">
			 ${course.courseName} 
	</c:forEach>
	</h5>
<p>
  </div>
  <%if(session.getAttribute("userRole").equals("ROLE_ADMIN")){ %>
				<a href="${appName}teacher/edit?id=${teacher.id}" class="btn btn-secondary">Edit</a> 
				<a href="${appName}course/delete?id=${teacher.id}" class="btn btn-danger">Delete</a><br>
			<%}%>
 
</div>
 --%>
 
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />

				       
		    			
		    			
			
						
				
			
		
			 		<center>
		    			<img alt="teacher pic" src="${teacher.teacherPic}" class="header-img">
		    			<h2 class="h2">${teacher.teacherName}</h2><hr>
		    				<p>
						<span class="p">E-mail Address:</span><span class="info"> ${teacher.emailAddress}<br></span>
						<span class="p">Certificate:</span><span class="info"> ${teacher.certificate}</span><br>
						<span class="p"> Courses:
<c:forEach items="${teacher.getCourses()}" var="course">
			<span class="info"> ${course.courseName} </span>
	</c:forEach>
	</center>
		
 

	
			<%if(session.getAttribute("user") != null){%>
			
			<%if(session.getAttribute("userRole").equals("ROLE_ADMIN")){ %>
			<div class ="botton">
				<a href="${appName}teacher/edit?id=${teacher.id}" class="btn btn-secondary">Edit</a> 
				<a href="${appName}teacher/delete?id=${teacher.id}" class="btn btn-danger">Delete</a><br>
				</div>
			<%}%>
			
 <% }%>

	
