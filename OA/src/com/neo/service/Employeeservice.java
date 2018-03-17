package com.neo.service;

import com.neo.dto.Employeedto;

public interface Employeeservice {

	//µÇÂ½
	public Employeedto findbyNameAndPassword(String name,String password);
}
