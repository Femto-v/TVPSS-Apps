package com.example.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "program")
public class Program {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false, length = 100)
    private String programName;

    @Column(name = "description", nullable = false, length = 200)
    private String programDesc;

    @Column(name = "date", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date programDate;

    public Program() {

    }

    public Program(Long id,String programName, Date programDate, String programDesc) {
        this.id = id;
        this.programName = programName;
        this.programDate = programDate;
        this.programDesc = programDesc;
    }

    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }

    public String getProgName() {
        return programName;
    }
    public void setProgName(String programName) {
        this.programName = programName;
    }

    public String getProgdesc() {
        return programDesc;
    }
    public void setProgDesc(String programDesc) {
        this.programDesc = programDesc;
    }

    public Date getProgDate() {
        return programDate;
    }
    public void setProgDate(Date progamDate) {
        this.programDate = progamDate;
    }
    
}