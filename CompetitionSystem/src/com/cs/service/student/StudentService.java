package com.cs.service.student;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.cs.dao.awards.AwardsDao;
import com.cs.dao.awards.AwardsDaoImpl;
import com.cs.dao.competition.CompetitionDao;
import com.cs.dao.competition.CompetitionDaoImpl;
import com.cs.dao.groupsDetail.GroupsDetailDao;
import com.cs.dao.groupsDetail.GroupsDetailDaoImpl;
import com.cs.entity.Awards;
import com.cs.entity.Competition;
import com.cs.entity.GroupsDetail;
import com.cs.entity.Student;


public class StudentService {

	private GroupsDetailDao gDetailDao=new GroupsDetailDaoImpl();
	private AwardsDao awardsDao=new AwardsDaoImpl();
	private CompetitionDao comDao=new CompetitionDaoImpl();
	/**
	 * 查询某个学生参加竞赛获得的所有奖项
	 * @return
	 */
	public List<Awards> findStudentAwards(Student student) {
		//1.学生根据学号找到对应的组
		List<GroupsDetail> gDetails = gDetailDao.findGroupsDetailsBySNo(student);
		Awards awards=null;
		List<Awards> awList=new ArrayList<Awards>();
		for(GroupsDetail g:gDetails){
			//2.根据组no
			awards= awardsDao.findStudentAwardByGNo(g.getGroups());
			if (awards!=null) {
				awList.add(awards);
			}			
		}
		
		return awList;
	}
	
	/**
	 * 查询某个学生参加的所有竞赛
	 * @param student
	 * @return
	 */
	public List<Competition> findStudentCompetition(Student student) {
		List<GroupsDetail> gDetails = gDetailDao.findGroupsDetailsBySNo(student);
		Competition competition=null;
		List<Competition> comList=new ArrayList<Competition>();
		for(GroupsDetail g:gDetails){
			competition= comDao.findComByGNo(g.getGroups());
			if (competition!=null) {
				
				comList.add(competition);
			}
		}
		
		return comList;
	}
}
