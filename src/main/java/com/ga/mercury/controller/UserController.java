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
import com.ga.mercury.dao.UserDao;
import com.ga.mercury.model.User;

@Controller
public class UserController {

	
	@Autowired
	private Environment env;
	
	@Autowired
	private UserDao userDao;
	
	@Autowired 
	private CourseDao courseDao ; 
	
	@Autowired 
	private HttpServletRequest request;

	@GetMapping("/user/profile")
	public ModelAndView userProfile(@RequestParam int id){
		
		ModelAndView mv = new ModelAndView();
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		if(isUserLoggedIn()) {

			mv.setViewName("user/profile");
			
			User user = userDao.findById(id);
			mv.addObject("user", user);
			
			
		}else {
			mv.setViewName("user/login");
		}
		
		return mv;
	}
	
	
	@GetMapping("/user/login")
	public ModelAndView login(){
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/login");

		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		return mv;
	}
	
	
	@PostMapping("user/login")
	public String login(User user) {
		
		String password = user.getPassword();
		String email = user.getEmailAddress();
		
		User matchUser = userDao.findByEmailAddress(email);
		HttpSession session = request.getSession();
		
		
		if(matchUser != null) {
			if(password.equals(matchUser.getPassword())) {
				
				session.setAttribute("user", matchUser);
				session.setAttribute("userId", matchUser.getId());
				session.setAttribute("message", "You're logged in sccessfully");
				return "redirect:/";
			}
		}
		
		session.setAttribute("message", "Email or Password is Incorrect");
		return "redirect:/user/login";
	}

	
	@GetMapping("/user/register")
	public ModelAndView register(){
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("user/register");
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		return mv;
	}
	
	@PostMapping("/user/register")
	public String register(User user){
		ModelAndView mv = new ModelAndView();

		var users = userDao.findAll(); // the one form DB and the `user` is the one we get from user
				
		for(User userFromBD: users) {
			if(userFromBD.getEmailAddress().equals(user.getEmailAddress())) {
				mv.addObject("message", "User Already Exists");
				return "redirect:user/registeration";
			}
		}
		
		userDao.save(user);
		return "redirect:login";
	}

	
	@GetMapping("user/edit")
	public ModelAndView editUser(@RequestParam int id) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/edit");
		
		User user = userDao.findById(id);
		mv.addObject("user", user);
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
		return mv;
	}
	
	@PostMapping("user/edit")
	public String editUser(User user) {
		
		userDao.save(user);
		
		return "redirect:edit";
	}
	
	public boolean isUserLoggedIn() {
	  
	  HttpSession session = request.getSession();
	  
	  if(session.getAttribute("user") == null)
		  return false;
	  
	  return true; 
	}
	


	 @GetMapping("/user/logout")
	 public String logout() {
		 HttpSession session = request.getSession();
		 session.invalidate();
		 
		 return "redirect:/";
	 }
	
}
