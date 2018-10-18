package com.inutech.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name="ETUDIANT")
public class Etudiant implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	private int id;
	@Column(name="NOM")
	private String nom;
	@Column(name="PRENOM")
	private String prenom;
	@Column(name="CODE")
	private String code;
	@ManyToOne
	@JoinColumn(name="ID_OPTION")
	private Option option;
	@ManyToOne
	@JoinColumn(name="ID_NIVEAU")
	private Niveau niveau;
	@ManyToOne
	@JoinColumn(name="ID_VACATION")
	private Vacation vacation;
	@ManyToOne
	@JoinColumn(name="ID_ANNEE_ACADEMIQUE")
	private AnneeAcademique anneeAcademique;
	@ManyToOne
	@JoinColumn(name="ID_TYPE_ANNEE_ACADEMIQUE")
	private TypeAcademique typeAcademique;
	@Column(name="ANNEE_ACADEMIQUE_DEBUT")
	private String AnneeAcademiqueDebut;
	@Column(name="ANNEE_ACADEMIQUE_COURS")
	private String AnneeAcademiqueCours;
	
	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getNom() {
		return nom;
	}


	public void setNom(String nom) {
		this.nom = nom;
	}


	public String getPrenom() {
		return prenom;
	}


	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}


	public String getCode() {
		return code;
	}


	public void setCode(String code) {
		this.code = code;
	}


	public Option getOption() {
		return option;
	}


	public void setOption(Option option) {
		this.option = option;
	}


	public Niveau getNiveau() {
		return niveau;
	}


	public void setNiveau(Niveau niveau) {
		this.niveau = niveau;
	}


	public AnneeAcademique getAnneeAcademique() {
		return anneeAcademique;
	}


	public void setAnneeAcademique(AnneeAcademique anneeAcademique) {
		this.anneeAcademique = anneeAcademique;
	}


	public TypeAcademique getTypeAcademique() {
		return typeAcademique;
	}


	public void setTypeAcademique(TypeAcademique typeAcademique) {
		this.typeAcademique = typeAcademique;
	}


	public String getAnneeAcademiqueDebut() {
		return AnneeAcademiqueDebut;
	}


	public void setAnneeAcademiqueDebut(String anneeAcademiqueDebut) {
		AnneeAcademiqueDebut = anneeAcademiqueDebut;
	}


	public String getAnneeAcademiqueCours() {
		return AnneeAcademiqueCours;
	}


	public void setAnneeAcademiqueCours(String anneeAcademiqueCours) {
		AnneeAcademiqueCours = anneeAcademiqueCours;
	}
	


	public Vacation getVacation() {
		return vacation;
	}


	public void setVacation(Vacation vacation) {
		this.vacation = vacation;
	}


	public Etudiant() {
		// TODO Auto-generated constructor stub
	}


	public Etudiant(String nom, String prenom, String code, String anneeAcademiqueDebut, String anneeAcademiqueCours) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.code = code;
		this.AnneeAcademiqueDebut = anneeAcademiqueDebut;
		this.AnneeAcademiqueCours = anneeAcademiqueCours;
	}
	


	public Etudiant(int id, String nom, String prenom, String code, String anneeAcademiqueDebut,
			String anneeAcademiqueCours) {
		super();
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.code = code;
		this.AnneeAcademiqueDebut = anneeAcademiqueDebut;
		this.AnneeAcademiqueCours = anneeAcademiqueCours;
	}


	public Etudiant(int id, String nom, String prenom, String code, Option option, Niveau niveau, Vacation vacation,
			AnneeAcademique anneeAcademique, TypeAcademique typeAcademique, String anneeAcademiqueDebut,
			String anneeAcademiqueCours) {
		super();
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.code = code;
		this.option = option;
		this.niveau = niveau;
		this.vacation = vacation;
		this.anneeAcademique = anneeAcademique;
		this.typeAcademique = typeAcademique;
		this.AnneeAcademiqueDebut = anneeAcademiqueDebut;
		this.AnneeAcademiqueCours = anneeAcademiqueCours;
	}


	
    
}
