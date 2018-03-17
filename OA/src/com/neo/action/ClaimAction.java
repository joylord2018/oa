package com.neo.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.neo.bo.Biz_Voucher;
import com.neo.bo.Voucher_detail;
import com.neo.service.Biz_Voucherservice;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope(value="prototype")
@Namespace("/jsp/claim")
@ParentPackage(value="claim")
public class ClaimAction extends ActionSupport{
	private Map<String,Object> map=new HashMap<String, Object>();
	private Biz_Voucher bv;
	private Biz_Voucherservice bs;
	private List<Voucher_detail> detailList;
	//Spring管理
	public Biz_Voucherservice getBs() {
		return bs;
	}
	public void setBs(Biz_Voucherservice bs) {
		this.bs = bs;
	}
	//struts2分装对象
	public Biz_Voucher getBv() {
		return bv;
	}
	public void setBv(Biz_Voucher bv) {
		this.bv = bv;
	}
	public Map<String, Object> getMap() {
		return map;
	}
	public void setMap(Map<String, Object> map) {
		this.map = map;
	}
	
	public List<Voucher_detail> getDetailList() {
		return detailList;
	}
	public void setDetailList(List<Voucher_detail> detailList) {
		this.detailList = detailList;
	}
	@Action(value="systime",
			results={@Result(name="success",type="json",params={"root","map"})}
			)
	public String systime(){
		Date systime=new Date(System.currentTimeMillis());
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time=sdf.format(systime);
		map.put("time",time);
		return SUCCESS;
	}
	//添加报销单
	@Action(value="addclaim",
			results={@Result(name="success",type="json",params={"root","map"})}
			)
	public String addClaim(){
		System.out.println(bv.getTotal_account());
		return SUCCESS;
	}
}
