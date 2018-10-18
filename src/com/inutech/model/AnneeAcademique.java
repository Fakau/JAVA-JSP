package com.inutech.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="ANNEE_ACADEMIQUE")
public class AnneeAcademique implements Serializable{
  private static final long serialVersionUID = 1L;
  
  @Id
  @GeneratedValue(strategy=GenerationType.IDENTITY)
  @Column(name="ID")
  private int id;
  @Column(name="DESCRIPTION")
  private String description;
  @Column(name="CODE_ANNEE_ACADEMIQUE")
  private String codeAnneeAcademique;
  
  
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


public String getCodeAnneeAcademique() {
	return codeAnneeAcademique;
}


public void setCodeAnneeAcademique(String codeAnneeAcademique) {
	this.codeAnneeAcademique = codeAnneeAcademique;
}
    


	public AnneeAcademique(String description, String codeAnneeAcademique) {
	super();
	this.description = description;
	this.codeAnneeAcademique = codeAnneeAcademique;
}


	public AnneeAcademique(int id, String description, String codeAnneeAcademique) {
	super();
	this.id = id;
	this.description = description;
	this.codeAnneeAcademique = codeAnneeAcademique;
}


	public AnneeAcademique() {
		// TODO Auto-generated constructor stub
	}

}
