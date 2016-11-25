package com.cs.dao.competition;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.cs.entity.Awards;
import com.cs.entity.Competition;
import com.cs.entity.Groups;
import com.cs.util.HibernateUtil;

public class CompetitionDaoImpl implements CompetitionDao{

	@Override
	public Competition findComByGNo(Groups groups) {
		Session session = HibernateUtil.getSession();
		Transaction beginTransaction = session.beginTransaction();
		Query query = session.createQuery("from Competition where comId=?");
		query.setInteger(0, groups.getCompetition().getComId());
		Competition competition = (Competition) query.uniqueResult();
		return competition;
	}
   
}
