package com.cs.dao.article;

import java.util.List;

import com.cs.entity.Article;

public interface ArticleDao {
	
	public List<Article> allArticles(int type);
	public int PubArticle(Article article);
	public void delectArticle(int id);
	public  Article getArticleById(int id);

}
