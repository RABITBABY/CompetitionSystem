package com.cs.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
@Entity
@Table(name="awards")
public class Awards implements Serializable {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int awardsId;//序号
	
	@Column
	private String name;//竞赛名称
	
	@Column
	private Date date;//竞赛时间
	
	@Column
	private String hunit;//主办单位
	
	@ManyToOne
	@JoinColumn(name="prizeId")
	private Prize  prize;//获奖等级
	
	@ManyToOne
	@JoinColumn(name="levelId")
	private Level level;//竞赛等级
	@ManyToOne
	@JoinColumn(name="groupsNo")
	private Groups groups;
	
	@Column
	private int isPublish;
	//-----------------------------
	public int getAwardsId() {
		return awardsId;
	}
	public void setAwardsId(int awardsId) {
		this.awardsId = awardsId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getHunit() {
		return hunit;
	}
	public void setHunit(String hunit) {
		this.hunit = hunit;
	}
	public Prize getPrize() {
		return prize;
	}
	public void setPrize(Prize prize) {
		this.prize = prize;
	}
	public Groups getGroups() {
		return groups;
	}
	public void setGroups(Groups groups) {
		this.groups = groups;
	}
	public int getIsPublish() {
		return isPublish;
	}
	public void setIsPublish(int isPublish) {
		this.isPublish = isPublish;
	}
	public Level getLevel() {
		return level;
	}
	
	public void setLevel(Level level) {
		this.level = level;
	}
	@Override
	public String toString() {
		return "Awards [awardsId=" + awardsId + ", name=" + name + ", date="
				+ date + ", hunit=" + hunit + ", prize=" + prize + ", level="
				+ level + ", groups=" + groups + ", isPublish=" + isPublish
				+ "]";
	}
	
	
}
