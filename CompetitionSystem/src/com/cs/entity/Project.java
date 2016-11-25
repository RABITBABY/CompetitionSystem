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
	private int comId;
	@Column
	private String comName;
	
	@ManyToOne
	@JoinColumn(name="levelId")
	private Level level;
	
	@Column
	private String hunit;
	@Column
	private String sOrganizer;
	@Column
	private String introduction;
	@Column
	private String applyDate;
	@Column
	private String comDate;
	@Column
	private int isPublish;
	
	
	public int getComId() {
		return comId;
	}
	public void setComId(int comId) {
		this.comId = comId;
	}
	public String getComName() {
		return comName;
	}
	public void setComName(String comName) {
		this.comName = comName;
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
	public String getsOrganizer() {
		return sOrganizer;
	}
	public void setsOrganizer(String sOrganizer) {
		this.sOrganizer = sOrganizer;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String getApplyDate() {
		return applyDate;
	}
	public void setApplyDate(String applyDate) {
		this.applyDate = applyDate;
	}
	public String getComDate() {
		return comDate;
	}
	public void setComDate(String comDate) {
		this.comDate = comDate;
	}
	public int getIsPublish() {
		return isPublish;
	}
	public void setIsPublish(int isPublish) {
		this.isPublish = isPublish;
	}
	
	
	
}
