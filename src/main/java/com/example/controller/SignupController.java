package com.example.controller;

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
		return "admin/signup";
	}
	
	@PostMapping("/register")
	public String register(String firstName, String lastName, String email, String password, String role, Model model) {

	    if (userDAO.findByEmail(email) != null) {
	        model.addAttribute("error", "Email already exists!");
	        model.addAttribute("email", email); // To retain entered data
	        return "admin/signup"; // Return the registration form with an error
	    }

	    // Create User entity
	    User user = new User();
		user.setFirstName(firstName);
		user.setLastName(lastName);
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

}
