package com.example.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "crew")
public class Crew implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false, length = 100)
    private String name;

    @Column(name = "student_id", unique = true, nullable = false)
    private String studentId;

    @Column(name = "role", nullable = false, length = 50)
    private String role;

    @Column(name = "task_status", nullable = false, length = 100)
    private String taskStatus;

    // Constructor, getters, and setters

    public Crew() {
        // Default constructor
    }

    public Crew(Long id, String name, String studentId, String role, String taskStatus) {
        this.id = id;
        this.name = name;
        this.studentId = studentId;
        this.role = role;
        this.taskStatus = taskStatus;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getTaskStatus() {
        return taskStatus;
    }

    public void setTaskStatus(String taskStatus) {
        this.taskStatus = taskStatus;
    }
}
