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
	private int level_id;
	
	
	@Column(name="name")
	private String name;
	
	@OneToMany
	@JoinColumn(name="level_id")
	private Set<Competition> competitions;
	
	@OneToMany
	@JoinColumn(name="level_id")
	private Set<Project> project;

	public int getLevel_id() {
		return level_id;
	}

	public void setLevel_id(int level_id) {
		this.level_id = level_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
