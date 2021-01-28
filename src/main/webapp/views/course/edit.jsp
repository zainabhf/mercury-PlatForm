<jsp:include page="../shared/_layout.jsp" /><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../shared/_layout.jsp" />

<form action="${appName}course/add" method="post">

<div>
<label> Course Name</label>
<input type="text" name="courseName" value ="${course.courseName}">
</div>



<div>
<label> Description</label>
<input type="text" name="courseDescreption" value ="${course.courseDescreption}" >
</div>
<div>
<label> Start At</label>
<input type="date" name="startDate" value ="${course.startDate}">
</div>

<div>
<label> End At</label>
<input type="date" name="endtDate" value ="${course.endtDate}">
</div>

<div>
<label> Course Link</label>
<input type="text" name="courseUrl" value ="${course.courseUrl}">
</div>
<div>
<label>Teaching By </label>
		<select name="teacher">
			<c:forEach items="${teacher}" var="teacher">
				<option value="${teacher.id}"> ${course.teacherName} </option>
			</c:forEach>	
		</select>
	</div>


	<input type="hidden" name="courseId" value="${course.courseId}">

	<button type="submit">Submit</button>
</form>