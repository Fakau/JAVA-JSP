package com.inutech.db;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class Connecter {
    private static EntityManagerFactory em;
    
	public Connecter() {
		// TODO Auto-generated constructor stub
	}

	public static EntityManagerFactory getEm() {
		if(em==null){
			em = Persistence.createEntityManagerFactory("INUTECH");
		}
		return em;
	}
	

}
