package com.cs.service.admin;

import java.util.List;

import com.cs.dao.awards.AwardsDaoImpl;
import com.cs.dao.production.ProductionDaoImpl;
import com.cs.dao.project.ProjectDaoImpl;
import com.cs.entity.Awards;
import com.cs.entity.Production;
import com.cs.entity.Project;

public class AdminService {

	private ProductionDaoImpl proImpl = new ProductionDaoImpl();
	private AwardsDaoImpl awardImpl=new AwardsDaoImpl();
	private ProjectDaoImpl projectImpl=new ProjectDaoImpl();

	
	//优秀作品方法
	public List<Production> allPro(){
		return proImpl.selectall();
	}
	
	public int savePro(Production p) {
		return proImpl.savePro(p);
	}
	
	public void delectPro(int id){
		proImpl.delect(id);
	}
	public Production findProById(int id) {
		return proImpl.findById(id);
	}
	
	public void updatePro(Production pro){
		proImpl.update(pro);
	}
	
	//近期比赛
	public List<Project> AllProject(){
		return projectImpl.findAll();
	}
	//近期获奖
	public List<Awards> AllAwards(){
		return awardImpl.allAwards();
	}
	
	
}
