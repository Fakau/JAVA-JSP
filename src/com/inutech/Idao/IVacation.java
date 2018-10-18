package com.inutech.Idao;

import java.util.List;

import com.inutech.model.Vacation;


public interface IVacation {
 
	public Vacation addVacation(Vacation anneeAcademique);
	public Vacation updateVacation(Vacation anneeAcademique);
	public Vacation removeVacation(int idVacation);
	public Vacation findVacation(int idVacation);
	public List<Vacation> allVacation();
}
