package com.cs.action.auditor;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.cs.entity.Competition;
import com.cs.entity.Department;
import com.cs.entity.Teacher;
import com.cs.service.auditor.AuditorService;
import com.opensymphony.xwork2.ActionSupport;

public class AuditorAction extends ActionSupport implements RequestAware,SessionAware{

	private Map<String, Object> request;
	private Map<String, Object> session;
	private AuditorService auditorService=new AuditorService();
	private Integer comId;
	private Integer status;
	private String opinion;//系主任意见
	/**
	 * 审批人员首页:系主任
	 * @return
	 */
	public String toAuditorIndex(){
		Teacher teacher=new Teacher();
		Department department=new Department();
		department.setDepartmentId(1);
		teacher.setDepartment(department);//某个系
		teacher.setExaminer(1);//是审批人员
		//登录之后，获取session。再对查看页面进行设置，。如果是系主任，那么跳转...
		session.put("user", teacher);
		
		List<Competition> comList = auditorService.getCompetitionsByDeptId(teacher.getDepartment().getDepartmentId());
		for (Competition competition : comList) {
			System.out.println("---------------");
			System.out.println(competition.getComName());
		}
		request.put("comList", comList);
		return SUCCESS;
	}
	/**
	 * 查看历史申报
	 * @return
	 */
    public String toHistory(){
		Teacher teacher=new Teacher();
		Department department=new Department();
		department.setDepartmentId(1);
		teacher.setDepartment(department);
		
		List<Competition> passComList = auditorService.getPassCompetitionsByDeptId(teacher.getDepartment().getDepartmentId());
		request.put("passComList", passComList);
		return SUCCESS;
	}
    /**
     * 获取申报表
     * @return
     */
	public String toCompetition(){
		
		Competition competition = auditorService.getCompetitionsById(comId);
		request.put("competition", competition);
		return SUCCESS;
	}
	
	 /**
     * 系主任审批
     * @return
     */
	public String doAudit(){
		System.out.println("--------------"+status);
		System.out.println(opinion);
		Competition competition=auditorService.getCompetitionsById(comId);
		if (opinion.equals("")) {
			competition.setUopinion("同意");
		}else{
			competition.setUopinion(opinion);
		}		
		//登录后写签名，以及日期。
		competition.setStatus(status);
		Boolean doAudit = auditorService.doAudit(competition);
		if (!doAudit) {
			return ERROR;
		}
		return SUCCESS;
	}
	
	
	@Override
	public void setRequest(Map<String, Object> request) {
		// TODO Auto-generated method stub
		this.request=request;
	}
	
	public Integer getComId() {
		return comId;
	}
	
	public void setComId(Integer comId) {
		this.comId = comId;
	}
	
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	
	public String getOpinion() {
		return opinion;
	}
	public void setOpinion(String opinion) {
		this.opinion = opinion;
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
	}
}
