package com.cs.test;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.junit.Test;

import com.cs.dao.awards.AwardsDaoImpl;
import com.cs.dao.groupsDetail.GroupsDetailDaoImpl;
import com.cs.dao.student.StudentDaoImpl;
import com.cs.entity.Awards;
import com.cs.entity.Competition;
import com.cs.entity.Groups;
import com.cs.entity.GroupsDetail;
import com.cs.entity.Project;
import com.cs.entity.Student;
import com.cs.service.student.StudentService;
import com.cs.util.HibernateUtil;

public class StudentTest {
	
	/**
	 * 参加的所有竞赛的次数
	 */
	@Test
	public void test1() {
		Student student=new Student();
		student.setStudentNo(1);
		StudentService stuService=new StudentService();

		//学生参加竞赛次数
		List<Groups> groups=stuService.findStudentGroupsProj(student);
		System.out.println(groups.size());
		for (Groups g : groups) {
			System.out.println(g.getProject().getComName()+"1");
		}
	}
	
	/**
	 * 获奖次数
	 */
	@Test
	public void test2() {
		Student student=new Student();
		student.setStudentNo(1);
		StudentService stuService=new StudentService();

		//学生参加竞赛次数
		List<Awards> awards=stuService.findStudentAwards(student);
		System.out.println(awards.size());
		for (Awards awards2 : awards) {
			System.out.println(awards2.getName()+"9");
		}
	}
}
