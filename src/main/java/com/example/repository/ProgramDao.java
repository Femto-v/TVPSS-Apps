package com.example.repository;

import com.example.model.Program;
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
public class ProgramDao {

    private final SessionFactory sessionFactory;

    @Autowired
    public ProgramDao(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Transactional
    public void saveProgram(Program program) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(program);
    }

    public List<Program> getAllPrograms() {
        Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Program> criteriaQuery = criteriaBuilder.createQuery(Program.class);
        Root<Program> root = criteriaQuery.from(Program.class);
        criteriaQuery.select(root);
        Query<Program> query = session.createQuery(criteriaQuery);
        return query.getResultList();
    }

    public Program getProgramById(int id) {
        Session session = sessionFactory.getCurrentSession();
        return session.get(Program.class, id);
    }

    public void deleteProgram(Program program) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(program);
    }
}