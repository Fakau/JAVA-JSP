package com.inutech.Idao;

import java.util.List;

import com.inutech.model.Niveau;

public interface INiveau {

	public Niveau addNiveau(Niveau niveau);
	public Niveau updateNiveau(Niveau niveau);
	public Niveau removeNiveau(int idNiveau);
	public Niveau findNiveau(int idNiveau);
	public List<Niveau> allNiveau();
}
