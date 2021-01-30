package com.ga.mercury.model;

import java.sql.Date;
import java.util.Set;

import javax.persistence.*;
import javax.persistence.Table;

@Entity
@Table(name="Course")
public class Course {

	@Id
	@GeneratedValue
	 private  int courseId ;
	private String  courseName;
	private String  courseDescreption;
	private String  coursePicture;
	private Date startDate;
	private Date endtDate;
	private String courseUrl;
	
	@ManyToMany
	@JoinTable(name = "user_course",
				joinColumns = { @JoinColumn(name = "course_id") },
				inverseJoinColumns = { @JoinColumn(name = "user_id")})
	private Set<User> users;
	
	
	@ManyToOne
	@JoinColumn(name = "FK_TeacherId")
	private Teacher teacher;


	public int getCourseId() {
		return courseId;
	}


	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}


	public String getCourseName() {
		return courseName;
	}


	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}


	public String getCourseDescreption() {
		return courseDescreption;
	}


	public void setCourseDescreption(String courseDescreption) {
		this.courseDescreption = courseDescreption;
	}


	public String getCoursePicture() {
		return coursePicture;
	}


	public void setCoursePicture(String coursePicture) {
		this.coursePicture = coursePicture;
	}


	public Date getStartDate() {
		return startDate;
	}


	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}


	public Date getEndtDate() {
		return endtDate;
	}


	public void setEndtDate(Date endtDate) {
		this.endtDate = endtDate;
	}


	public Set<User> getUsers() {
		return users;
	}


	public void setUsers(Set<User> users) {
		this.users = users;
	}


	public Teacher getTeacher() {
		return teacher;
	}


	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
	
	public String getCourseUrl() {
			return courseUrl;
		}
	
	public void setCourseUrl(String courseUrl) {
		this.courseUrl = courseUrl;
	}	
	
}
