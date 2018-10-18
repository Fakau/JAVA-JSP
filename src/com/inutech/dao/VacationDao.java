package com.inutech.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import com.inutech.Idao.IVacation;
import com.inutech.db.Connecter;
import com.inutech.model.Vacation;

public class VacationDao implements IVacation {
    EntityManager em=Connecter.getEm().createEntityManager();
    
	@Override
	public Vacation addVacation(Vacation anneeAcademique) {
		EntityTransaction trx = em.getTransaction();
		try{
			trx.begin();
			 em.persist(anneeAcademique);
			trx.commit();
		}catch(Exception ex){
			trx.rollback();
			ex.printStackTrace();
		}finally{
			em.close();
		}
		return anneeAcademique;
	}

	@Override
	public Vacation updateVacation(Vacation anneeAcademique) {
		EntityTransaction trx = em.getTransaction();
		try{
			trx.begin();
			 em.merge(anneeAcademique);
			trx.commit();
		}catch(Exception ex){
			trx.rollback();
			ex.printStackTrace();
		}finally{
			em.close();
		}
		return anneeAcademique;
	}

	@Override
	public Vacation removeVacation(int idVacation) {
		EntityTransaction trx = em.getTransaction();
		Vacation vac=em.find(Vacation.class, idVacation);
		try{
			trx.begin();
			 em.remove(em.merge(vac));
			trx.commit();
		}catch(Exception ex){
			trx.rollback();
			ex.printStackTrace();
		}finally{
			em.close();
		}
		return vac;
	}

	@Override
	public Vacation findVacation(int idVacation) {
		Vacation vac=em.find(Vacation.class, idVacation);
		return vac;
	}

	@Override
	public List<Vacation> allVacation() {
		Query q=em.createQuery("SELECT V FROM Vacation V");
		return q.getResultList();
	}


}
