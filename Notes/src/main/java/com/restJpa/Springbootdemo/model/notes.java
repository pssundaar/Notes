package com.restJpa.Springbootdemo.model;

import java.io.Serializable;
import java.sql.Date;
import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="notes")
public class notes implements Serializable{ 
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private int note_id;
	
	@Column(name ="TITLE") 
	private String title;
	
	@Column(name ="DESCRIPTION") 
	private String description;
	
	@Column(name = "CREATED_DATE")
	private LocalDate created_date;
	
	@Column(name = "UPDATED_DATE")
	private LocalDate updated_date;
	
	@Column(name = "USERNAME")
	private String username;

	public int getNoteid() {
		return note_id;
	}

	public void setNoteid(int noteid) {
		this.note_id = noteid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public LocalDate getCreated_date() {
		return created_date;
	}

	public void setCreated_date(LocalDate today) {
		this.created_date = today;
	}

	public LocalDate getUpdated_date() {
		return updated_date;
	}

	public void setUpdated_date(LocalDate updated_date) {
		this.updated_date = updated_date;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	
	

	
	
}
