package com.inutech.dao;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import com.inutech.Idao.IOption;
import com.inutech.db.Connecter;
import com.inutech.model.Option;

public class OptionDao implements IOption{
	EntityManager em=Connecter.getEm().createEntityManager();
	
	@Override
	public Option addOption(Option option) {
		EntityTransaction trx = em.getTransaction();
		try{
			trx.begin();
			 em.persist(option);
			trx.commit();
		}catch(Exception ex){
			trx.rollback();
			ex.printStackTrace();
		}finally{
			em.close();
		}
		return option;
	}

	@Override
	public Option updateOption(Option option) {
		EntityTransaction trx = em.getTransaction();
		try{
			trx.begin();
			  em.merge(option);
			trx.commit();
		}catch(Exception ex){
			trx.rollback();
			ex.printStackTrace();
		}finally{
			em.close();
		}
		return option;
	}

	@Override
	public Option removeOption(int idOPtion) {
		EntityTransaction trx = em.getTransaction();
		Option find = em.find(Option.class, idOPtion);
		try{
			trx.begin();
			 em.remove(em.merge(find));
			trx.commit();
		}catch(Exception ex){
			trx.rollback();
			ex.printStackTrace();
		}finally{
			em.close();
		}
		return find;
	}

	@Override
	public Option findOption(int idOPtion) {
		Option find = em.find(Option.class, idOPtion);
		return find;
	}

	@Override
	public List<Option> allOption() {
        Query q = em.createQuery("SELECT O FROM Option O");
		
		return q.getResultList();
	}

	

}
