package com.example.model;

import javax.persistence.*;

@Entity
@Table(name = "Content")
public class Content {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false, length = 100)
    private String name;

    @Column(name = "description", nullable = false, length = 255)
    private String desc;

    @Column(name = "link", nullable = false, length = 255)
    private String link;

    public Content() {

    }

    public Content(String name, String desc, String link) {
        this.name = name;
        this.desc = desc;
        this.link = link;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public String getDesc() {
        return desc;
    }
    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getLink() {
        return link;
    }
    public void setLink(String link) {
        this.link = link;
    }
}
