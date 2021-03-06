package com.cs.service.admin;

import java.util.List;

import com.cs.dao.article.ArticleDaoImpl;
import com.cs.dao.awards.AwardsDaoImpl;
import com.cs.dao.fileUpload.FileUploadDaoImpl;
import com.cs.dao.production.ProductionDaoImpl;
import com.cs.dao.project.ProjectDaoImpl;
import com.cs.entity.Article;
import com.cs.entity.Awards;
import com.cs.entity.FileUpload;
import com.cs.entity.Production;
import com.cs.entity.Project;
import com.cs.util.PageUtil;

public class AdminService {

	private ProductionDaoImpl proImpl = new ProductionDaoImpl();
	private AwardsDaoImpl awardImpl=new AwardsDaoImpl();
	private ProjectDaoImpl projectImpl=new ProjectDaoImpl();
	private ArticleDaoImpl artiImpl=new ArticleDaoImpl();
	private FileUploadDaoImpl fileImpl=new FileUploadDaoImpl();
	
	//优秀作品方法
	public List<Production> allPro(){
		return proImpl.selectall();
	}
	//保存作品
	public int savePro(Production p) {
		return proImpl.savePro(p);
	}
	//删除作品
	public void delectPro(int id){
		proImpl.delect(id);
	}
	//根据Id找作品
	public Production findProById(int id) {
		return proImpl.findById(id);
	}
	//更新作品
	public void updatePro(Production pro){
		proImpl.update(pro);
	}
	
	//全部比赛
	public List<Project> AllProject(){
		return projectImpl.findAll();
	}
	//近期可报名比赛
	public List<Project> SignableProject(String level,String isPub){
		return projectImpl.SignableProject(level,isPub);
	}
	//近期获奖
	public List<Awards> AllAwards(){
		return awardImpl.allAwards();
	}
	
	//获取近期未发布文章的竞赛
	public List<Project> needPub(){
		return projectImpl.needPub();
	}
	
	
	//获取竞赛征文
	public List<Article> allArticle(int type){
		return artiImpl.allArticles(type);
	}
	
	//添加征文
	public int PubArticle(Article article) {
		int id=artiImpl.PubArticle(article);//发布
		
		if(article.getProject()!=null){
			
			projectImpl.pubChange(article.getProject().getComId(),1);
		}
		return id;
	}
	
	public Article getArticleById(int id) {
		return artiImpl.getArticleById(id);
	}
	
	//删除文章
	public void delectArticle(int id) {
		Article article=artiImpl.getArticleById(id);
		artiImpl.delectArticle(id);
		System.out.println(article);
		if(article.getProject()!=null){
			
			projectImpl.pubChange(article.getProject().getComId(),0);
		}
	}
	//修改文章
	public void updateArticle(Article article){
		artiImpl.updateArticle(article);
		
	}
	
	//查找所有文件
	public List<FileUpload> allFile(){
		return fileImpl.allFile();
	}
	
	
	//上传文件保存进数据库
	public int uploadfile(FileUpload file){
		return fileImpl.uploadFile(file);
	}
	
	//删除上传的文件
	public void deleteFile(int fileid){
		fileImpl.deletcFile(fileid);
	}
	
	//分页文章
	public PageUtil<Article> articlePage(int type,int index,int acount){
		return artiImpl.Articlepage(type, index, acount);
		
	}
}
