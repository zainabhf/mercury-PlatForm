package com.ga.mercury.model;

import java.util.Set;

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
		
		private String teacherPic;

		
		@OneToMany(mappedBy="teacher")
		private Set<Course> courses;

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getTeacherName() {
			return teacherName;
		}

		public void setTeacherName(String teacherName) {
			this.teacherName = teacherName;
		}

		public String getEmailAddress() {
			return emailAddress;
		}

		public void setEmailAddress(String emailAddress) {
			this.emailAddress = emailAddress;
		}

		public String getCertificate() {
			return certificate;
		}

		public void setCertificate(String certificate) {
			this.certificate = certificate;
		}

		public Set<Course> getCourses() {
			return courses;
		}

		public void setCourses(Set<Course> courses) {
			this.courses = courses;
		}

		public String getTeacherPic() {
			return teacherPic;
		}

		public void setTeacherPic(String teacherPic) {
			this.teacherPic = teacherPic;
		}
	
}
