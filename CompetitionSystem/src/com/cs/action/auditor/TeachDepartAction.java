package com.cs.action.auditor;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.cs.entity.Competition;
import com.cs.entity.Department;
import com.cs.entity.Teacher;
import com.cs.service.auditor.AuditorService;
import com.opensymphony.xwork2.ActionSupport;

public class TeachDepartAction extends ActionSupport implements RequestAware{

	private Map<String, Object> request;
	private AuditorService auditorService=new AuditorService();
	private Integer comId;
	private Integer status;
	private String opinion;//教学处意见
	/**
	 * 教学处审批人员首页:
	 * 查找所有
	 * @return
	 */
	public String toTeachDepartIndex(){
		Teacher teacher=new Teacher();
		Department department=new Department();
		department.setDepartmentId(1);
		teacher.setDepartment(department);
		
		List<Competition> comList = auditorService.getCompetitions();
		request.put("comList", comList);
		return SUCCESS;
	}
	/**
	 * 查看历史申报list
	 * @return
	 */
    public String toHistory(){		
		List<Competition> passComList = auditorService.getPassCompetitions();
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
     * 教学处审批
     * @return
     */
	public String doAudit(){
		Competition competition=auditorService.getCompetitionsById(comId);
		if (opinion.equals("")) {
			competition.setUopinion("同意");
		}else{
			competition.setTdopinion(opinion);
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
}
