package com.inutech.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import com.inutech.Idao.IEdutiant;
import com.inutech.db.Connecter;
import com.inutech.model.AnneeAcademique;
import com.inutech.model.Etudiant;
import com.inutech.model.Niveau;
import com.inutech.model.Option;
import com.inutech.model.TypeAcademique;
import com.inutech.model.Vacation;

public class EtudiantDao implements IEdutiant{
    EntityManager em=Connecter.getEm().createEntityManager();
	@Override
	public Etudiant addEdutiant(Etudiant etudiant, int idOption, int idNiveau, int idVacation, int idTypeAcademique, int idAnneeAcademique) {
		EntityTransaction trx = em.getTransaction();
		Option op=em.find(Option.class, idOption);
		Niveau niv=em.find(Niveau.class, idNiveau);
		Vacation vac=em.find(Vacation.class, idVacation);
		TypeAcademique typ=em.find(TypeAcademique.class, idTypeAcademique);
		AnneeAcademique an=em.find(AnneeAcademique.class, idAnneeAcademique);
			etudiant.setOption(op);
			etudiant.setNiveau(niv);
			etudiant.setTypeAcademique(typ);
			etudiant.setAnneeAcademique(an);
			etudiant.setVacation(vac);
		try{
			trx.begin();
			 em.persist(etudiant);
			trx.commit();
		}catch(Exception ex){
			trx.rollback();
			ex.printStackTrace();
		}finally{
			em.close();
		}
		return etudiant;
	}

	@Override
	public Etudiant updateEdutiant(Etudiant etudiant, int idOption, int idNiveau, int idVacation,
			int idTypeAcademique, int idAnneeAcademique) {
		EntityTransaction trx = em.getTransaction();
		Option op=em.find(Option.class, idOption);
		Niveau niv=em.find(Niveau.class, idNiveau);
		Vacation vac=em.find(Vacation.class, idVacation);
		TypeAcademique typ=em.find(TypeAcademique.class, idTypeAcademique);
		AnneeAcademique an=em.find(AnneeAcademique.class, idAnneeAcademique);
			etudiant.setOption(op);
			etudiant.setNiveau(niv);
			etudiant.setTypeAcademique(typ);
			etudiant.setAnneeAcademique(an);
			etudiant.setVacation(vac);
		try{
			trx.begin();
			 em.merge(etudiant);
			trx.commit();
		}catch(Exception ex){
			trx.rollback();
			ex.printStackTrace();
		}finally{
			em.close();
		}
		return etudiant;
	}

	@Override
	public Etudiant removeEdutiant(int idEdutiant) {
		EntityTransaction trx = em.getTransaction();
		Etudiant etu=em.find(Etudiant.class, idEdutiant);
		try{
			trx.begin();
			 em.remove(em.merge(etu));
			trx.commit();
		}catch(Exception ex){
			trx.rollback();
			ex.printStackTrace();
		}finally{
			em.close();
		}
		return etu;
	}

	@Override
	public Etudiant findEdutiant(int idEdutiant) {
		Etudiant etu=em.find(Etudiant.class, idEdutiant);
		return etu;
	}

	@Override
	public List<Etudiant> allEdutiant() {
		Query q=em.createQuery("SELECT E FROM Etudiant E");
		return q.getResultList();
	}

	
}
