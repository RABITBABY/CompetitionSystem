package com.cs.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="schedule")
public class Schedule implements Serializable{
	
	@ManyToOne
	@JoinColumn(name="comId")
	private Competition competition;
	
	@ManyToOne
	@JoinColumn(name="teacherNo")
	private Teacher teacher;
	
	@Column
	private String content;
	@Column
	private String position;
	@Column
	private Date date;
	@Column
	private int hours;
	public Competition getCompetition() {
		return competition;
	}
	public void setCompetition(Competition competition) {
		this.competition = competition;
	}
	public Teacher getTeacher() {
		return teacher;
	}
	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getHours() {
		return hours;
	}
	public void setHours(int hours) {
		this.hours = hours;
	}
	
	
	

}
