package com.ga.mercury.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import com.ga.mercury.model.Teacher;
import com.ga.mercury.model.User;

@Controller
public class TeacherController {
	@Autowired 
	private Environment env;
	@Autowired 
	private UserController uc;
	@Autowired
	private HttpServletRequest request;

	//to display the teachers in home teacher
	@Autowired
	private TeacherDao dao;
	@GetMapping("/teacher/index")
	public ModelAndView getTeacher() {
	//	HttpSession session = request.getSession();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("teacher/index");
		var it = dao.findAll();
		mv.addObject("teachers", it);	
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		return mv;}

	//requeat for adding teacher
	@GetMapping("/teacher/add")

	public ModelAndView addTeacher() {
		ModelAndView mv = new ModelAndView();
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		 mv.setViewName("teacher/add"); 
		HttpSession session = request.getSession();
		if (!uc.isUserLoggedIn()|| session.getAttribute("userRole").equals("ROLE_STUDENT")) {
			 mv.setViewName("home/home"); 
	

		}
		
		
		return mv;

}
	
	// posting add teacher
	@PostMapping("teacher/add")	
	public String addTeacher(Teacher teacher) {
	dao.save(teacher);
	return "redirect:index";
	
	}
	// request for edit teacher

	@GetMapping("/teacher/edit")
	public ModelAndView editTeacher(@RequestParam int id) {
		ModelAndView mv = new ModelAndView();
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		 mv.setViewName("teacher/edit"); 
		HttpSession session = request.getSession();
		if (!uc.isUserLoggedIn()|| session.getAttribute("userRole").equals("ROLE_STUDENT")) {
			
			 mv.setViewName("home/home"); 
		
			}
		
		Teacher teacher = dao.findById(id);
		
		
		 
		mv.addObject("teacher", teacher);
		
		
	
		return mv;
}
	
	//request for delete teacher
	@GetMapping("/teacher/delete")
	public String deleteTeacher(@RequestParam int id) {
		HttpSession session = request.getSession();
		if (!uc.isUserLoggedIn()|| session.getAttribute("userRole").equals("ROLE_STUDENT")) {
			
			
			return " redirect:index";
			}
		dao.deleteById(id);
		return "redirect:index";
		
		
	}
	@GetMapping("/teacher/details")
	public ModelAndView courseDetails(@RequestParam int id) {
				
		Teacher teacher = dao.findById(id);

		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();

		
		mv.setViewName("teacher/details");
		mv.addObject("teacher", teacher);
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
	
		
		
		return mv;
		
	}
	}

