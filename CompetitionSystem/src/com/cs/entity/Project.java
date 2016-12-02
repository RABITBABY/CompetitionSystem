package com.cs.entity;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
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
	private Date applyBeginDate;
	@Column
	private Date applyEndDate;
	@Column
	private Date comDate;
	@Column
	private Double cost;
	@Column
	private Integer status;
	@Column
	private int isPublish;
	
	@OneToMany
	@JoinColumn(name="comId")
	private Set<Groups> groups;
	
	
	public Set<Groups> getGroups() {
		return groups;
	}
	public void setGroups(Set<Groups> groups) {
		this.groups = groups;
	}
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
	public String getApplyBeginDate() {
		return dateForm( applyBeginDate);
	}
	public void setApplyBeginDate(Date applyBeginDate) {
		this.applyBeginDate = applyBeginDate;
	}
	public String getApplyEndDate() {
		return dateForm(applyEndDate);
	}
	public void setApplyEndDate(Date applyEndDate) {
		this.applyEndDate = applyEndDate;
	}
	public String getComDate() {
		return dateForm(comDate);
	}
	public void setComDate(Date comDate) {
		this.comDate = comDate;
	}
	
	public String dateForm(Date d){
		SimpleDateFormat spl=new SimpleDateFormat("yyyy年MM月dd日");
		String dString=spl.format(d);
		return dString;
	}
	
}
