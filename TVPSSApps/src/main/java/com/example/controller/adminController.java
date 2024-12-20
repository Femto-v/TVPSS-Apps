package com.example.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/")
public class adminController {

	@GetMapping("/login") 
	public String loginPage(){
		return "admin/login";
	}
	
	@GetMapping("/dashboard")
	public String dahboardPage() {
		return "admin/dashboard";
	}
	
	@GetMapping("/library")
	public String libraryPage() {
		return "admin/library";
	}
	
	@GetMapping("/report")
	public String reportPage() {
		return "admin/report";
	}
	
	@GetMapping("/schoolManage")
	public String schoolManagePage() {
		return "admin/schoolManage";
	}
	
	@GetMapping("/schoolStud")
	public String schoolStudioPage() {
		return "admin/schoolStud";
	}
	
	@GetMapping("/library-channel")
	public String channelFilterPage() {
		return "admin/library-channel";
	}
	
	@GetMapping("/library-live")
	public String liveFilterPage() {
		return "admin/library-live";
	}
	
	@GetMapping("/library-recently")
	public String recentlyFilterPage() {
		return "admin/library-recently";
	}
	
	@GetMapping("library-uploaded")
	public String uploadContentPage() {
		return "admin/library-uploaded";
	}
	
	@GetMapping("library-video")
	public String videoFilterPage() {
		return "admin/library-video";
	}
	
	@GetMapping("/view-program")
	public String programPage() {
		return "admin/view-program";
	}
	
}
