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
@Table(name="standard")
public class Standard implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int standardId;
	
	@ManyToOne
	@JoinColumn(name="levelId")
	private Level level;
	
	@ManyToOne
	@JoinColumn(name="prizeId")
	private Prize prize;
	
	@Column
	private int student;//学生奖励标准
	@Column
	private int teacher;//教师奖励标准
	
	
	public int getStandardId() {
		return standardId;
	}
	public void setStandardId(int standardId) {
		this.standardId = standardId;
	}
	public Level getLevel() {
		return level;
	}
	public void setLevel(Level level) {
		this.level = level;
	}
	public Prize getPrize() {
		return prize;
	}
	public void setPrize(Prize prize) {
		this.prize = prize;
	}
	public int getStudent() {
		return student;
	}
	public void setStudent(int student) {
		this.student = student;
	}
	public int getTeacher() {
		return teacher;
	}
	public void setTeacher(int teacher) {
		this.teacher = teacher;
	}
	
	
	
	
}
