package com.cs.service.teahcher;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import com.cs.dao.competition.CompetitionDao;
import com.cs.dao.competition.CompetitionDaoImpl;
import com.cs.dao.groups.GroupsDao;
import com.cs.dao.groups.GroupsDaoImpl;
import com.cs.dao.project.ProjectDao;
import com.cs.dao.project.ProjectDaoImpl;
import com.cs.entity.Competition;
import com.cs.entity.Groups;
import com.cs.entity.Project;
import com.cs.entity.Teacher;

public class TeacherService {

	private CompetitionDao cDao = new CompetitionDaoImpl();
	private ProjectDao pDao=new ProjectDaoImpl();
	private GroupsDao groupDao=new GroupsDaoImpl();
	/**
	 * 根据教师id查找申报表
	 */
	public List<Competition> findCompetitionsByTeachId(Integer teacherId) {
		List<Competition> comList = cDao.findCompetitionsByTeachId(teacherId);
		return comList;
	}

	/**
	 * 根据申报表id查找申报表
	 */
	public Competition findCompetitionsById(Integer comId) {
		Competition com = cDao.findCompetitionsById(comId);
		return com;
	}

	/**
	 * 保存申报表的修改
	 */
	public boolean updateCompetition(Competition competition) {
		try {
			System.out.println("service----" + competition);
			cDao.updateCompetitionsById(competition);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			return false;
		}
	}

	/**
	 * 删除申报表
	 */
	public boolean deleteCompetition(Integer comId) {

		Boolean result = cDao.deleteCompetitionsById(comId);
		if (result) {
			return true;
		}
		return false;

	}

	/**
	 * 根据教师id查找通过审核的申报表,并且为队伍指定指导老师；
	 * 管理学生。
	 */
	public List<Competition> findPassCompetitions(Integer teacherId) {
		List<Competition> comList = cDao.findCompetitionsByTeachId(teacherId);
		List<Competition> passList=new ArrayList<Competition>();
		for (Competition com:comList) {
			if (com.getStatus()==2) {
				Set<Groups> groups = com.getGroups();
				for (Groups g : groups) {
					if (g.getTeacher().getTeacherNo()==teacherId) {
						passList.add(com);
					}
				}
				
			}
			
		}
		return passList;
	}
	
	/**
	 * 审核学生，修改状态
	 */
	public Boolean updateGroups(Groups groups){
		groups.setStatus(2);
		Boolean result = groupDao.uodateGroupsStatus(groups);
		return result;
	}
	
	/**
	 * 获取通过的竞赛
	 * 竞赛管理，反馈
	 */
	public List<Project> findProject(Integer teacherId) {
		List<Project> findAll = pDao.findAll();
		List<Project> list=new ArrayList<Project>();
		for (Project project : findAll) {
			Competition comp = cDao.findCompetitionsById(project.getComId());
			if (comp!=null&&comp.getTeacher().getTeacherNo()==teacherId) {
				list.add(project);
			}
		}
		return list;
	}

}
