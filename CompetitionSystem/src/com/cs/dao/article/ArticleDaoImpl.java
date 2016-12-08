package com.cs.dao.article;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.cs.entity.Article;
import com.cs.util.HibernateUtil;
import com.cs.util.PageUtil;

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

	@Override
	public void updateArticle(Article article) {
		Session session=HibernateUtil.getSession();
		Transaction tr=session.beginTransaction();
		System.out.println(article+"DAO\n");
		session.update(article);
		tr.commit();
	}

	/**
	 * 获取部分的文章
	 */
	@Override
	public List<Article> partOfArticles(int type, int count) {
		
		Session session=HibernateUtil.getSession();
		Transaction tr=session.beginTransaction();
		
		System.out.println("hql查询");
		Query q=session.createQuery("from Article where articleType=:type  order by pubDate desc ");
		q.setInteger("type", type);
		if(count>0){
			q.setMaxResults(count);
		}
		List<Article> articles=q.list();
		tr.commit();
		return articles;
	}

	@Override
	public PageUtil<Article> Articlepage(int type, int index, int acount) {
		Session session=HibernateUtil.getSession();
		Transaction tr=session.beginTransaction();
		Query q=session.createQuery("from Article where articleType = :type");
		q.setInteger("type", type);
		int total=q.list().size();//总记录数
		q.setFirstResult((index-1)*acount);//设置当前的开始位置
		q.setMaxResults(acount);//每次拿多少条
		List<Article> articles=q.list();
		//封装page对象
		int pagetotal=(total%acount>0)?(total/acount+1):(total/acount);
		PageUtil<Article> page=new PageUtil<Article>();
		page.setList(articles);
		page.setPageCount(pagetotal);
		page.setPageIndex(index);
		page.setPageSize(acount);
		tr.commit();
		return page;
	}
	
	
	
}
