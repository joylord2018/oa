package com.neo.bo;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
@Entity
@Table(name="N_poaition")
public class Position implements Serializable{
	@Id
	@GeneratedValue(generator="position",strategy=GenerationType.SEQUENCE)
	@SequenceGenerator(name="position",sequenceName="N_posseq")
	private Integer id;
	private String name_cn;
	private String name_en;
	@OneToMany(mappedBy="position")
	private Set<Employee> employees;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName_cn() {
		return name_cn;
	}
	public void setName_cn(String name_cn) {
		this.name_cn = name_cn;
	}
	public String getName_en() {
		return name_en;
	}
	public void setName_en(String name_en) {
		this.name_en = name_en;
	}
	public Set<Employee> getEmployees() {
		return employees;
	}
	public void setEmployees(Set<Employee> employees) {
		this.employees = employees;
	}
	public Position(Integer id, String name_cn, String name_en,
			Set<Employee> employees) {
		super();
		this.id = id;
		this.name_cn = name_cn;
		this.name_en = name_en;
		this.employees = employees;
	}
	public Position() {
		super();
	}
	
}
