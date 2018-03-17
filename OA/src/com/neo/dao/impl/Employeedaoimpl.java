package com.neo.dao.impl;

import java.sql.SQLException;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.neo.dao.Employeedao;
import com.neo.dto.Employeedto;
@Repository("edao")
public class Employeedaoimpl implements Employeedao{
	@Autowired
	private HibernateTemplate ht;
	
	public HibernateTemplate getHt() {
		return ht;
	}

	public void setHt(HibernateTemplate ht) {
		this.ht = ht;
	}
	//业务
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public Employeedto findbyNameAndPassword(final String name,final String password) {
		// TODO Auto-generated method stub
		//利用回掉获取到session
		return ht.execute(new HibernateCallback() {
			
			public Object doInHibernate(Session arg0)
					throws HibernateException, SQLException {
				// TODO Auto-generated method stub
				return arg0.createQuery("select new com.neo.dto.Employeedto(id,name,password,status,e.department.id,e.position.id) from Employee e where e.name=:name and e.password=:password and e.status='1'")
						.setParameter("name",name).setParameter("password",password).uniqueResult();
			}
		});
	}

}
