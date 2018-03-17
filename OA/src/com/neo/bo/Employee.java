package com.neo.bo;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
@Entity
@Table(name="N_employee")
public class Employee implements Serializable{
	@Id
	@GeneratedValue(generator="empseq",strategy=GenerationType.SEQUENCE)
	@SequenceGenerator(name="empseq",sequenceName="N_empseq")
	private Integer sn;
	//职位外键
	@ManyToOne
	@JoinColumn(name="p_id")
	private Position position;
	//部门外键
	@ManyToOne
	@JoinColumn(name="d_id")
	private Department department;
	//员工姓名
	private String name;
	//密码
	private String password;
	//状态
	private String status;
	//外键关联关系
	//报销单下一个审批人外键
	@OneToMany(mappedBy="next_emp")
	private Set<Biz_Voucher> b_vouchers;
	//审批表报销单穿件人
	@OneToMany(mappedBy="create_emp")
	private Set<Biz_Voucher> c_vouchers;
	//报销单审核结果表审核人外键
	@OneToMany(mappedBy="check_emp")
	private Set<Biz_Result> results;
	//请假单创建人外键
	@OneToMany(mappedBy="c_emp")
	private Set<Biz_leave> leaves;
	//请假单下一个审核人外键
	@OneToMany(mappedBy="n_emp")
	private Set<Biz_leave> n_leaves;
	public Integer getSn() {
		return sn;
	}
	public void setSn(Integer sn) {
		this.sn = sn;
	}
	public Position getPosition() {
		return position;
	}
	public void setPosition(Position position) {
		this.position = position;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
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
	public Set<Biz_Voucher> getB_vouchers() {
		return b_vouchers;
	}
	public void setB_vouchers(Set<Biz_Voucher> b_vouchers) {
		this.b_vouchers = b_vouchers;
	}
	public Set<Biz_Voucher> getC_vouchers() {
		return c_vouchers;
	}
	public void setC_vouchers(Set<Biz_Voucher> c_vouchers) {
		this.c_vouchers = c_vouchers;
	}
	public Set<Biz_Result> getResults() {
		return results;
	}
	public void setResults(Set<Biz_Result> results) {
		this.results = results;
	}
	public Set<Biz_leave> getLeaves() {
		return leaves;
	}
	public void setLeaves(Set<Biz_leave> leaves) {
		this.leaves = leaves;
	}
	public Set<Biz_leave> getN_leaves() {
		return n_leaves;
	}
	public void setN_leaves(Set<Biz_leave> n_leaves) {
		this.n_leaves = n_leaves;
	}
	public Employee(Integer sn, Position position, Department department,
			String name, String password, String status,
			Set<Biz_Voucher> b_vouchers, Set<Biz_Voucher> c_vouchers,
			Set<Biz_Result> results, Set<Biz_leave> leaves,
			Set<Biz_leave> n_leaves) {
		super();
		this.sn = sn;
		this.position = position;
		this.department = department;
		this.name = name;
		this.password = password;
		this.status = status;
		this.b_vouchers = b_vouchers;
		this.c_vouchers = c_vouchers;
		this.results = results;
		this.leaves = leaves;
		this.n_leaves = n_leaves;
	}
	public Employee() {
		super();
	}
	
}
