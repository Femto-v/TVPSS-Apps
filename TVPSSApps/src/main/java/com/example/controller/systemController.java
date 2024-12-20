package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class systemController {
	@GetMapping("/user") 
	public String userPage(){
		return "systemAdmin/user";
	}
	
	@GetMapping("/userManage")
	public String userManagePage() {
		return "systemAdmin/userManage";
	}
	
	@GetMapping("/successSystem")
	public String successSystemPage() {
		return "systemAdmin/success";
	}

}
