package com.cs.action;

import java.util.List;

import com.cs.entity.Article;
import com.cs.entity.Production;
import com.cs.service.index.IndexService;
import com.cs.util.PageUtil;
import com.opensymphony.xwork2.ActionSupport;

public class IndexAction extends ActionSupport {

	private IndexService iService=new IndexService();
	
	private List<Article> comList;
	private List<Article> newList;
	private List<Article> awardList;
	private List<Production> production;
	
	private PageUtil<Article> page;
	private int indexPage;
	private int type;
	
	private int articleId;
	private Article article;
	
	public String indexPage(){
	//	comList=iService.findArticles(1);
		comList=iService.PartOfArticles(1, 10);
		newList=iService.PartOfArticles(2, 4);
		awardList=iService.PartOfArticles(3, 4);
		production=iService.partOfPro(3);
		
		return SUCCESS;
	}
	public String toListPage(){
		
		//comList=iService.PartOfArticles(1, 0);
		
		page=iService.ArticlePage(type, indexPage, 8);
		return SUCCESS;
	}

	//跳转到文章详情
	public String toDetail(){
		article=iService.findArticleByID(articleId);
		return SUCCESS;
	}
	
	public String  PageArticleList(){
		page=iService.ArticlePage(type, indexPage, 8);
		return SUCCESS;
	}
	
	//++++++++++++++getter setter++++++++++++++
	
	public List<Article> getComList() {
		return comList;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getIndexPage() {
		return indexPage;
	}
	public void setIndexPage(int indexPage) {
		this.indexPage = indexPage;
	}
	public PageUtil<Article> getPage() {
		return page;
	}
	public void setPage(PageUtil<Article> page) {
		this.page = page;
	}
	public Article getArticle() {
		return article;
	}
	public void setArticle(Article article) {
		this.article = article;
	}
	public int getArticleId() {
		return articleId;
	}
	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}
	public List<Production> getProduction() {
		return production;
	}



	public void setProduction(List<Production> production) {
		this.production = production;
	}



	public void setComList(List<Article> comList) {
		this.comList = comList;
	}

	public List<Article> getNewList() {
		return newList;
	}

	public void setNewList(List<Article> newList) {
		this.newList = newList;
	}

	public List<Article> getAwardList() {
		return awardList;
	}

	public void setAwardList(List<Article> awardList) {
		this.awardList = awardList;
	}
	
	
	
}
