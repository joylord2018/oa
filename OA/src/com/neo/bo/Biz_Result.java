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
import javax.persistence.Table;
/**
 * 报销单审批结果表
 * @author nibin
 *
 */
@Entity
@Table(name="biz_result")
public class Biz_Result implements Serializable{
	@Id
	@GeneratedValue(generator="result",strategy=GenerationType.SEQUENCE)
	@SequenceGenerator(name="result",sequenceName="res_seq")
	private Integer id;
	//订单外键
	@ManyToOne
	@JoinColumn(name="claim_id")
	private Biz_Voucher biz_v;
	
	private Date check_time;
	//审核人外键
	@ManyToOne
	@JoinColumn(name="check_sn")
	private Employee check_emp;
	//审核结果
	private String result;
	//备注
	private String comm;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Biz_Voucher getBiz_v() {
		return biz_v;
	}
	public void setBiz_v(Biz_Voucher biz_v) {
		this.biz_v = biz_v;
	}
	public Date getCheck_time() {
		return check_time;
	}
	public void setCheck_time(Date check_time) {
		this.check_time = check_time;
	}
	public Employee getCheck_emp() {
		return check_emp;
	}
	public void setCheck_emp(Employee check_emp) {
		this.check_emp = check_emp;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getComm() {
		return comm;
	}
	public void setComm(String comm) {
		this.comm = comm;
	}
}
