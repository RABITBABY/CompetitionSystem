package com.cs.dao.article;

import java.util.List;

import com.cs.entity.Article;
import com.cs.util.PageUtil;

public interface ArticleDao {
	
	public List<Article> allArticles(int type);
	public List<Article> partOfArticles(int type,int count);
	public int PubArticle(Article article);
	public void delectArticle(int id);
	public  Article getArticleById(int id);
	public void updateArticle(Article article);
	
	public PageUtil<Article> Articlepage(int type,int index,int acount);

}
