package com.ga.mercury.dao;

import org.springframework.data.repository.CrudRepository;

import com.ga.mercury.model.Teacher;


public interface TeacherDao extends CrudRepository<Teacher, Integer> {
	public Teacher findById(int id);
}
