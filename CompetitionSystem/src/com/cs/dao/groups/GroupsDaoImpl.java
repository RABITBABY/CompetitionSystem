package com.cs.dao.groups;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.cs.entity.Groups;
import com.cs.util.HibernateUtil;

public class GroupsDaoImpl implements GroupsDao{

	@Override
	public Groups findGroupsByGNo(Groups groups) {
		Session session = HibernateUtil.getSession();
		Transaction beginTransaction = session.beginTransaction();
		Query query = session.createQuery("from Groups where groupsNo=?");
		query.setInteger(0, groups.getGroupsNo());
		Groups getGroup = (Groups) query.uniqueResult();
		return getGroup;
	}

	@Override
	public Boolean uodateGroups(Groups groups) {
		Session session = HibernateUtil.getSession();
		Transaction beginTransaction = session.beginTransaction();
		try {
			session.update(groups);
			beginTransaction.commit();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			return false;
		}
		
	}

	@Override
	public Boolean uodateGroupsStatus(Groups groups) {
		Session session = HibernateUtil.getSession();
		Transaction beginTransaction = session.beginTransaction();
		Query query = session.createQuery("update Groups set status=? where groupsNo=?");
		query.setInteger(0, groups.getStatus());
		query.setInteger(1, groups.getGroupsNo());
		int executeUpdate = query.executeUpdate();
		beginTransaction.commit();
		if (executeUpdate>0) {
			return true;
		}else {
			return false;
		}
	}

	
}
