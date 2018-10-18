package com.inutech.Idao;

import java.util.List;

import com.inutech.model.TypeAcademique;

public interface ITypeAcademique {

	public TypeAcademique addTypeAcademique(TypeAcademique typeAcademique);
	public TypeAcademique updateTypeAcademique(TypeAcademique typeAcademique);
	public TypeAcademique removeTypeAcademique(int idTypeAcademique);
	public TypeAcademique findTypeAcademique(int idTypeAcademique);
	public List<TypeAcademique> allTypeAcademique();
}
