package com.cs.service.index;

import java.util.List;

import com.cs.dao.article.ArticleDaoImpl;
import com.cs.dao.production.ProductionDaoImpl;
import com.cs.dao.project.ProjectDaoImpl;
import com.cs.entity.Article;
import com.cs.entity.Production;
import com.cs.util.PageUtil;

public class IndexService {
	ArticleDaoImpl articleImpl=new ArticleDaoImpl();
	ProductionDaoImpl proImpl= new ProductionDaoImpl();
	public List<Article> findArticles(int type){
		return articleImpl.allArticles(type);
	}
	
	public List<Article> PartOfArticles(int type,int count){
		return articleImpl.partOfArticles(type, count);
	}
	
	
	//返回作品，限定数量
	public List<Production> partOfPro(int acount){
		return proImpl.recProduction(acount);
	}
	
	//根据ID找到文章
	public Article findArticleByID(int articleId){
		return articleImpl.getArticleById(articleId);
	}
	
	//获取分页的PageUtil对象
	public PageUtil<Article> ArticlePage(int type,int index,int acount){
		return articleImpl.Articlepage(type, index, acount);
	}
}
