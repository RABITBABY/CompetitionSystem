package com.cs.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name="project")
public class Project implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int com_id;
	@Column
	private String name;
	
	@ManyToOne
	@JoinColumn(name="level_id")
	private Level level;
	
	@Column
	private String hunit;
	@Column
	private String sch_organizer;
	public int getCom_id() {
		return com_id;
	}
	public void setCom_id(int com_id) {
		this.com_id = com_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Level getLevel() {
		return level;
	}
	public void setLevel(Level level) {
		this.level = level;
	}
	public String getHunit() {
		return hunit;
	}
	public void setHunit(String hunit) {
		this.hunit = hunit;
	}
	public String getSch_organizer() {
		return sch_organizer;
	}
	public void setSch_organizer(String sch_organizer) {
		this.sch_organizer = sch_organizer;
	}
	
	

}
