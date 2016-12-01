package com.cs.dao.article;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.cs.entity.Article;
import com.cs.util.HibernateUtil;

public class ArticleDaoImpl implements ArticleDao {

	@Override
	public List<Article> allArticles(int type) {
		Session session=HibernateUtil.getSession();
		Transaction tr=session.beginTransaction();
		Query q=session.createQuery("from Article where articleType=:type");
		q.setParameter("type",type);
		List<Article> list=q.list();
		
		tr.commit();
		
		return list;
	}

	@Override
	public int PubArticle(Article article) {
		Session session=HibernateUtil.getSession();
		Transaction tr=session.beginTransaction();
		int id=(Integer) session.save(article);
		tr.commit();
		return id;
	}

	@Override
	public void delectArticle(int id) {
		Session session=HibernateUtil.getSession();
		Transaction tr=session.beginTransaction();
		session.delete(session.get(Article.class, id));
		tr.commit();
	}

	@Override
	public Article getArticleById(int id) {
		Session session=HibernateUtil.getSession();
		Transaction tr=session.beginTransaction();
		Article article=(Article)session.get(Article.class,id);
		tr.commit();
		return article;
	}
	
}
