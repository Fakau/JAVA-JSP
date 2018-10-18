package com.inutech.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="NIVEAU")
public class Niveau implements Serializable {

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
    @Column(name="CODE_NIVEAU")
    private String codeNiveau;
    
    
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


	public String getCodeNiveau() {
		return codeNiveau;
	}


	public void setCodeNiveau(String codeNiveau) {
		this.codeNiveau = codeNiveau;
	}


	public Niveau(int id, String description, String codeNiveau) {
		super();
		this.id = id;
		this.description = description;
		this.codeNiveau = codeNiveau;
	}


	public Niveau(String description, String codeNiveau) {
		super();
		this.description = description;
		this.codeNiveau = codeNiveau;
	}
	public Niveau() {
		// TODO Auto-generated constructor stub
	}
	
	

}
