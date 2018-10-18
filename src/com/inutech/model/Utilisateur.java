package com.inutech.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="UTILISATEUR")
public class Utilisateur implements Serializable{

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
    @Column(name="LOGIN")
	private String login;
    @Column(name="PASSWORD")
	private String password;
    
    
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


	public String getLogin() {
		return login;
	}


	public void setLogin(String login) {
		this.login = login;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public Utilisateur() {
		// TODO Auto-generated constructor stub
	}


	public Utilisateur(String nom, String prenom, String login, String password) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.login = login;
		this.password = password;
	}


	public Utilisateur(int id, String nom, String prenom, String login, String password) {
		super();
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.login = login;
		this.password = password;
	}
	

}
