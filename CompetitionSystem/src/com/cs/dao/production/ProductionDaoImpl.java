package com.cs.dao.production;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.cs.entity.Production;
import com.cs.util.HibernateUtil;

public class ProductionDaoImpl extends HibernateUtil implements ProductionDao{

	/**
	 * 添加作品信息，返回插入后的id
	 */
	@Override
	public int savePro(Production p) {
		Session session=getSession();
		Transaction tr=session.beginTransaction();
		int id=(Integer) session.save(p);
		tr.commit();
		return id;
	}

	@Override
	public void delect(int id) {

		Session session=getSession();
		Transaction tr=session.beginTransaction();
		Production p=(Production) session.get(Production.class, id);
		session.delete(p);
		tr.commit();
	}

	@Override
	public List<Production> selectall() {
		Session session=getSession();
		Transaction tr=session.beginTransaction();
		List<Production> list=session.createQuery("from Production").list();
		tr.commit();
		return list;
	}

	@Override
	public Production findById(int id) {
		Session session=getSession();
		Transaction tr=session.beginTransaction();
		Production p =(Production) session.get(Production.class, id);
		tr.commit();
		return p;
	}

	@Override
	public void update(Production pro) {
		Session session=getSession();
		Transaction tr = session.beginTransaction();
		session.update(pro);
		tr.commit();
	}
	
	
	
	
	
	
	
}
