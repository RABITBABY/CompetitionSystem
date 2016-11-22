package com.cs.entity;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="level")
public class Level implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int levelId;
	
	
	@Column(name="levelName")
	private String levelName;
	
	@OneToMany
	@JoinColumn(name="levelId")
	private Set<Competition> competitions;
	
	@OneToMany
	@JoinColumn(name="levelId")
	private Set<Project> project;

	public int getLevelId() {
		return levelId;
	}

	public void setLevelId(int levelId) {
		this.levelId = levelId;
	}

	public String getLevelName() {
		return levelName;
	}

	public void setLevelName(String levelName) {
		this.levelName = levelName;
	}

	public Set<Competition> getCompetitions() {
		return competitions;
	}

	public void setCompetitions(Set<Competition> competitions) {
		this.competitions = competitions;
	}

	public Set<Project> getProject() {
		return project;
	}

	public void setProject(Set<Project> project) {
		this.project = project;
	}

	
	
}
