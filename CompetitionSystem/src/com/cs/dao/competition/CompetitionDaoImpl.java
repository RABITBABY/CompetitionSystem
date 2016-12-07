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
		query.setInteger(0, deptId);
		List<Competition> list = query.list();
		tx.commit();
		return list;
	}
	

	@Override
	public Competition findCompetitionsById(Integer comId) {
		Session session = HibernateUtil.getSession();
		Transaction tx = session.beginTransaction();
		Competition competition =null;
		try {
			competition= (Competition) session.get(Competition.class, comId);
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
			tx.rollback();
		}
		
		return competition;
	}

	@Override
	public Boolean updateCompetitionsById(Competition competition) {
		Session session = HibernateUtil.getSession();
		Transaction tx = session.beginTransaction();
		try {
			session.update(competition);	
			tx.commit();
			return true;
		} catch (Exception e) {
			tx.rollback();
			return false;
		}
		
		
	}


	@Override
	public List<Competition> findCompetitions() {
		Session session = HibernateUtil.getSession();
		
		Transaction tx = session.beginTransaction();
		
		Query query = session.createQuery("from Competition");
		List<Competition> list = query.list();
		tx.commit();
		return list;
	}


	@Override
	public List<Competition> findCompetitionsByTeachId(Integer teacherId) {
		Session session = HibernateUtil.getSession();
		Transaction tx = session.beginTransaction();
		
		Query query = session.createQuery("from Competition where teacher.teacherNo=?");
		query.setInteger(0, teacherId);
		List<Competition> list = query.list();
		tx.commit();
		return list;
	}

   
}
