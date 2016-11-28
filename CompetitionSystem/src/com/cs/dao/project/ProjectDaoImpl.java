package com.cs.dao.project;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.cs.entity.Awards;
import com.cs.entity.Competition;
import com.cs.entity.Groups;
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


   
}
