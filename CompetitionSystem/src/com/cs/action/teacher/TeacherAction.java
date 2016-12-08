package com.cs.action.teacher;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.struts2.interceptor.RequestAware;

import com.cs.entity.Awards;
import com.cs.entity.Budget;
import com.cs.entity.Competition;
import com.cs.entity.Groups;
import com.cs.entity.Project;
import com.cs.entity.Teacher;
import com.cs.service.teahcher.TeacherService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


public class TeacherAction extends ActionSupport implements RequestAware{

	private Map<String, Object> request;
	private TeacherService teacherService=new TeacherService();
	private Competition competition;
	private Groups groups;
	private List<Groups> findGroups;
	private List<Awards> awards ;
	/**
	 * 指导老师首页
	 * @return
	 */
	public  String  toTeacherIndex() {
		return SUCCESS;
	}
	/**
	 * 指导老师：申报结果
	 * @return
	 */
	public  String  toTeacherResult() {
		List<Competition> teacherComList = teacherService.findCompetitionsByTeachId(1);
		request.put("teacherComList", teacherComList);	
		return SUCCESS;
	}
	
	/**
	 * 指导老师：跳转到修改页面
	 * @return
	 */
	public  String  toUpdateComp() {
		Competition findComp = teacherService.findCompetitionsById(competition.getComId());
	    request.put("competition", findComp);
		return SUCCESS;
	}
	
	/**
	 * 指导老师：修改申报表操作
	 * @return
	 */
	public  String  updateComp() {

		System.out.println("============================================================================"+competition);
		Set<Budget> budget = competition.getBudget();
		System.out.println(budget.size());
		for (Budget budget2 : budget) {
			System.out.println("==="+budget2.getSubject());
		}
		
		Set<Teacher> guideTeachers = competition.getGuideTeachers();
		System.out.println(guideTeachers.size());
		for (Teacher teacher : guideTeachers) {
			System.out.println(teacher.getTeacherName());
		}
		
		boolean result = teacherService.updateCompetition(competition);
		
		
		if (!result) {
			return  ERROR;
		}
		return SUCCESS;
	}
	
	/**
	 * 指导老师：对申报失败的申报书进行删除
	 * @return
	 */
	public  String  deleteComp() {
		System.out.println("==========================================");
		System.out.println(competition.getComId());
        boolean result = teacherService.deleteCompetition(competition.getComId());
        if (result) {
        	return SUCCESS;
		}
        return ERROR;
	}
	
	/**
	 * 指导老师：查看申报表
	 * @return
	 */
	public  String  toWatchComp() {
		Competition findComp = teacherService.findCompetitionsById(competition.getComId());
	    request.put("competition", findComp);
		return SUCCESS;
	}
	
	/**
	 * 指导老师：管理报名学生
	 * @return
	 */
	public  String  toManageStudent() {
		List<Competition> teacher = teacherService.findPassCompetitions(1);
		/*for (Competition competition : teacher) {
			Set<Groups> groups = competition.getGroups();
			System.out.println("下一组");
			for (Groups groups2 : groups) {
				System.out.println(groups2.getGroupsName()+"++++++++++++");
			}
		}*/
		
		request.put("teacherComList", teacher);	
		return SUCCESS;
	}
	
	/**
	 * 指导老师：审批报名学生，通过
	 * @return
	 */
	public  String  passStudent() {
		Boolean updateGroups = teacherService.updateGroups(groups);
		if (updateGroups) {
			return SUCCESS;
		}
		return ERROR;
	}
	
	/**
	 * 指导老师：竞赛反馈列表
	 * @return
	 */
	public  String  toManageComp() {
		List<Project> findProject = teacherService.findProject(1);
		request.put("projectList", findProject);
		
		/*List<Groups> findGroups = teacherService.findGroups(competition.getComId());
		request.put("findGroups", findGroups);*/
		return SUCCESS;
	}
	
	/**
	 * 指导老师：竞赛反馈操作
	 * @return
	 */
	public  String  compResult() {
	   
		findGroups = teacherService.findGroups(competition.getComId());
		//request.put("findGroups", findGroups);
		return SUCCESS;
	}
	
	/**
	 * 指导老师：竞赛反馈:查看
	 * @return
	 */
	public  String  seeCompResult() {
	    System.out.println("===============================================");
		awards = teacherService.findAwards(competition.getComId());
		
		return SUCCESS;
	}
	
	
	@Override
	public void setRequest(Map<String, Object> request) {
		this.request=request;
	}
	
	public Map<String, Object> getRequest() {
		return request;
	}
	
	public Competition getCompetition() {
		return competition;
	}
	
	public void setCompetition(Competition competition) {
		this.competition = competition;
	}
	
	public Groups getGroups() {
		return groups;
	}
	
	public void setGroups(Groups groups) {
		this.groups = groups;
	}
	public TeacherService getTeacherService() {
		return teacherService;
	}
	public void setTeacherService(TeacherService teacherService) {
		this.teacherService = teacherService;
	}
	public List<Groups> getFindGroups() {
		return findGroups;
	}
	public void setFindGroups(List<Groups> findGroups) {
		this.findGroups = findGroups;
	}
	public List<Awards> getAwards() {
		return awards;
	}
	public void setAwards(List<Awards> awards) {
		this.awards = awards;
	}
   
	
	
}
