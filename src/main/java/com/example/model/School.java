package com.example.model;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "School")
public class School {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false, length = 100)
    private String schoolName;

    @Column(name = "address", nullable = false, length = 100)
    private String schoolAddress;

    @Column(name = "brand", nullable = false, length = 100)
    private String brandName;

    public School() {
    }

    public School(Long id, String schoolName, String schoolAddress, String brandName) {
        this.id = id;
        this.schoolName = schoolName;
        this.schoolAddress = schoolAddress;
        this.brandName = brandName;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getSchoolName() {
        return schoolName;
    }

    public void setSchoolName(String schoolName) {
        this.schoolName = schoolName;
    }

    public String getSchoolAddress() {
        return schoolAddress;
    }

    public void setSchoolAddress(String schoolAddress) {
        this.schoolAddress = schoolAddress;
    }

    public String getBrandName() {
        return brandName;
    }
    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }
}