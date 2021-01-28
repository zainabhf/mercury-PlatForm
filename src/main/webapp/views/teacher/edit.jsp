<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />
<form action="${appName}teacher/edit" method="post">

<div>
<label> Teacher Name</label>
<input type="text" name="teacherName" value ="${teacher.teacherName}">
</div>



<div>
<label> E-mail Address</label>
<input type="text" name="emailAddress" value ="${teacher.emailAddress}" >
</div>
<div>
<label> Certificate</label>
<input type="text" name="certificate" value ="${teacher.certificate}">
</div>



	<input type="hidden" name="id" value="${teacher.id}">

	<button type="submit">Submit</button>
</form>