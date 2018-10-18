package com.inutech.Idao;

import java.util.List;

import com.inutech.model.Utilisateur;

public interface IUtilisateur {
	public Utilisateur addUtilisateur(Utilisateur utilisateur);
	public Utilisateur updateUtilisateur(Utilisateur utilisateur);
	public Utilisateur removeUtilisateur(int idUtilisateur);
	public Utilisateur findUtilisateur(int idUtilisateur);
	public List<Utilisateur> allUtilisateur();
}
