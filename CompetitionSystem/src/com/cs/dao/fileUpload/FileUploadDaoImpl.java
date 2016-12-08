package com.cs.dao.fileUpload;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.cs.entity.FileUpload;
import com.cs.util.HibernateUtil;

public class FileUploadDaoImpl implements FileUploadDao {

	@Override
	public List<FileUpload> allFile() {
		Session session=HibernateUtil.getSession();
		Transaction tr=session.beginTransaction();
		List<FileUpload> files=session.createQuery("from FileUpload").list();
		tr.commit();
		return files;
	}

	@Override
	public int uploadFile(FileUpload file) {
		Session session=HibernateUtil.getSession();
		Transaction tr=session.beginTransaction();
		int id=(Integer) session.save(file);
		tr.commit();
		return id;
	}

	@Override
	public void deletcFile(int fileid) {
		Session session=HibernateUtil.getSession();
		Transaction tr=session.beginTransaction();
		FileUpload file=(FileUpload) session.get(FileUpload.class, fileid);
		session.delete(file);
		tr.commit();
		
	}

}
