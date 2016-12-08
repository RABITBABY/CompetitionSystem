package com.cs.action.admin;

import java.util.List;

import com.cs.entity.Article;
import com.cs.entity.Awards;
import com.cs.entity.FileUpload;
import com.cs.entity.Level;
import com.cs.entity.Production;
import com.cs.entity.Project;
import com.cs.service.admin.AdminService;
import com.cs.util.PageUtil;
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
	
	//加载文章时用到的文章列表
	private List<Article> articles;
	
	//加载上传文件页面获取所有文件
	private List<FileUpload> files;
	
	private PageUtil<Article> page;
	
	//文章类型
	private int type;
	private int index=1;
	//竞赛筛选的条件
	private String level;
	private String isPub;
	
	/**
	 * 跳转到管理员首页
	 * @return
	 */
	public String toIndex() {
		return SUCCESS;
	}
	
	//获取所欲的近期比赛资料
	public String toRecCom(){
		projects=adminService.SignableProject("","");
		return SUCCESS;
	}
	/**
	 * 查询符合条件的近期竞赛
	 * @return
	 */
	public String selectCom(){
		System.out.println(level+"--"+isPub);
		projects=adminService.SignableProject(level,isPub);
		for (Project p : projects) {
			System.out.println(p.getLevel().getLevelName()+"-----");
		}
		return SUCCESS;
	}
	//获取所欲的近期比赛资料
	public String toRecAwards(){
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
		page=adminService.articlePage(3, 1, 6);
		return SUCCESS;
	}
	
	/***
	 * 跳转到发布动态 
	 * @return
	 */
	public String toNew() {
		page=adminService.articlePage(2, 1, 6);
		return SUCCESS;
	}
	
	/**
	 * 跳转到竞赛首页
	 * @return
	 */
	public String toCom() {
		if(index>1){
			page=adminService.articlePage(1, index, 6);
		}else{
			page=adminService.articlePage(1, 1, 6);
		}
		
		return SUCCESS;
	}
	
	public String toPageChange(){
		
		System.out.println("type="+type+"---index="+index);
		
		if(index>=1){
			page=adminService.articlePage(type, index, 6);
		}else{
			page=adminService.articlePage(type, 1, 6);
		}
		
		
		if(type==1){
			return "com";
		}else if(type==2){
			return "new";
		}else{
			return "award";
		}
		
	}
	
	/**
	 * 查询全部的作品
	 * @return
	 */
	public String searchAll(){
		productions=adminService.allPro();
		return SUCCESS;
	}

	/**
	 * 跳转到文件上传页面
	 * @return
	 */
	public String fileUpload(){
		//获取所有的文件列表
		files=adminService.allFile();
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
	public List<Article> getArticles() {
		return articles;
	}
	public void setArticles(List<Article> articles) {
		this.articles = articles;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getIsPub() {
		return isPub;
	}
	public void setIsPub(String isPub) {
		this.isPub = isPub;
	}
	public List<FileUpload> getFiles() {
		return files;
	}
	public void setFiles(List<FileUpload> files) {
		this.files = files;
	}
	public PageUtil<Article> getPage() {
		return page;
	}
	public void setPage(PageUtil<Article> page) {
		this.page = page;
	}

	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}
	
}
