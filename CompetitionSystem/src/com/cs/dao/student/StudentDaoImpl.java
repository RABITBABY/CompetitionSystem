package com.cs.dao.student;

import java.util.List;
import java.util.Set;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.cs.entity.GroupsDetail;
import com.cs.entity.Student;
import com.cs.util.HibernateUtil;

public class StudentDaoImpl implements StudentDao{

	@Override
	public Student findStudentByNo(Student student) {
		Session session = HibernateUtil.getSession();
		Transaction beginTransaction = session.beginTransaction();
		Query query = session.createQuery("from Student where studentNo=? and password=?");
		query.setInteger(0, student.getStudentNo());
		query.setString(1, student.getPassword());
		Student stu = (Student) query.uniqueResult();
		return stu;
	}


}
