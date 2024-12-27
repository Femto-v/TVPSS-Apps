package com.example.controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.model.User;

@Controller
public class SignupController{

    private static final SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();

    @GetMapping("/signup")
    public String signupPage() {
        return "admin/signup";  // Return the view name for signup form
    }

    @PostMapping("/signup")
    public String handleSignup(@RequestParam("firstName") String firstName,
                                @RequestParam("lastName") String lastName,
                                @RequestParam("email") String email,
                                @RequestParam("password") String password) {

        // Create and populate User object
        User user = new User();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);
        user.setPassword(password);

        // Save user using Hibernate
        try (Session session = sessionFactory.openSession()) {
            Transaction tx = session.beginTransaction();
            session.persist(user);  // Persist the User object
            tx.commit();  // Commit the transaction
        } catch (Exception e) {
            // e.printStackTrace();
            return "error";  // Return an error page if something goes wrong
        }

        return "redirect:/login";  // Redirect to the welcome page
    }
}
