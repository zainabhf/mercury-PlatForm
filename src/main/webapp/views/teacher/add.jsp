<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../shared/_layout.jsp" />

<form action="${appName}teacher/add" method="post">
<div>
<label> Teacher Name</label>
<input type="text" name="teacherName">
</div>



<div>
<label> E-mail Address</label>
<input type="text" name="emailAddress">
</div>
<div>
<label>Certificate</label>
<input type="text" name="certificate">
</div>




	<button type="submit" >Submit</button>
</form>