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
/**
 * 报销审批表
 * @author nibin
 *
 */
@Entity
@Table(name="biz_voucher")
public class Biz_Voucher implements Serializable{
	@Id
	@GeneratedValue(generator="bvoucher",strategy=GenerationType.SEQUENCE)
	@SequenceGenerator(name="bvoucher",sequenceName="N_B_voucher")
	private Integer id;
	//下一个审批人
	@ManyToOne
	@JoinColumn(name="Next_SN")
	private Employee next_emp;
	//创建人id
	@ManyToOne
	@JoinColumn(name="Create_SN")
	private Employee create_emp;
	private Date create_date;
	
	private String event;
	
	private Double total_account;
	
	private String status;
	
	private Date modify_time;
	//外键关系
	//报销结果外键
	@OneToMany(mappedBy="biz_v")
	private Set<Biz_Result> results;
	@OneToMany(mappedBy="bv")
	private Set<Voucher_detail> details;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Employee getNext_emp() {
		return next_emp;
	}
	public void setNext_emp(Employee next_emp) {
		this.next_emp = next_emp;
	}
	public Employee getCreate_emp() {
		return create_emp;
	}
	public void setCreate_emp(Employee create_emp) {
		this.create_emp = create_emp;
	}
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
	public String getEvent() {
		return event;
	}
	public void setEvent(String event) {
		this.event = event;
	}
	public Double getTotal_account() {
		return total_account;
	}
	public void setTotal_account(Double total_account) {
		this.total_account = total_account;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getModify_time() {
		return modify_time;
	}
	public void setModify_time(Date modify_time) {
		this.modify_time = modify_time;
	}
	public Set<Biz_Result> getResults() {
		return results;
	}
	public void setResults(Set<Biz_Result> results) {
		this.results = results;
	}
	public Set<Voucher_detail> getDetails() {
		return details;
	}
	public void setDetails(Set<Voucher_detail> details) {
		this.details = details;
	}
	public Biz_Voucher(Integer id, Employee next_emp, Employee create_emp,
			Date create_date, String event, Double total_account,
			String status, Date modify_time, Set<Biz_Result> results,
			Set<Voucher_detail> details) {
		super();
		this.id = id;
		this.next_emp = next_emp;
		this.create_emp = create_emp;
		this.create_date = create_date;
		this.event = event;
		this.total_account = total_account;
		this.status = status;
		this.modify_time = modify_time;
		this.results = results;
		this.details = details;
	}
	public Biz_Voucher() {
		super();
	}

	
}
