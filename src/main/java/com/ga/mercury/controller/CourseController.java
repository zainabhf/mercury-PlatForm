package com.ga.mercury.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ga.mercury.dao.CourseDao;
import com.ga.mercury.dao.TeacherDao;
import com.ga.mercury.model.Course;

@Controller
public class CourseController {
//course has 1-m with teacher
	// m-m with user student
	// admin can add and delete the course

	
	
	@Autowired
	private TeacherDao teacher;
	
	@Autowired 
	private Environment env;
	@Autowired
	private CourseDao cdao;
	
	// add course
	@GetMapping("course/add")
	public ModelAndView addCourse(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("course/add");
		HomeController hm = new HomeController();
		hm.setAppName(mv, env);
		var te = teacher.findAll();
		mv.addObject("teacher", te);
		return mv;
		
	}
	// adding course n data base
	@PostMapping("course/add")
	public String addArticle(Course courses) {
		cdao.save(courses);
		return "redirect:/course/index";
	}
	
	//index course
	@GetMapping("course/index")
	public ModelAndView getcourse() {
		var cu = cdao.findAll();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("course/index");
		mv.addObject("courses", cu);
		
		HomeController hm = new HomeController();
		hm.setAppName(mv, env);
		
		return mv;
	}
	
	//details
	@GetMapping("/course/detail")
	public ModelAndView courseDetails(@RequestParam int id) {
		Course course = cdao.findById(id);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("course/detail");
		mv.addObject("course", course);
		
		HomeController hm = new HomeController();
		hm.setAppName(mv, env);
		
		return mv;
		
	}
	
	@GetMapping("course/edit")
	public ModelAndView editcourse(@RequestParam int id) {
		Course course = cdao.findById(id);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("course/edit");
		mv.addObject("course", course);
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		var te = teacher.findAll();
		mv.addObject("teacher", te);
		
		return mv;
	}
	
	@GetMapping("/course/delete")
	public String deletecourse(@RequestParam int id) {
		cdao.deleteById(id);
		return "redirect:/course/index";
	}
}
