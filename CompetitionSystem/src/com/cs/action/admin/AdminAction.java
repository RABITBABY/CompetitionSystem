package com.cs.action.admin;

import java.util.List;

import com.cs.entity.Awards;
import com.cs.entity.Production;
import com.cs.entity.Project;
import com.cs.service.admin.AdminService;
import com.opensymphony.xwork2.ActionSupport;

public class AdminAction extends ActionSupport {

	//private ProductionService proService = new ProductionService();
	//private ProjectService projectService=new ProjectService();
	
	private AdminService adminService =new AdminService();
	// 加载的时候的作品列表
	private List<Production> productions;
	
	//加载时竞赛项目列表
	private List<Project> projects;
	//加载时竞赛项目列表
	private List<Awards> awards;
	/**
	 * 跳转到管理员首页
	 * @return
	 */
	public String toIndex() {
		return SUCCESS;
	}
	
	public String toRecCom(){
		//获取所欲的近期比赛资料
		projects=adminService.AllProject();
		return SUCCESS;
	}
	public String toRecAwards(){
		//获取所欲的近期比赛资料
		awards=adminService.AllAwards();
		return SUCCESS;
	}
	
	/**
	 * 跳转到作品首页
	 * @return
	 */
	public String toPro() {
		productions = adminService.allPro();
		return SUCCESS;
	}
	/***
	 * 跳转到发布获奖
	 * @return
	 */
	public String toAwards() {
		return SUCCESS;
	}
	/***
	 * 跳转到发布动态 
	 * @return
	 */
	public String toNew() {
		return SUCCESS;
	}
	/**
	 * 跳转到竞赛首页
	 * @return
	 */
	public String toCom() {
	
		return SUCCESS;
	}
	
	
	/**
	 * 查询全部的作品
	 * @return
	 */
	public String searchAll(){
		productions=adminService.allPro();
		return SUCCESS;
	}

	
	
	
	

	public List<Production> getProductions() {
		return productions;
	}



	public void setProductions(List<Production> productions) {
		this.productions = productions;
	}

	public List<Project> getProjects() {
		return projects;
	}

	public void setProjects(List<Project> projects) {
		this.projects = projects;
	}

	public List<Awards> getAwards() {
		return awards;
	}

	public void setAwards(List<Awards> awards) {
		this.awards = awards;
	}


	
	

	
}
