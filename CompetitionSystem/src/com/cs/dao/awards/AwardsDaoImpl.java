package com.cs.dao.awards;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.cs.entity.Awards;
import com.cs.entity.Groups;
import com.cs.entity.Student;
import com.cs.util.HibernateUtil;

public class AwardsDaoImpl implements AwardsDao{

	@Override
	public Awards findStudentAwardByGNo(Groups groups) {
		Session session = HibernateUtil.getSession();
		Transaction beginTransaction = session.beginTransaction();
		Query query = session.createQuery("from Awards where groups.groupsNo=?");
		query.setInteger(0, groups.getGroupsNo());
		Awards awards = (Awards) query.uniqueResult();
		return awards;
	}

	@Override
	public List<Awards> allAwards() {
		Session session = HibernateUtil.getSession();
		Transaction tr = session.beginTransaction();
		List<Awards> awards=session.createQuery("from Awards").list();
		for (Awards awards2 : awards) {
			System.out.println(awards);
		}
		tr.commit();
		return awards;
	}

	@Override
	public List<Awards> findAwardByComId(Integer comId) {
		Session session = HibernateUtil.getSession();
		Transaction tr = session.beginTransaction();
		Query query = session.createQuery("from Awards where competition.comId=?");
		query.setInteger(0,comId);
		List<Awards> awards=query.list();
		
		tr.commit();
		return awards;
	}

	
	

}
