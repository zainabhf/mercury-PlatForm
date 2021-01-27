<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../shared/_layout.jsp" />
<div>
<!-- <img src="${user.picture}" alt="user picture"> --> 
 ${user.fullName}
 ${user.gender}
 ${user.emailAddress}
 <a href="${appName}user/edit?id=${user.id}">Edit Profile</a>
 <c:forEach items="${courses}" var="course">
 ${course.courseName} <br>
 </c:forEach>
</div>


 