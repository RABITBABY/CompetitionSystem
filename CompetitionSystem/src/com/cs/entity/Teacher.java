package com.cs.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name="teacher")
public class Teacher implements Serializable {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int tno;
	@Column
	private String name;
	@Column
	private String gender;
	@Column
	private Date birth;
	@Column
	private String department;
	@Column
	private String subject;
	@Column
	private String phone;
	@Column
	private String title;
	@Column
	private String post;
	@Column
	private String email;
	@Column
	private String type;
	@Column
	private String directon;
	@Column
	private String education;
	@Column
	private int lab;
	@Column
	private String password;
	@Column
	private int examiner;
	
	@OneToMany
	@JoinColumn(name="tno")
	private Set<Groups> groups;
	
	@OneToMany
	@JoinColumn(name="tno")
	private Set<Competition> competitions;

	public int getTno() {
		return tno;
	}

	public void setTno(int tno) {
		this.tno = tno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getDirecton() {
		return directon;
	}

	public void setDirecton(String directon) {
		this.directon = directon;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public int getLab() {
		return lab;
	}

	public void setLab(int lab) {
		this.lab = lab;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getExaminer() {
		return examiner;
	}

	public void setExaminer(int examiner) {
		this.examiner = examiner;
	}

	public Set<Groups> getGroups() {
		return groups;
	}

	public void setGroups(Set<Groups> groups) {
		this.groups = groups;
	}

	public Set<Competition> getCompetitions() {
		return competitions;
	}

	public void setCompetitions(Set<Competition> competitions) {
		this.competitions = competitions;
	}

	
}
