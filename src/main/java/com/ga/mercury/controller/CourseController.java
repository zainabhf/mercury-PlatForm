package com.ga.mercury.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ga.mercury.dao.CourseDao;
import com.ga.mercury.dao.TeacherDao;
import com.ga.mercury.model.Course;

@Controller
public class CourseController {

	@Autowired
	private TeacherDao teacher;
	
	@Autowired 
	private Environment env;
	@Autowired
	private CourseDao cdao;
	
	@GetMapping("course/add")
	public ModelAndView addCourse(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("course/add");
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		var te = teacher.findAll();
		mv.addObject("teacher", te);
		return mv;
		
	}
	
	@PostMapping("course/add")
	public String addArticle(Course courses) {
		cdao.save(courses);
		return "redirect:/course/index";
	}
	
	
	
	
}
