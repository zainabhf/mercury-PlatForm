package com.ga.mercury.model;

import java.sql.Date;

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
	
//	@ManyToMany
//	@JoinTable(name = "teacher",
//				joinColumns = { @JoinColumn(name = "course_id") },
//				inverseJoinColumns = { @JoinColumn(name = "teacher_id")})
//	private Set<Teacher> teachers;
//	
//	@ManyToOne
//	@JoinColumn(name = "FK_TeacherId")
//	private Teacher Teacher;
//	
	
	
	
}
