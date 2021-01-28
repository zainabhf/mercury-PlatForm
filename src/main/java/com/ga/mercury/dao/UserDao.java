package com.ga.mercury.dao;

import org.springframework.data.repository.CrudRepository;

import com.ga.mercury.model.User;

public interface UserDao extends CrudRepository<User, Integer> {
    public User findById(int id); 
    public User findByEmailAddress(String email); 
}

