package com.neo.util;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.neo.dao.Employeedao;
import com.neo.dto.Employeedto;

public class Test {
public static void main(String[] args) {
	ApplicationContext ctx=new ClassPathXmlApplicationContext("applicationContext.xml");
	/*Employeedao edao=(Employeedao) ctx.getBean("edao");
	Employeedto emp=edao.findbyNameAndPassword("ภ๎ะกฮฐ","123");
	System.out.println(emp);*/
}
}
