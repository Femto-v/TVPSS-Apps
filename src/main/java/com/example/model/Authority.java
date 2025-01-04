package com.example.model;

import javax.persistence.*;

@Entity
@Table(name = "authorities")
public class Authority {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	 
    @Column(name = "authority", nullable = false, length = 50)
    private String authority;

    @ManyToOne
    @JoinColumn(name = "email", nullable = false)
    private User user;
    
    public Authority() {
    	
    }

    public Authority(Long id, String authority) {
    	this.id = id;
    	this.authority = authority;
    }
    
    public Long getId() {
    	return id;
    }
    public void setId(Long id) {
    	this.id = id;
    }
    
    public String getAuthority() {
    	return authority;
    }
    public void setAuthority(String authority) {
    	this.authority = authority;
    }
    
    public User getUser() {
    	return user;
    }
    public void setUser(User user) {
    	this.user = user;
    }
}

