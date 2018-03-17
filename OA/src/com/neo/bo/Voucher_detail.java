package com.neo.bo;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 * 报销明细表
 * @author nibin
 *
 */
@Entity
@Table(name="biz_voucher_detail")
public class Voucher_detail implements Serializable{
	@Id
	@GeneratedValue(generator="detail",strategy=GenerationType.SEQUENCE)
	@SequenceGenerator(name="detail",sequenceName="v_detail_seq")
	private Integer id;
	@ManyToOne
	@JoinColumn(name="bcv_id")
	private Biz_Voucher bv;
	//内容
	private String item;
	//小计
	private Double account;
	//理由
	private String des;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Biz_Voucher getBv() {
		return bv;
	}
	public void setBv(Biz_Voucher bv) {
		this.bv = bv;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public Double getAccount() {
		return account;
	}
	public void setAccount(Double account) {
		this.account = account;
	}
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}
	public Voucher_detail(Integer id, Biz_Voucher bv, String item,
			Double account, String des) {
		super();
		this.id = id;
		this.bv = bv;
		this.item = item;
		this.account = account;
		this.des = des;
	}
	public Voucher_detail() {
		super();
	}
	
	
}
