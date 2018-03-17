package com.neo.bo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

@Entity
public class Dictionary {
	@Id
	@GeneratedValue(generator="dict",strategy=GenerationType.SEQUENCE)
	@SequenceGenerator(name="dict",sequenceName="dict_seq")
	private Integer id;
	
	private String d_type;
	
	private Integer d_no;
	
	private String d_status;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getD_type() {
		return d_type;
	}

	public void setD_type(String d_type) {
		this.d_type = d_type;
	}

	public Integer getD_no() {
		return d_no;
	}

	public void setD_no(Integer d_no) {
		this.d_no = d_no;
	}

	public String getD_status() {
		return d_status;
	}

	public void setD_status(String d_status) {
		this.d_status = d_status;
	}

	public Dictionary(Integer id, String d_type, Integer d_no, String d_status) {
		super();
		this.id = id;
		this.d_type = d_type;
		this.d_no = d_no;
		this.d_status = d_status;
	}

	public Dictionary() {
		super();
	}
	
}
