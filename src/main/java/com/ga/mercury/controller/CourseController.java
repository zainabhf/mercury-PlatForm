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
import com.ga.mercury.dao.UserDao;
import com.ga.mercury.model.Course;
import com.ga.mercury.model.User;

@Controller
public class CourseController {
	
	@Autowired
	private TeacherDao teacherDao;
	
	@Autowired
	private HttpServletRequest request;
	
	@Autowired 
	private Environment env;
	
	@Autowired
	private CourseDao courseDao;
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private UserController uc;


	
	// add course
	@GetMapping("course/add")
	public ModelAndView addCourse(){
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		if (!uc.isUserLoggedIn()|| session.getAttribute("userRole").equals("ROLE_STUDENT")) {
		
			mv.setViewName("home/home");  
			 return mv;
			
		}

		
		 mv.setViewName("course/add");
			
			var te = teacherDao.findAll();
			mv.addObject("teacher", te);
			
			HomeController hm = new HomeController();
			hm.setAppName(mv, env);
			 return mv; 
			
	}
	// adding course n data base
	@PostMapping("course/add")
	public String addCourse(Course courses) {

		ModelAndView mv = new ModelAndView();
		courseDao.save(courses);

		return "redirect:index";
	}
	
	//index course
	@GetMapping("course/index")

	public ModelAndView getCourse() {

		var cu = courseDao.findAll();
		
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
				
		Course course = courseDao.findById(id);

		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();

		
		mv.setViewName("course/detail");
		mv.addObject("course", course);
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		if(uc.isUserLoggedIn()) {
		int userId = (int) session.getAttribute("userId");
		User user = userDao.findById(userId);
		mv.addObject("user", user);
		}
		
		
		return mv;
		
	}
	

	
	
	@PostMapping("course/enroll")
	public String addCourseToUser(@RequestParam int id) {
		
		ModelAndView mv = new ModelAndView();
		
		if (!uc.isUserLoggedIn()) {
			return "redirect:login";
		}
		HttpSession session = request.getSession();
		
		int userId = (int) session.getAttribute("userId");
		
		User user = userDao.findById(userId);
		Course course = courseDao.findById(id);
		
		course.getUsers().add(user);
		userDao.save(user);
		
		
		return "redirect:detail?id=" + course.getCourseId();
	}
	
	
	
	@GetMapping("course/edit")
	public ModelAndView editcourse(@RequestParam int id) {
		
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		if (!uc.isUserLoggedIn()|| session.getAttribute("userRole").equals("user")) {
			mv.setViewName("home/home"); 
			return mv;
		}
		Course course = courseDao.findById(id);
		 mv.setViewName("course/edit"); 
		mv.addObject("course", course);

		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		var te = teacherDao.findAll();
		mv.addObject("teacher", te);
		return mv;
	}


	
	@GetMapping("course/delete")
	public String deletecourse(@RequestParam int id) {
		HttpSession session = request.getSession();
		ModelAndView mv = new ModelAndView();
		if (!uc.isUserLoggedIn()|| session.getAttribute("userRole").equals("ROLE_STUDENT")) {
			return "redirect:index";
		}
	
		courseDao.deleteById(id);
		return "redirect:index";
	}
}
