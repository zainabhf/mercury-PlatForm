package com.ga.mercury.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ga.mercury.model.User;

@Controller
public class UserController {

	
	@Autowired
	private Environment env;
	
//	@Autowired
//	private UserDao userDao;
	
	@GetMapping("/user/profile")
	public ModelAndView userProfile(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/profile");
		
		HomeController hc = new HomeController();
		hc.setAppName(mv, env);
		
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
	
	@PostMapping("/user/login")
	public String loging(User user){
		
		return "redirect:user/profile";
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
		
//		userDao.save(user);
		return "redirect:user/profile";
	}
	
}
