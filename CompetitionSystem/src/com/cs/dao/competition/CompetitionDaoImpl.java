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
	public List<Competition> findCompetitionsByDeptId(Integer deptId) {
		Session session = HibernateUtil.getSession();
		Transaction tx = session.beginTransaction();
		Query query = session.createQuery("from Competition where department.departmentId=?");
		List<Competition> list = query.list();
		return list;
	}

   
}
