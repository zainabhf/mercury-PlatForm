package com.ga.mercury.test;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class API {

//	@GetMapping("/hello")
//	public String hello() {
//		return "Our app is working fine";
//	}
//	
//	@Autowired
//	private Environment env;
//	
//	@GetMapping("/")
//	public HashMap<String, String> rootRoute(@RequestParam(defaultValue = "World") String name) { 
//		HashMap<String, String> response = new HashMap<String, String>();
//		response.put("message", "Hello " + name + " !, How are you? ");
//		response.put("course", "Java Immersive Course");
//		System.out.println(env.getProperty("app.name"));
//		return response;
//	}
//	
//	
}
