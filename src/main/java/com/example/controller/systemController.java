package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;

import com.example.model.Authority;
import com.example.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import com.example.repository.UserDao;
import java.util.List;

@Controller
@RequestMapping("/")
public class systemController {

	@Autowired
	private UserDao userdao;

@GetMapping("/user")
public String listUser(Model model) {
    List<User> users = userdao.findAll();
    for (User user : users) {
        System.out.println("User: " + user.getFirstName() + " " + user.getLastName());
        for (Authority authority : user.getAuthority()) {
            System.out.println("Role: " + authority.getAuthority());
        }
    }
    model.addAttribute("users", users);
    return "systemAdmin/user";
}
	
	@GetMapping("/userManage")
	public String userManagePage() {
		return "systemAdmin/userManage";
	}

}
