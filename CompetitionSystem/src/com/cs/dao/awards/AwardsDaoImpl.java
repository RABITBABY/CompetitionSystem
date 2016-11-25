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

	
	

}
