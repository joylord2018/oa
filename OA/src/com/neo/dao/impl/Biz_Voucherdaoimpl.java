package com.neo.dao.impl;

import java.io.Serializable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.neo.bo.Biz_Voucher;
import com.neo.dao.Biz_Voucherdao;
@Repository
public class Biz_Voucherdaoimpl implements Biz_Voucherdao{
	@Autowired
	private HibernateTemplate ht;
	
	public HibernateTemplate getHt() {
		return ht;
	}

	public void setHt(HibernateTemplate ht) {
		this.ht = ht;
	}

	public Integer addClaim(Biz_Voucher bv) {
		// TODO Auto-generated method stub
		Serializable s=ht.save(bv);
		return (Integer)s;
	}

}
