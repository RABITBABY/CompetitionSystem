package com.cs.dao.administer;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.cs.entity.Adminster;
import com.cs.entity.Student;
import com.cs.util.HibernateUtil;

public class AdminsterDaoImpl implements AdminsterDao{

	@Override
	public Adminster findAdminById(String no) {
		Session session=HibernateUtil.getSession();
		Transaction tr=session.beginTransaction();
		Adminster a=(Adminster) session.get(Adminster.class,no);
		tr.commit();
		return a;
	}
	

}
