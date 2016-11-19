package com.cs.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="gdetail")
public class GDetail {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	@ManyToOne
	@JoinColumn(name="gno")
	private Group  groups;
	
	@ManyToOne
	@JoinColumn(name="sno")
	private Student student;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Group getGroups() {
		return groups;
	}
	public void setGroups(Group groups) {
		this.groups = groups;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	
	
	
}
