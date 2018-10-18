package com.inutech.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import com.inutech.Idao.IAnneeAcademique;
import com.inutech.db.Connecter;
import com.inutech.model.AnneeAcademique;

public class AnneeAcademiqueDao implements IAnneeAcademique{
    private EntityManager em=Connecter.getEm().createEntityManager();
	
	@Override
	public AnneeAcademique addAnneeAcademique(AnneeAcademique anneeAcademique) {
	 EntityTransaction tx=em.getTransaction();
		try{
			tx.begin();
			 em.persist(anneeAcademique);
			 tx.commit();
		 }catch(Exception ex){
				tx.rollback();
				ex.printStackTrace();
		 }finally{
				em.close();
		}
		return anneeAcademique;
	}

	@Override
	public AnneeAcademique updateAnneeAcademique(AnneeAcademique anneeAcademique) {
	  EntityTransaction tx=em.getTransaction();
        try{
			tx.begin();
			 em.merge(anneeAcademique);
			 tx.commit();
		 }catch(Exception ex){
				tx.rollback();
				ex.printStackTrace();
		 }finally{
				em.close();
		}
		return anneeAcademique;
	}

	@Override
	public AnneeAcademique removeAnneeAcademique(int idAnneeAcademique) {
		EntityTransaction tx=em.getTransaction();
		AnneeAcademique find=em.find(AnneeAcademique.class, idAnneeAcademique);
        try{
			tx.begin();
			 em.remove(em.merge(find));
			 tx.commit();
		 }catch(Exception ex){
				tx.rollback();
				ex.printStackTrace();
		 }finally{
				em.close();
		}
		return find;
	}

	@Override
	public AnneeAcademique findAnneeAcademique(int idAnneeAcademique) {
		AnneeAcademique fimd=em.find(AnneeAcademique.class, idAnneeAcademique);
		return fimd;
	}

	@Override
	public List<AnneeAcademique> allAnneeAcademique() {
       Query q = em.createQuery("SELECT A FROM AnneeAcademique A");
		
		return q.getResultList();
	}

	
}
