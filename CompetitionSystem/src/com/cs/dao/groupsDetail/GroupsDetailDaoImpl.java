package com.cs.dao.groupsDetail;

import java.util.List;
import java.util.Set;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.cs.entity.GroupsDetail;
import com.cs.entity.Student;
import com.cs.util.HibernateUtil;

public class GroupsDetailDaoImpl implements GroupsDetailDao{

	@Override
	public List<GroupsDetail> findGroupsDetailsBySNo(Student student) {
		Session session = HibernateUtil.getSession();
		Transaction beginTransaction = session.beginTransaction();
		Query query = session.createQuery("from GroupsDetail where student.studentNo=?");
		query.setInteger(0, student.getStudentNo());
		List<GroupsDetail> groupsDetails = query.list();
		beginTransaction.commit();
		return groupsDetails;
	}

	@Override
	public List<GroupsDetail> findGroupsDetailByGNo(int GroupsId) {
		Session session = HibernateUtil.getSession();
		Transaction tr = session.beginTransaction();
		Query query = session.createQuery("from GroupsDetail where groups.groupsNo=?");
		query.setInteger(0, GroupsId);
		List<GroupsDetail> groupsDetails = query.list();
		tr.commit();
		return groupsDetails;
	}

}
