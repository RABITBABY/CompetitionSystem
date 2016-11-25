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

	
}
