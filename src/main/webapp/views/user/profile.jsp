<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../shared/_layout.jsp" />


<div><p>
 ${user.fullName} <br>
 ${user.gender} <br>
 ${user.emailAddress} <br>
 <a href="${appName}user/edit?id=${user.id}">Edit Profile</a>
 
 <br>
 <c:forEach items="${user.getCourses()}" var="course">
   - <a href="${appName}course/detail?id=${course.courseId}">${course.courseName}</a><br>
 </c:forEach>
</p></div>


 