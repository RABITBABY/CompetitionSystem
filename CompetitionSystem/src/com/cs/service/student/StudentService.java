package com.cs.service.student;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.cs.dao.awards.AwardsDao;
import com.cs.dao.awards.AwardsDaoImpl;
import com.cs.dao.competition.CompetitionDao;
import com.cs.dao.competition.CompetitionDaoImpl;
import com.cs.dao.groups.GroupsDao;
import com.cs.dao.groups.GroupsDaoImpl;
import com.cs.dao.groupsDetail.GroupsDetailDao;
import com.cs.dao.groupsDetail.GroupsDetailDaoImpl;
import com.cs.dao.project.ProjectDao;
import com.cs.dao.project.ProjectDaoImpl;
import com.cs.entity.Awards;
import com.cs.entity.Competition;
import com.cs.entity.Groups;
import com.cs.entity.GroupsDetail;
import com.cs.entity.Project;
import com.cs.entity.Student;


public class StudentService {

	private GroupsDetailDao gDetailDao=new GroupsDetailDaoImpl();
	private AwardsDao awardsDao=new AwardsDaoImpl();
	private CompetitionDao comDao=new CompetitionDaoImpl();
	private ProjectDao proDao=new ProjectDaoImpl();
	private GroupsDao groupsDao=new GroupsDaoImpl();
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
	 * 查询某个学生参加的所有竞赛的详细信息：通过Group关联到project，可以得到报名状态以及比赛详情
	 * @param student
	 * @return
	 */
	public List<Groups> findStudentGroupsProj(Student student) {
		List<GroupsDetail> gDetails = gDetailDao.findGroupsDetailsBySNo(student);
		Groups  group=null;
		List<Groups> groupsList=new ArrayList<Groups>();
		for(GroupsDetail g:gDetails){
			group = groupsDao.findGroupsByGNo(g.getGroups());
			if (group!=null) {			
				groupsList.add(group);
			}
		}
		
		return groupsList;
	}
	
	
	/**
	 * 查询某个学生参加的竞赛的次数
	 * 报名成功
	 * @param student
	 * @return
	 */
	public Integer findSuccessGroupsAccount(Student student) {
		List<GroupsDetail> gDetails = gDetailDao.findGroupsDetailsBySNo(student);
		Groups  group=null;
		List<Groups> groupsList=new ArrayList<Groups>();
		for(GroupsDetail g:gDetails){
			group = groupsDao.findGroupsByGNo(g.getGroups());
			//报名状态（0.正在审核1.审核未通过 2.等待缴费3报名成功 4比赛结束）
			if (group!=null&&group.getStatus()>=3) {			
				groupsList.add(group);
			}
		}
		
		return groupsList.size();
	}
	
}
