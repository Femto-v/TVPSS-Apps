package com.example.repository;

import com.example.model.School;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

@Repository
@Transactional
public class SchoolDao {

    private final SessionFactory sessionFactory;
    
    @Autowired
    public SchoolDao(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void saveSchool(School school) {
        Session session = sessionFactory.getCurrentSession();
        session.save(school);
    }

    public List<School> getAllSchools() {
        Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<School> criteriaQuery = criteriaBuilder.createQuery(School.class);
        Root<School> root = criteriaQuery.from(School.class);
        criteriaQuery.select(root);
        Query<School> query = session.createQuery(criteriaQuery);
        return query.getResultList();
    }

    public School getSchoolById(int id) {
        Session session = sessionFactory.getCurrentSession();
        return session.get(School.class, id);
    }

    public void deleteSchool(School school) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(school);
    }

    public void updateSchool(School school) {
        try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();
            session.update(school);
            session.getTransaction().commit();
        }
    }
}