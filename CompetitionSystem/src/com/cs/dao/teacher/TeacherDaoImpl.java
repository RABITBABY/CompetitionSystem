package com.cs.dao.teacher;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.cs.entity.Teacher;
import com.cs.util.HibernateUtil;

public class TeacherDaoImpl implements TeacherDao {

	
	@Override
	public Teacher findTeachByNo(int id) {
		Session session=HibernateUtil.getSession();
		Transaction tr=session.beginTransaction();
		Teacher t=(Teacher) session.get(Teacher.class,id);
		tr.commit();
		return t;
	}

}
