package com.neo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neo.bo.Biz_Voucher;
import com.neo.dao.Biz_Voucherdao;
import com.neo.service.Biz_Voucherservice;
@Service
public class Biz_Voucherserviceimpl implements Biz_Voucherservice{
	@Autowired
	private Biz_Voucherdao bdao;

	public Biz_Voucherdao getBdao() {
		return bdao;
	}

	public void setBdao(Biz_Voucherdao bdao) {
		this.bdao = bdao;
	}

	public Integer addClaim(Biz_Voucher bv) {
		// TODO Auto-generated method stub
		return bdao.addClaim(bv);
	}
	
}
