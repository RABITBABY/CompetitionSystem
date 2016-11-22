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
	private int gno;//组ID
	
	@ManyToOne
	@JoinColumn(name="com_id")
	private Competition competition;//参加竞赛ID
	
	@Column
	private String name;//组名
	
	@OneToMany
	@JoinColumn(name="gno")
	private Set<GDetail> gDetails;//组成员详细信息
	
	
	@ManyToOne
	@JoinColumn(name="tno")
	private Teacher teacher;//指导老师

	//__________________

	public Competition getCompetition() {
		return competition;
	}

	public void setCompetition(Competition competition) {
		this.competition = competition;
	}

	public int getGno() {
		return gno;
	}

	public void setGno(int gno) {
		this.gno = gno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}


	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}


	
}
