<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../shared/_layout.jsp" />

<form action="${appName}teacher/add" method="post">
<div class="form-group">
<label> Teacher Name</label>
<input type="text" name="teacherName" class="form-control">
</div>

<div class="form-group">
<label> E-mail Address</label>
<input type="text" name="emailAddress" class="form-control">
</div>

<div class="form-group">
<label> Certificate</label>
<input type="text" name="certificate" class="form-control">
</div>



<div class="form-group">
<label> Teacher Picture</label>
<input type="text" name="teacherPic" class="form-control">
</div>



	<button type="submit" class="btn btn-primary" >Submit</button>
</form>