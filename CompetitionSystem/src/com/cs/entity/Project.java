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
	private String applyBeginDate;
	@Column
	private String applyEndDate;
	@Column
	private String comDate;
	@Column
	private Double cost;
	@Column
	private Integer status;
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
	public String getApplyBeginDate() {
		return applyBeginDate;
	}
	public void setApplyBeginDate(String applyBeginDate) {
		this.applyBeginDate = applyBeginDate;
	}
	public String getApplyEndDate() {
		return applyEndDate;
	}
	public void setApplyEndDate(String applyEndDate) {
		this.applyEndDate = applyEndDate;
	}
	public String getComDate() {
		return comDate;
	}
	public void setComDate(String comDate) {
		this.comDate = comDate;
	}
	public Double getCost() {
		return cost;
	}
	public void setCost(Double cost) {
		this.cost = cost;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public int getIsPublish() {
		return isPublish;
	}
	public void setIsPublish(int isPublish) {
		this.isPublish = isPublish;
	}
	
	
	
}
