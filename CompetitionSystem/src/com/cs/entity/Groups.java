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
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
@Entity
@Table(name="groups")
public class Groups implements Serializable {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int groupsNo;//组ID

	
	@Column
	private String groupsName;//组名
	
	@ManyToOne
	@JoinColumn(name="teacherNo")
	private Teacher teacher;//指导老师	
	
	@Column
	private Integer status;//报名状态（0.正在审核1.审核未通过 2.等待缴费3报名成功 4比赛结束）
	
	@ManyToOne
	@JoinColumn(name="comId")
	private Project project;

	public int getGroupsNo() {
		return groupsNo;
	}

	public void setGroupsNo(int groupsNo) {
		this.groupsNo = groupsNo;
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

	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	
	public Project getProject() {
		return project;
	}
	
	public void setProject(Project project) {
		this.project = project;
	}
	
}
