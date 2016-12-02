package com.cs.dao.project;

import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.cs.entity.Project;
import com.cs.util.HibernateUtil;

public class ProjectDaoImpl implements ProjectDao{

	@Override
	public List<Project> findAll() {
		
		Session session=HibernateUtil.getSession();
		Transaction tr = session.beginTransaction();
		List<Project> projects=session.createQuery("from Project").list();
		tr.commit();
		return projects;
	}

	@Override
	public List<Project> needPub() {
		
		Session session=HibernateUtil.getSession();
		Transaction tr = session.beginTransaction();
		List<Project> projects=session.createQuery("from Project where isPublish = 0").list();
		tr.commit();
		return projects;
	}

	@Override
	public void pubChange(int comId,int isPub) {
		
		Session session=HibernateUtil.getSession();
		Transaction tr = session.beginTransaction();
		
		Project p=(Project) session.get(Project.class, comId);
		
		p.setIsPublish(isPub);
		
		session.update(p);
		
		tr.commit();
	}

	/**
	 * 获取近期可以报名的竞赛
	 */
	@Override
	public List<Project> SignableProject(String level,String isPub) {
		
		Session session=HibernateUtil.getSession();
		Transaction tr = session.beginTransaction();
		StringBuffer hql=new StringBuffer("from Project p where p.applyEndDate >  ? ");
		
		if(!level.isEmpty()){
			hql.append(" and p.level.levelId= "+level);
		}else if(!isPub.isEmpty()){
			hql.append(" and p.isPublish= "+isPub);
		} 
		Query q=session.createQuery(hql.toString());
		Date date=new Date();
		q.setParameter(0, date);
		List<Project> projects=q.list();
		tr.commit();
		return projects;
	}
   
}
