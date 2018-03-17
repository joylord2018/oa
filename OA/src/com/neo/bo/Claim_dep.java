package com.neo.bo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;

/**
 * 部门月份报销统计
 * @author nibin
 *
 */
@Entity
public class Claim_dep {
	@Id
	@GeneratedValue(generator="c_dep",strategy=GenerationType.SEQUENCE)
	@SequenceGenerator(name="c_dep",sequenceName="c_dep_seq")
	private Integer id;
	//金额统计
	private Double total_count;
	//年份
	private Integer year;
	//月份
	private Integer month;
	//部门外键
	@ManyToOne
	@JoinColumn(name="dep_id")
	private Department dep;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Double getTotal_count() {
		return total_count;
	}
	public void setTotal_count(Double total_count) {
		this.total_count = total_count;
	}
	public Integer getYear() {
		return year;
	}
	public void setYear(Integer year) {
		this.year = year;
	}
	public Integer getMonth() {
		return month;
	}
	public void setMonth(Integer month) {
		this.month = month;
	}
	public Department getDep() {
		return dep;
	}
	public void setDep(Department dep) {
		this.dep = dep;
	}
	public Claim_dep(Integer id, Double total_count, Integer year,
			Integer month, Department dep) {
		super();
		this.id = id;
		this.total_count = total_count;
		this.year = year;
		this.month = month;
		this.dep = dep;
	}
	public Claim_dep() {
		super();
	}
	
}
