package com.restJpa.Springbootdemo.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="login")
public class login implements Serializable{

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	 @Column(name = "USERNAME")
	private String userName;
	 @Column(name = "PASSWORD")
	private String password;
	 @Column(name = "FIRST_NAME")
	private String firstName;
	 @Column(name = "LAST_NAME")
	private String lastName;
	

	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	
	
	
	
	
	
	
}
