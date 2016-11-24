package com.cs.test;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.junit.Test;

import com.cs.entity.Awards;
import com.cs.util.HibernateUtil;

public class StudentTest {

	/**
	 * 测试获取学生参加竞赛次数
	 */
	@Test
	public void test1() {
		Session session = HibernateUtil.getSession();
		Transaction beginTransaction = session.beginTransaction();
		Awards awards = (Awards) session.get(Awards.class, 1);
		System.out.println(awards.getName());
	}
}
