<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../shared/_layout.jsp" />



<form action="${appName}course/add" method="post">

<div class="form-group">
<label> Course Name</label>
<input type="text" name="courseName" value ="${course.courseName}" class="form-control">
</div>

<div class="form-group">
<label>Description</label>
<input type="text" name="courseDescreption" value ="${course.courseDescreption}" class="form-control">
</div>

<div>
<label>Start At</label>
<input type="date" name="startDate" value ="${course.startDate}" class="form-control">
</div>

<div class="form-group">
<label>End At</label>
<input type="date" name="endtDate" value ="${course.endtDate}" class="form-control">
</div>

<div class="form-group">
<label>Course Link</label>
<input type="text" name="courseUrl" value ="${course.courseUrl}" class="form-control">
</div>

<div class="form-group">
<label>Course picture</label>
<input type="text" name="coursePicture" value ="${course.coursePicture}" class="form-control">
</div>
<div class="form-group">
<label>Teaching By</label>
		<select name="teacher" class="form-control">
			<c:forEach items="${teacher}" var="teacher">
				<option value="${teacher.id}"> ${teacher.teacherName} </option>
			</c:forEach>	
		</select>
	</div>


	<input type="hidden" name="courseId" value="${course.courseId}">

	<button type="submit" class="btn btn-primary">Submit</button>
</form>