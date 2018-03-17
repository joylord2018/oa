package com.neo.action;

import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.neo.bo.Employee;
import com.neo.dto.Employeedto;
import com.neo.service.Employeeservice;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.org.apache.regexp.internal.recompile;
@Controller
@Scope(value="prototype")
@Namespace("/")
@ParentPackage("login")
public class EmployeeAction extends ActionSupport{
	@Autowired
	private Employeeservice es;
	private String name;
	private String password;
	private Map<String,Object> map=new HashMap<String, Object>();
	//spring管理使用
	public Employeeservice getEs() {
		return es;
	}
	public void setEs(Employeeservice es) {
		this.es = es;
	}
	//sturts2分装类型使用
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	//json传递使用
	public Map<String, Object> getMap() {
		return map;
	}
	public void setMap(Map<String, Object> map) {
		this.map = map;
	}
	//登陆
	@Action(value="login",
			results={@Result(name="success",type="json",params={"root","map"})}
			)
	public String login(){
		Employeedto emp=es.findbyNameAndPassword(name, password);
		if(emp==null){
			map.put("msg","error");
		}else{
			map.put("msg","success");
			ActionContext.getContext().getSession().put("user",emp);
		}
		return SUCCESS;
	}
}
