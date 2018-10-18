package com.inutech.Idao;

import java.util.List;

import com.inutech.model.AnneeAcademique;

public interface IAnneeAcademique {
   
	public AnneeAcademique addAnneeAcademique(AnneeAcademique anneeAcademique);
	public AnneeAcademique updateAnneeAcademique(AnneeAcademique anneeAcademique);
	public AnneeAcademique removeAnneeAcademique(int idAnneeAcademique);
	public AnneeAcademique findAnneeAcademique(int idAnneeAcademique);
	public List<AnneeAcademique> allAnneeAcademique();
}
