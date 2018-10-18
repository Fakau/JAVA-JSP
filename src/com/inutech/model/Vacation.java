package com.inutech.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="VACATION")
public class Vacation implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="ID")
	private int id;
    @Column(name="DESCRIPTION")
    private String description;
    @Column(name="CODE_VACATION")
    private String code;
    
    
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getCode() {
		return code;
	}


	public void setCode(String code) {
		this.code = code;
	}


	public Vacation() {
		// TODO Auto-generated constructor stub
	}


	public Vacation(String description, String code) {
		super();
		this.description = description;
		this.code = code;
	}


	public Vacation(int id, String description, String code) {
		super();
		this.id = id;
		this.description = description;
		this.code = code;
	}
	

}
