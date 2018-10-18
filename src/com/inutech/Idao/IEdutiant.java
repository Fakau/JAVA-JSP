package com.inutech.Idao;

import java.util.List;

import com.inutech.model.Etudiant;

public interface IEdutiant {

	public Etudiant addEdutiant(Etudiant etudiant, int idOption, int idNiveau, int idVacation, int idTypeAcademique, int idAnneeAcademique);
	public Etudiant updateEdutiant(Etudiant etudiant, int idOption, int idNiveau, int idVacation, int idTypeAcademique, int idAnneeAcademique);
	public Etudiant removeEdutiant(int idEdutiant);
	public Etudiant findEdutiant(int idEdutiant);
	public List<Etudiant> allEdutiant();
}
