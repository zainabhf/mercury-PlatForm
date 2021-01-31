<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../shared/_layout.jsp" />



<form action="${appName}teacher/add" method="post">

<div class="form-group">
<label> Teacher Name</label>
<input type="text" name="teacherName" value ="${teacher.teacherName}" class="form-control">
</div>

<div class="form-group">
<label>E-mail address</label>
<input type="text" name="emailAddress" value ="${teacher.emailAddress}" class="form-control">
</div>

<div>
<label>Certificate</label>
<input type="text" name="certificate" value ="${teacher.certificate}" class="form-control">
</div>

<div class="form-group">
<label>Teacher Picture</label>
<input type="text" name="teacherPic" value ="${teacher.teacherPic}" class="form-control">
</div>




	<input type="hidden" name="id" value="${teacher.id}">

	<button type="submit" class="btn btn-primary">Submit</button>
</form>