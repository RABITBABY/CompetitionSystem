package com.cs.action.admin;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.IOUtils;

import com.cs.entity.Production;
import com.cs.service.production.ProductionService;
import com.opensymphony.xwork2.ActionSupport;

public class AdminAction extends ActionSupport {

	private ProductionService proService = new ProductionService();
	// 加载的时候的作品列表
	private List<Production> productions;
	/**
	 * 跳转到管理员首页
	 * @return
	 */
	public String toIndex() {
		return SUCCESS;
	}
	
	public String toRecCom(){
		//获取所欲的近期比赛资料
		return SUCCESS;
	}
	public String toRecAwards(){
		//获取所欲的近期比赛资料
		return SUCCESS;
	}
	
	/**
	 * 跳转到作品首页
	 * @return
	 */
	public String toPro() {
		productions = proService.selectAll();
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
		productions=proService.selectAll();
		return SUCCESS;
	}

	
	
	
	

	public List<Production> getProductions() {
		return productions;
	}



	public void setProductions(List<Production> productions) {
		this.productions = productions;
	}


	
	

	
}
