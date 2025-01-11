/*package com.example.controller;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.model.Authority;
import com.example.model.User;
import com.example.repository.UserDao;

@Controller
public class SignupController {

	@Autowired
	private UserDao userDAO;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder; // Autowire the encoder
	
	@GetMapping("/register")
	public String register() {
		return "register";
	}
	
	@PostMapping("/register")
	public String register(String email, String password, String confirmPassword, String role, Model model) {
	    if (!password.equals(confirmPassword)) {
	        model.addAttribute("error", "Passwords do not match!");
	        model.addAttribute("username", email); // To retain entered data
	        return "register"; // Return the registration form with an error
	    }

	    if (userDAO.findByEmail(email) != null) {
	        model.addAttribute("error", "Username already exists!");
	        model.addAttribute("email", email); // To retain entered data
	        return "register"; // Return the registration form with an error
	    }

	    // Create User entity
	    User user = new User();
	    user.setEmail(email);
	    user.setPassword(passwordEncoder.encode(password));
	    user.setEnabled(true);

	    // Assign Role
	    Authority authority = new Authority();
	    authority.setAuthority(role);
	    authority.setUser(user);

	    Set<Authority> authorities = new HashSet<>();
	    authorities.add(authority);
	    user.setAuthorities(authorities);

	    // Save User
	    userDAO.save(user);

	    return "redirect:/login"; // Redirect to login after successful registration
	}
}*/
