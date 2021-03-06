package com.cs.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="teacher")
public class Teacher implements Serializable {
	@Id
	private int teacherNo;
	@Column
	private String teacherName;
	@Column
	private String gender;
	@Column
	private Date birth;
	@ManyToOne
	@JoinColumn(name="departmentId")
	private Department department;//系别
	@Column
	private String subject;
	@Column
	private String phone;
	@Column
	private String title;//职称
	@Column
	private String post;//职位
	@Column
	private String email;
	@Column
	private String type;//教职工类别
	@Column
	private String direction;//教学研究方向
	@Column
	private String education;//学历
	@Column
	private int lab;//是否实验室人员
	@Column
	private String password;
	@Column
	private int examiner;//是否审批人员
	@ManyToMany(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	@JoinTable(name = "guideteacher",
	joinColumns = {@JoinColumn(name = "teacherNo", referencedColumnName = "teacherNo")},
	inverseJoinColumns = {@JoinColumn(name = "comId", referencedColumnName ="comId")})
	private Set<Competition> competitions;
	
	
	
	public int getTeacherNo() {
		return teacherNo;
	}
	public void setTeacherNo(int teacherNo) {
		this.teacherNo = teacherNo;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
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
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
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
	public String getDirection() {
		return direction;
	}
	public void setDirection(String direction) {
		this.direction = direction;
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
	public Set<Competition> getCompetitions() {
		return competitions;
	}
	public void setCompetitions(Set<Competition> competitions) {
		this.competitions = competitions;
	}
	
	
	
	
}
