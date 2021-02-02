<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="../shared/_layout.jsp" />

<div class=" mycontainer">
<c:forEach items="${teachers}" var="teacher">
<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="${teacher.teacherPic}" alt="Card image cap"style="height:200px;width:250px;">
  <div class="card-body">
    <h5 class="card-title">Teacher <a href="${appName}teacher/details?id=${teacher.id}">${teacher.teacherName}</a></h5>
        <h5 class="card-text">Certificate: ${teacher.certificate}</h5>
    
    <br> 
	<br>

 
<p>
  </div>
</div>

</c:forEach>
	</div>
