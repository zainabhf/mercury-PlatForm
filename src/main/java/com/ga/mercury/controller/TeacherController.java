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
import com.ga.mercury.model.Teacher;

@Controller
public class TeacherController {
	@Autowired 
	private Environment env;
	//display teacher(teacher home)
//	@GetMapping("/teacher/home")
//	public ModelAndView homeTeacher(@RequestParam int id) {
//		System.out.println(id);
//		Teacher teacher = dao.findById(id);
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("teacher/home");
//		mv.addObject("teacher",teacher);
//		HomeController hc = new HomeController();
//		hc.setAppName(mv, env);
//		return mv;
//}
	//to display the teachers in home teacher
	@Autowired
	private TeacherDao dao;
	@GetMapping("/teacher/index")
	public ModelAndView getTeacher() {
		var it = dao.findAll();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("teacher/index");
		mv.addObject("teachers", it);
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		return mv;}

	//requeat for adding teacher
	@GetMapping("/teacher/add")
	public ModelAndView addTeacher() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("teacher/add");
//		var te = dao.findAll();
//		mv.addObject("teacher", te);
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		return mv;
}
	
	// posting add teacher
	@PostMapping("teacher/add")	
	public String addTeacher(Teacher teacher) {
	dao.save(teacher);
	return "redirect:/teacher/index";}
	// request for edit teacher

	@GetMapping("/teacher/edit")
	public ModelAndView editTeacher(@RequestParam int id) {
		Teacher teacher = dao.findById(id);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("teacher/edit");
		mv.addObject("teacher", teacher);
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		return mv;
}
	
	//request for delete teacher
	@GetMapping("/teacher/delete")
	public String deleteTeacher(@RequestParam int id) {
		dao.deleteById(id);
		return "redirect:/teacher/index";
		
		
	}
	}

