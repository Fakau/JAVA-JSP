package com.inutech.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="TYPE_ACADEMIQUE")
public class TypeAcademique implements Serializable{
 
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
    @Column(name="CODE_TYPE_ACADEMIQUE")
	private String codeTypeAcademique;
    
    
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


	public String getCodeTypeAcademique() {
		return codeTypeAcademique;
	}


	public void setCodeTypeAcademique(String codeTypeAcademique) {
		this.codeTypeAcademique = codeTypeAcademique;
	}


	public TypeAcademique() {
		// TODO Auto-generated constructor stub
	}


	public TypeAcademique(String description, String codeTypeAcademique) {
		super();
		this.description = description;
		this.codeTypeAcademique = codeTypeAcademique;
	}


	public TypeAcademique(int id, String description, String codeTypeAcademique) {
		super();
		this.id = id;
		this.description = description;
		this.codeTypeAcademique = codeTypeAcademique;
	}
	

}
