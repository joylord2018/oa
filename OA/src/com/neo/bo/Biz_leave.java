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
 * 请假表
 * @author nibin
 *
 */
@Entity
public class Biz_leave implements Serializable{

	@Id
	@GeneratedValue(generator="leave",strategy=GenerationType.SEQUENCE)
	@SequenceGenerator(name="leave",sequenceName="leave_seq")
	private Integer id;
	//申请人id;
	@ManyToOne
	@JoinColumn(name="epm_id")
	private Employee c_emp;
	
	private Date starttime;
	
	private Date endtime;
	
	private Double leaveday;
	
	private String reason;
	
	private String status;
	
	private String leavetype;
	
	//下一个审核人
	@ManyToOne
	@JoinColumn(name="nemp_id")
	private Employee n_emp;
	
	private String opinion;
	
	private Date create_time;
	
	private Date modif_time;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Employee getC_emp() {
		return c_emp;
	}

	public void setC_emp(Employee c_emp) {
		this.c_emp = c_emp;
	}

	public Date getStarttime() {
		return starttime;
	}

	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}

	public Date getEndtime() {
		return endtime;
	}

	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}

	public Double getLeaveday() {
		return leaveday;
	}

	public void setLeaveday(Double leaveday) {
		this.leaveday = leaveday;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getLeavetype() {
		return leavetype;
	}

	public void setLeavetype(String leavetype) {
		this.leavetype = leavetype;
	}

	public Employee getN_emp() {
		return n_emp;
	}

	public void setN_emp(Employee n_emp) {
		this.n_emp = n_emp;
	}

	public String getOpinion() {
		return opinion;
	}

	public void setOpinion(String opinion) {
		this.opinion = opinion;
	}

	public Date getCreate_time() {
		return create_time;
	}

	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}

	public Date getModif_time() {
		return modif_time;
	}

	public void setModif_time(Date modif_time) {
		this.modif_time = modif_time;
	}

	public Biz_leave(Integer id, Employee c_emp, Date starttime, Date endtime,
			Double leaveday, String reason, String status, String leavetype,
			Employee n_emp, String opinion, Date create_time, Date modif_time) {
		super();
		this.id = id;
		this.c_emp = c_emp;
		this.starttime = starttime;
		this.endtime = endtime;
		this.leaveday = leaveday;
		this.reason = reason;
		this.status = status;
		this.leavetype = leavetype;
		this.n_emp = n_emp;
		this.opinion = opinion;
		this.create_time = create_time;
		this.modif_time = modif_time;
	}

	public Biz_leave() {
		super();
	}

	
}
