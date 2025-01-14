package com.example.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.beans.factory.annotation.Autowired;

import com.example.model.Content;
import com.example.model.School;
import com.example.repository.SchoolDao;
import com.example.repository.LinkDao;



@Controller
@RequestMapping("/")
public class adminController {

	@Autowired
	private SchoolDao schooldao;

	@Autowired
	private LinkDao linkdao;

	@GetMapping("/login")
	public String loginPage() {
		return "admin/login";
	}
	
	@PostMapping("/login")
	public ModelAndView loginForm() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	
		if (authentication != null && authentication.isAuthenticated()) {
			String role = authentication.getAuthorities().stream()
										 .map(GrantedAuthority::getAuthority)
										 .findFirst()
										 .orElse(null);
	
			if ("ROLE_ADMIN".equals(role)) {
				return new ModelAndView("redirect:/systemAdmin/user");
			} else if ("ROLE_SCHOOL".equals(role)) {
				return new ModelAndView("redirect:/school/crew");
			} else if ("ROLE_TEAM".equals(role)) {
				return new ModelAndView("redirect:/admin/dashboard");
			}
		}
	
		return new ModelAndView("redirect:/home");
	}
	
	
	@GetMapping("/dashboard")
	public String dahboardPage() {
		return "admin/dashboard";
	}

	@PostMapping("/dashboard")
	public String addSchool(String schoolName, String schoolAddress, String brandName) {
		School school = new School();
		school.setSchoolName(schoolName);
		school.setSchoolAddress(schoolAddress);
		school.setBrandName(brandName);
		schooldao.saveSchool(school);

		return "redirect:/dashboard";
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
	
	@GetMapping("/library-uploaded")
	public String uploadContentPage() {
		return "admin/library-uploaded";
	}

	@PostMapping("/upload")
	public String uploadContent(String name, String desc, String link) {
		Content content = new Content();
		content.setName(name);
		content.setDesc(desc);
		content.setLink(link);
		linkdao.save(content);
		return "redirect:/library-uploaded";
	}
	
	@GetMapping("/library-video")
	public String videoFilterPage() {
		return "admin/library-video";
	}
	
	@GetMapping("/view-program")
	public String programPage() {
		return "admin/view-program";
	}
	
}
