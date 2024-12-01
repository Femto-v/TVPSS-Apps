package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class schoolController {
	@GetMapping("/loginSchool") 
	public String loginPage(){
		return "school/loginSchool";
	}
	
	@GetMapping("/crew")
	public String crewPage() {
		return "school/crew";
	}
	
	@GetMapping("/crewManage")
	public String crewManagePage() {
		return "school/crewManage";
	}
	
	@GetMapping("/librarySchool")
	public String libraryPage() {
		return "school/library";
	}
	
	@GetMapping("/library-channelSchool")
	public String channelFilterPage() {
		return "school/library-channel";
	}
	
	@GetMapping("/library-liveSchool")
	public String liveFilterPage() {
		return "school/library-live";
	}
	
	@GetMapping("/library-recentlySchool")
	public String recentlyFilterPage() {
		return "school/library-recently";
	}
	
	@GetMapping("library-uploadedSchool")
	public String uploadContentPage() {
		return "school/library-uploaded";
	}
	
	@GetMapping("library-videoSchool")
	public String videoFilterPage() {
		return "school/library-video";
	}
	
	@GetMapping("/program")
	public String programPage() {
		return "school/program";
	}
	
	@GetMapping("/programManage")
	public String programManagePage() {
		return "school/programManage";
	}
	
	@GetMapping("/studio")
	public String studioPage() {
		return "school/studio";
	}
	
	@GetMapping("/studioEquipment")
	public String studioEquipmentPage() {
		return "school/studioEquipment";
	}
	
	@GetMapping("/studioManage")
	public String studioManagePage() {
		return "school/studioManage";
	}
	
	@GetMapping("/successSchool")
	public String successNotif() {
		return "school/success";
	}
}
