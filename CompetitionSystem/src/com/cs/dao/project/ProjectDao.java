package com.cs.dao.project;

import java.util.List;

import com.cs.entity.Project;

public interface ProjectDao {
	public List<Project> findAll();
	public List<Project> needPub();
	public void pubChange(int comId,int isPub);

}
