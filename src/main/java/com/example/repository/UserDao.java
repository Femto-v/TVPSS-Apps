package com.example.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import com.example.model.User;

public class UserDao {
    @Autowired
	private SessionFactory sessionFactory;

    //Complete the full 5 CRUD operations here
    public List<User> findAll() { // 1 - get all
        try (Session session = sessionFactory.openSession()) {
            return session.createQuery("from User", User.class).list();
        }
    }
    
 // 2 - Get a customer by ID
    public User findByEmail(String email) {
        try (Session session = sessionFactory.openSession()) {
            return session.get(User.class, email);
        }
    }

    // 3 - Create or save a customer
    public void save(User user) {
        try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();
            session.saveOrUpdate(user);
            session.getTransaction().commit();
        }
    }

    // 4 - Update a customer
    public void update(User user) {
        try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();
            session.update(user);
            session.getTransaction().commit();
        }
    }

    // 5 - Delete a customer
    public void delete(int id) {
        try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();
            User user = session.get(User.class, id);
            if (user != null) {
                session.delete(user);
            }
            session.getTransaction().commit();
        }
    }
}
