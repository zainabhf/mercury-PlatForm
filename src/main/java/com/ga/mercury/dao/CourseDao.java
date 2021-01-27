package com.ga.mercury.dao;

import org.springframework.data.repository.CrudRepository;

import com.ga.mercury.model.Course;

public interface CourseDao  extends CrudRepository <Course,Integer>{
	public Course findById(int id);
}
