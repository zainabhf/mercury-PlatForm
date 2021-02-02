<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp"/>

<div class="container">
	<div class="row d-flex justify-content-center">
		<div class="col-lg-6 col-md-9">
			<div class="main my-5">
				<div class="header p-3">
					<div class="container">
						<div class="row">
							<div class="col-12 mb-3">
							   <div class="col-12 mb-3">
           <img src="https://png.pngitem.com/pimgs/s/146-1468394_ic-account-box-48px-profile-picture-icon-square.png" 
                class="img-rounded" width="200" height="200">
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
				</div>
				
				<div class="profile p-2">
					<div class="container">
						<div class="row">
							<div class="col-12 d-flex justify-content-between">
								<span>${user.fullName}</span> <span class="mdi mdi-account"
									title="name" style="color: #ff5722;"></span>
							</div>
							<div class="col-12 d-flex justify-content-between">
								<span>${user.gender}</span> <span class="mdi mdi-map-marker"
									title="gender" style="color: #ffc107;"></span>
							</div>
							<div class="col-12 d-flex justify-content-between">
								<span>${user.emailAddress} </span> <span
									class="mdi mdi-badge-account" title="emailAddress"
									style="color: #8bc34a;"></span>
							</div>
							
							<c:forEach items="${user.getCourses()}" var="course"> ${course.courseName}<br>
							</c:forEach>
							
						</div>
					</div>
				</div>
			</div>

		</div>

	</div>
</div>


