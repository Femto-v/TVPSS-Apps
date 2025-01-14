package com.example.repository;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.example.model.Content;

@Repository
public class LinkDao {
    private final SessionFactory sessionFactory;

    @Autowired
    public LinkDao(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Transactional
    public void save(Content content) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(content);
    }
}
