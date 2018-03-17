package com.neo.bo;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;


@Entity
@Table(name="N_department")
public class Department implements Serializable{
	@Id
	@GeneratedValue(generator="depseq",strategy=GenerationType.SEQUENCE)
	@SequenceGenerator(name="depseq",sequenceName="N_depseq")
	private Integer id;
	//部门名
	private String name;
	//外键employee
	@OneToMany(mappedBy="department")
	private Set<Employee> employees;
	//部门统计外键
	@OneToMany(mappedBy="dep")
	private Set<Claim_dep> claims;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Set<Employee> getEmployees() {
		return employees;
	}
	public void setEmployees(Set<Employee> employees) {
		this.employees = employees;
	}
	public Set<Claim_dep> getClaims() {
		return claims;
	}
	public void setClaims(Set<Claim_dep> claims) {
		this.claims = claims;
	}
	public Department(Integer id, String name, Set<Employee> employees,
			Set<Claim_dep> claims) {
		super();
		this.id = id;
		this.name = name;
		this.employees = employees;
		this.claims = claims;
	}
	public Department() {
		super();
	}

}
