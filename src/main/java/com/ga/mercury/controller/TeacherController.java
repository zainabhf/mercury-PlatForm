package com.ga.mercury.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;


public class TeacherController {
	@Autowired 
	private Environment env;
	@GetMapping("/teacher/add")
	public ModelAndView addTeacher() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("teacher/add");
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		return mv;
}}
