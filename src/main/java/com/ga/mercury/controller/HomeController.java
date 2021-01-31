package com.ga.mercury.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class HomeController {

	
	
	@Autowired 
	private Environment env;
	

	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home/home");
		
		setAppName(mv, env);
		return mv;
	}
	
	
	public ModelAndView setAppName(ModelAndView mv, @Autowired Environment env) {
		String appName = env.getProperty("app.name");
		mv.addObject("appName", appName);
		mv.addObject("Welcome", " Mercury PlatForm");
		
		return mv;
	}
	
	
	
}
