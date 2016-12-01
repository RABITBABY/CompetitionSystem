package com.cs.action.auditor;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.cs.entity.Competition;
import com.cs.entity.Department;
import com.cs.entity.Teacher;
import com.cs.service.auditor.AuditorService;
import com.opensymphony.xwork2.ActionSupport;

public class AuditorAction extends ActionSupport implements RequestAware{

	private Map<String, Object> request;
	private AuditorService auditorService=new AuditorService();
	private Integer comId;
	/**
	 * 审批人员首页
	 * @return
	 */
	public String toAuditorIndex(){
		Teacher teacher=new Teacher();
		Department department=new Department();
		department.setDepartmentId(1);
		teacher.setDepartment(department);
		
		List<Competition> comList = auditorService.getCompetitionsByDeptId(teacher.getDepartment().getDepartmentId());
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
	public String toCompetition(){
		
		Competition competition = auditorService.getCompetitionsById(comId);
		request.put("competition", competition);
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
}
