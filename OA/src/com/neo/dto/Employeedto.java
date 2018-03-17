package com.neo.dto;

public class Employeedto {

	private Integer id;
	
	private String name;
	
	private String password;
	
	private String status;
	
	private Integer d_id;
	
	private Integer p_id;

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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Integer getD_id() {
		return d_id;
	}

	public void setD_id(Integer d_id) {
		this.d_id = d_id;
	}

	public Integer getP_id() {
		return p_id;
	}

	public void setP_id(Integer p_id) {
		this.p_id = p_id;
	}

	public Employeedto(Integer id, String name, String password, String status,
			Integer d_id, Integer p_id) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.status = status;
		this.d_id = d_id;
		this.p_id = p_id;
	}

	public Employeedto() {
		super();
	}
	
}
