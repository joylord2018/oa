package com.neo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neo.dao.Employeedao;
import com.neo.dto.Employeedto;
import com.neo.service.Employeeservice;

@Service
public class Employeeserviceimpl implements Employeeservice{
	@Autowired
	private Employeedao edao;
	
	
	public Employeedao getEdao() {
		return edao;
	}


	public void setEdao(Employeedao edao) {
		this.edao = edao;
	}


	//开始业务
	public Employeedto findbyNameAndPassword(String name, String password) {
		// TODO Auto-generated method stub
		return edao.findbyNameAndPassword(name, password);
	}

}
