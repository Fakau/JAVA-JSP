package com.inutech.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import com.inutech.Idao.IUtilisateur;
import com.inutech.db.Connecter;
import com.inutech.model.Utilisateur;

public class UtilisateurDao implements IUtilisateur {
    EntityManager em=Connecter.getEm().createEntityManager();
    
	@Override
	public Utilisateur addUtilisateur(Utilisateur utilisateur) {
		EntityTransaction trx=em.getTransaction();
		try{
			trx.begin();
			 em.persist(utilisateur);
			trx.commit();
		}catch(Exception ex){
			trx.rollback();
			ex.printStackTrace();
		}finally{
			em.close();
		}
		return utilisateur;
	}

	@Override
	public Utilisateur updateUtilisateur(Utilisateur utilisateur) {
		EntityTransaction trx=em.getTransaction();
		try{
			trx.begin();
			 em.merge(utilisateur);
			trx.commit();
		}catch(Exception ex){
			trx.rollback();
			ex.printStackTrace();
		}finally{
			em.close();
		}
		return utilisateur;
	}

	@Override
	public Utilisateur removeUtilisateur(int idUtilisateur) {
		EntityTransaction trx=em.getTransaction();
		Utilisateur yy=em.find(Utilisateur.class, idUtilisateur);
		try{
			trx.begin();
			 em.remove(em.merge(yy));
			trx.commit();
		}catch(Exception ex){
			trx.rollback();
			ex.printStackTrace();
		}finally{
			em.close();
		}
		return yy;
	}

	@Override
	public Utilisateur findUtilisateur(int idUtilisateur) {
		Utilisateur yy=em.find(Utilisateur.class, idUtilisateur);
		return yy;
	}

	@Override
	public List<Utilisateur> allUtilisateur() {
		Query q= em.createQuery("SELECT U FROM Utilisateur U");
		return q.getResultList();
	}

	

}
