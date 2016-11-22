package com.cs.entity;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
@Entity
@Table(name="group")
public class Groups implements Serializable {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int groupsNo;//组ID
	
	@ManyToOne
	@JoinColumn(name="comId")
	private Competition competition;//参加竞赛ID
	
	@Column
	private String groupsName;//组名
	
	@ManyToOne
	@JoinColumn(name="teacherNo")
	private Teacher teacher;//指导老师

	public int getGroupsNo() {
		return groupsNo;
	}

	public void setGroupsNo(int groupsNo) {
		this.groupsNo = groupsNo;
	}

	public Competition getCompetition() {
		return competition;
	}

	public void setCompetition(Competition competition) {
		this.competition = competition;
	}

	public String getGroupsName() {
		return groupsName;
	}

	public void setGroupsName(String groupsName) {
		this.groupsName = groupsName;
	}

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}	
	
}
