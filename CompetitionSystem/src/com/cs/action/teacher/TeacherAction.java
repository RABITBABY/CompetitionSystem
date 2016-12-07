package com.cs.action.teacher;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.cs.entity.Competition;
import com.cs.service.teahcher.TeacherService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


public class TeacherAction extends ActionSupport implements RequestAware,ModelDriven<Competition>{

	private Map<String, Object> request;
	private TeacherService teacherService=new TeacherService();
	private Competition competition=new Competition();
	/*private Set<GuideTeacher> guideTeachers;*/
	//private List<Teacher> teachers=new ArrayList<Teacher>();
	//private Integer comId;
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
		System.out.println("==========================================================================");
		System.out.println("==========================================================================");
		System.out.println("==========================================================================");
		System.out.println("==========================================================================");
		System.out.println("==========================================================================");
		System.out.println("==========================================================================");
//		Set<GuideTeacher> guideTeachers = competition.getGuideTeachers();
//		for (GuideTeacher guideTeacher : guideTeachers) {
//			System.out.println(guideTeacher.getTeacher().getTeacherName());
//		}
		/*System.out.println(teachers);
		for (Teacher t : teachers) {
			System.out.println(t.getTeacherName()+"------");
		}*/
		
		return SUCCESS;
	}
	
	/**
	 * 指导老师：对申报失败的申报书进行删除
	 * @return
	 */
	public  String  deleteComp() {

		return SUCCESS;
	}
	
	/**
	 * 指导老师：管理报名学生
	 * @return
	 */
	public  String  toManageStudent() {
		return SUCCESS;
	}
	/**
	 * 指导老师：竞赛管理
	 * @return
	 */
	public  String  toManageComp() {
		return SUCCESS;
	}
	@Override
	public void setRequest(Map<String, Object> request) {
		this.request=request;
	}
	@Override
	public Competition getModel() {	
		return competition;
	}
	
/*	public Set<GuideTeacher> getGuideTeachers() {
		return guideTeachers;
	}
	
	public void setGuideTeachers(Set<GuideTeacher> guideTeachers) {
		this.guideTeachers = guideTeachers;
	}*/
	public TeacherService getTeacherService() {
		return teacherService;
	}
	public void setTeacherService(TeacherService teacherService) {
		this.teacherService = teacherService;
	}
	public Competition getCompetition() {
		return competition;
	}
	public void setCompetition(Competition competition) {
		this.competition = competition;
	}
/*	public List<Teacher> getTeachers() {
		return teachers;
	}
	public void setTeachers(List<Teacher> teachers) {
		this.teachers = teachers;
	}*/
	public Map<String, Object> getRequest() {
		return request;
	}
	
   
}
