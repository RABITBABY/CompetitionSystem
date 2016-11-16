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
public class Group implements Serializable {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int gno;
	
	@ManyToOne
	@JoinColumn(name="com_id")
	private Competition competition;
	
	@Column
	private String name;
	
	@OneToMany
	@JoinColumn(name="gno")
	private Set<GDetail> gDetails;
	
	
	@ManyToOne
	@JoinColumn(name="tno")
	private Teacher teacher;

	@OneToOne(mappedBy="groups")
	private Production production;

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

	public Production getProduction() {
		return production;
	}

	public void setProduction(Production production) {
		this.production = production;
	}
	

	
}
