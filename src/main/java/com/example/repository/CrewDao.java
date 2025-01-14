package com.example.repository;

import com.example.model.Crew;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class CrewDao {

    private final SessionFactory sessionFactory;

    @Autowired
    public CrewDao(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    
    @Transactional
    public void save(Crew crew) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(crew);
    }

    @Transactional(readOnly = true)
    public Crew findById(int id) {
        return sessionFactory.getCurrentSession().get(Crew.class, id);
    }

    @Transactional(readOnly = true)
    public List<Crew> findAll() {
        try (Session session = sessionFactory.openSession()) {
            return session.createQuery("from Crew", Crew.class).list();
        }
    }

    @Transactional
    public void update(Crew crew) {
        sessionFactory.getCurrentSession().update(crew);
    }

    @Transactional
    public void delete(int id) {
        Crew crew = findById(id);
        if (crew != null) {
            sessionFactory.getCurrentSession().delete(crew);
        }
    }
}
