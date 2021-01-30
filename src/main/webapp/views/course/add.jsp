<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../shared/_layout.jsp" />

<form action="${appName}course/add" method="post">
<div>
<label> Course Name</label>
<input type="text" name="courseName">
</div>



<div>
<label> Description</label>
<input type="text" name="courseDescreption">
</div>
<div>
<label> Start At</label>
<input type="date" name="startDate">
</div>

<div>
<label> End At</label>
<input type="date" name="endtDate">
</div>

<div>
<label> Course Link</label>
<input type="text" name="courseUrl">
</div>

<div>
<label>Course picture</label>
<input type="file" name="coursePicture"  accept ="image/*">
</div>

<div>
<label>Teaching By </label>
		<select name="teacher">
			<c:forEach items="${teacher}" var="teacher">
				<option value="${teacher.id}"> ${teacher.teacherName} </option>
			</c:forEach>	
		</select>
	</div>

	<button type="submit" >Submit</button>
</form>