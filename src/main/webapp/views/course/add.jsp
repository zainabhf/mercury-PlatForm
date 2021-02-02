<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../shared/_layout.jsp" />






<form action="${appName}course/add" method="post">
<div class="form-group">
<label> Course Name</label>
<input type="text" name="courseName" class="form-control">
</div>

<div class="form-group">
<label> Description</label>
<input type="text" name="courseDescreption" class="form-control">
</div>

<div class="form-group">
<label> Start At</label>
<input type="date" name="startDate" class="form-control">
</div>

<div class="form-group">
<label> End At</label>
<input type="date" name="endtDate" class="form-control">
</div>

<div class="form-group">
<label> Course Link</label>
<input type="text" name="courseUrl" class="form-control">
</div>

<div class="form-group">
<label>Course picture</label>
<input type="text" name="coursePicture" class="form-control">
</div>

<div class="form-group">
<label>Teaching By </label>
		<select name="teacher" class="form-control">
			<c:forEach items="${teacher}" var="teacher">
				<option value="${teacher.id}"> ${teacher.teacherName} </option>
			</c:forEach>	
		</select>
	</div>
	<br>

	<button type="submit" class="btn btn-primary" >Submit</button>
</form>

<script src="js/main.js"></script>
