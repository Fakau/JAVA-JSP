package com.inutech.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import com.inutech.Idao.ITypeAcademique;
import com.inutech.db.Connecter;
import com.inutech.model.TypeAcademique;

public class TypeAnneeAcademiqueDao implements ITypeAcademique{
	EntityManager em=Connecter.getEm().createEntityManager();

	@Override
	public TypeAcademique addTypeAcademique(TypeAcademique typeAcademique) {
		EntityTransaction tx=em.getTransaction();
		try{
			tx.begin();
			 em.persist(typeAcademique);
			tx.commit();
		}catch(Exception ex){
			tx.rollback();
			ex.printStackTrace();
		}finally {
			em.close();
		}
		return typeAcademique;
	}

	@Override
	public TypeAcademique updateTypeAcademique(TypeAcademique typeAcademique) {
		EntityTransaction tx=em.getTransaction();
		try{
			tx.begin();
			 em.merge(typeAcademique);
			tx.commit();
		}catch(Exception ex){
			tx.rollback();
			ex.printStackTrace();
		}finally {
			em.close();
		}
		return typeAcademique;
	}

	@Override
	public TypeAcademique removeTypeAcademique(int idTypeAcademique) {
		EntityTransaction tx=em.getTransaction();
		TypeAcademique o=em.find(TypeAcademique.class, idTypeAcademique);
		try{
			tx.begin();
			 em.remove(em.merge(o));
			tx.commit();
		}catch(Exception ex){
			tx.rollback();
			ex.printStackTrace();
		}finally {
			em.close();
		}
		return o;
	}

	@Override
	public TypeAcademique findTypeAcademique(int idTypeAcademique) {
		TypeAcademique o=em.find(TypeAcademique.class, idTypeAcademique);
		return o;
	}

	@Override
	public List<TypeAcademique> allTypeAcademique() {
        Query q = em.createQuery("SELECT T FROM TypeAcademique T");
		
		return q.getResultList();
	}

}
