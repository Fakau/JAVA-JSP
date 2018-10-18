package com.inutech.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import com.inutech.Idao.INiveau;
import com.inutech.db.Connecter;
import com.inutech.model.Niveau;

public class NiveauDao implements  INiveau{
	EntityManager em=Connecter.getEm().createEntityManager();

	@Override
	public Niveau addNiveau(Niveau niveau) {
		EntityTransaction Trx=em.getTransaction();
		try{
			Trx.begin();
			 em.persist(niveau);
			Trx.commit();
		}catch(Exception ex){
			Trx.rollback();
			ex.printStackTrace();
		}finally {
			em.close();
		}
		return niveau;
	}

	@Override
	public Niveau updateNiveau(Niveau niveau) {
		EntityTransaction tx=em.getTransaction();
		try{
			tx.begin();
			 em.merge(niveau);
			tx.commit();
		}catch(Exception ex){
			tx.rollback();
			ex.printStackTrace();
		}finally{
			em.close();
		}
		return niveau;
	}

	@Override
	public Niveau removeNiveau(int idNiveau) {
		EntityTransaction tx=em.getTransaction();
		Niveau find=em.find(Niveau.class, idNiveau);
		try{
			tx.begin();
			 em.remove(em.merge(find));
			tx.commit();
		}catch(Exception ex){
			tx.rollback();
			ex.printStackTrace();
		}finally {
			em.close();
		}
		return null;
	}

	@Override
	public Niveau findNiveau(int idNiveau) {
		EntityTransaction tx=em.getTransaction();
		Niveau n=em.find(Niveau.class, idNiveau);
		return n;
	}

	@Override
	public List<Niveau> allNiveau() {
        Query q = em.createQuery("SELECT N FROM Niveau N");
		
		return q.getResultList();
	}

	

}
