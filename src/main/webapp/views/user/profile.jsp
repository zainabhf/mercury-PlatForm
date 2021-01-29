<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../shared/_layout.jsp" />


<div><p>
 ${user.fullName} <br>
 ${user.gender} <br>
 ${user.emailAddress} <br>
 <a href="${appName}user/edit?id=${user.id}">Edit Profile</a>
 
 <c:forEach items="${user.getCourses()}" var="course">
  ${course.courseName}<br>
 </c:forEach>
</p></div>


 