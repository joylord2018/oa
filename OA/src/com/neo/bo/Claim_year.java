package com.neo.bo;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;

/**
 * 年度统计
 * @author nibin
 *
 */
@Entity
public class Claim_year implements Serializable{
	@Id
	@GeneratedValue(generator="c_year",strategy=GenerationType.SEQUENCE)
	@SequenceGenerator(name="c_year",sequenceName="c_year_seq")
	private Integer id;
	
	private Double total;
	private Integer year;
	
	private Date modif_time;
	@ManyToOne
	@JoinColumn(name="dep_id")
	private Department dep;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Double getTotal() {
		return total;
	}
	public void setTotal(Double total) {
		this.total = total;
	}
	public Integer getYear() {
		return year;
	}
	public void setYear(Integer year) {
		this.year = year;
	}
	public Date getModif_time() {
		return modif_time;
	}
	public void setModif_time(Date modif_time) {
		this.modif_time = modif_time;
	}
	public Department getDep() {
		return dep;
	}
	public void setDep(Department dep) {
		this.dep = dep;
	}
	public Claim_year(Integer id, Double total, Integer year, Date modif_time,
			Department dep) {
		super();
		this.id = id;
		this.total = total;
		this.year = year;
		this.modif_time = modif_time;
		this.dep = dep;
	}
	public Claim_year() {
		super();
	}
	
}
