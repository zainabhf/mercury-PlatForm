<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />
<div class="container">
	<div class="row d-flex justify-content-center">
		<div class="col-lg-6 col-md-9">
			<div class="main my-5">
				<div class="header p-3">
					<div class="container">
						<div class="row">
							<div class="col-12 mb-3">
								<img
									src="https://s16.picofile.com/file/8414366276/105_1055656_account_user_profile_avatar_avatar_user_profile_icon.png"
									alt="profile image"
									class="mx-auto d-block img-fluid rounded-circle profile-img"
									width="200" height="200">
							</div>
							<div class="col-12 text-center name">
								<div class="d-flex justify-content-between">
									<div>${user.fullName}</div>
									<div>
										<a href="${appName}user/edit?id=${user.id}">Edit Profile</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
<div class="profile p-2">
	<div class="container">
		<div class="row">
			<div class="col-12 d-flex justify-content-between">
				<span>${user.fullName}</span>
				 <span class="mdi mdi-account" title="name" style="color: #ff5722;"></span>
			</div>
			<div class="col-12 d-flex justify-content-between">
				<span>${user.gender}</span> 
				<span class="mdi mdi-map-marker" title="gender" style="color: #ffc107;"></span>
			</div>
			<div class="col-12 d-flex justify-content-between">
				<span>${user.emailAddress} </span> 
				<span class="mdi mdi-badge-account" title="emailAddress" style="color: #8bc34a;"></span>
			</div>
			<c:forEach items="${user.getCourses()}" var="course"> ${course.courseName}<br>
			</c:forEach>
		</div>
	</div>
</div>
  <div class="container">
  <h2>Courses progress</h2>
  <p>Database & SQL</p> 
  <div class="progress">
    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:40%">
      40% Complete (success)
    </div>
  </div>
  <p>Introduction to Algorithms</p> 
  <div class="progress">
    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:50%">
      50% Complete (info)
    </div>
  </div>
  <p>Introduction to Javascript for Beginners<p>
  <div class="progress">
    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width:60%">
      60% Complete (warning)
    </div>
  </div>
  <P>Network Security<p>
  <div class="progress">
    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:70%">
      70% Complete (danger)
    </div>
  </div>
</div>
    </div>

   </div>

  </div>
  </div>

<!--  
 ${user.gender} <br>
 ${user.emailAddress} <br>

 
 <c:forEach items="${user.getCourses()}" var="course">
  ${course.courseName}<br>
 </c:forEach>
</p></div>
 -->





