package com.inutech.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="OPTIONS")
public class Option implements Serializable {
	private static final long serialVersionUID = 1L; 
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	private int id;
	@Column(name="DESCRIPTION")
	private String description;
	@Column(name="CODE_OPTION")
	private String code_option;
	
	
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


	public String getCode_option() {
		return code_option;
	}


	public void setCode_option(String code_option) {
		this.code_option = code_option;
	}
    
	
	public Option(int id, String description, String code_option) {
		super();
		this.id = id;
		this.description = description;
		this.code_option = code_option;
	}


	public Option(String description, String code_option) {
		super();
		this.description = description;
		this.code_option = code_option;
	}


	public Option() {
		// TODO Auto-generated constructor stub
	}

}
