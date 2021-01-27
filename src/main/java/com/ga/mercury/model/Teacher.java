package com.ga.mercury.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="teacher")
public class Teacher {
	
		@Id
		@GeneratedValue
		private int id;
		
		private String teacherName;
		
		private String emailAddress;
		private String certificate;
//		@OneToMany(mappedBy="teacher")
//		private Set<Course> courses;
}
