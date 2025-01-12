package com.example.repository;

import com.example.model.Equipment;
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
public class EquipmentDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void saveEquipment(Equipment equipment) {
        Session session = sessionFactory.getCurrentSession();
        session.save(equipment);
    }

    public List<Equipment> getAllEquipment() {
        Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Equipment> criteriaQuery = criteriaBuilder.createQuery(Equipment.class);
        Root<Equipment> root = criteriaQuery.from(Equipment.class);
        criteriaQuery.select(root);
        Query<Equipment> query = session.createQuery(criteriaQuery);
        return query.getResultList();
    }

    public Equipment getEquipmentByName(String name) {
        Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Equipment> criteriaQuery = criteriaBuilder.createQuery(Equipment.class);
        Root<Equipment> root = criteriaQuery.from(Equipment.class);
        criteriaQuery.select(root).where(criteriaBuilder.equal(root.get("name"), name));
        Query<Equipment> query = session.createQuery(criteriaQuery);
        return query.getSingleResult();
    }
}