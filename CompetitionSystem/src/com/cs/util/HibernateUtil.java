package com.cs.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	static Configuration  cfg;
	static SessionFactory  sf;
	static{
		 cfg=new Configuration().configure();
		 sf=cfg.buildSessionFactory();
	}
	public static Session getSession(){
	
		Session session=sf.getCurrentSession();
		return session;
	}
}
