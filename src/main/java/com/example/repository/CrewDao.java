package com.example.repository;

import com.example.model.Crew;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class CrewDao {

    @Autowired
    private SessionFactory sessionFactory;

    
    @Transactional
    public void save(Crew crew) {
        sessionFactory.getCurrentSession().save(crew);
    }

        @Transactional(readOnly = true)
    public Crew findById(int id) {
        return sessionFactory.getCurrentSession().get(Crew.class, id);
    }

    @Transactional(readOnly = true)
    public List<Crew> findAll() {
        return sessionFactory.getCurrentSession().createQuery("from Crew", Crew.class).list();
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

    @Transactional(readOnly = true)
    public int getLatestSequence() {
        Integer latestId = (Integer) sessionFactory.getCurrentSession()
            .createQuery("select max(c.id) from Crew c")
            .uniqueResult();
        return latestId != null ? latestId : 0;
    }
}
