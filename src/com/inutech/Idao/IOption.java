package com.inutech.Idao;

import java.util.List;

import com.inutech.model.Option;

public interface IOption {
	
	public Option addOption(Option option);
	public Option updateOption(Option option);
	public Option removeOption(int idOPtion);
	public Option findOption(int idOPtion);
	public List<Option> allOption();

}
