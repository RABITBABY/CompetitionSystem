package com.cs.entity;

import java.io.Serializable;
import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="student")
public class Student implements Serializable{
	@Id
	private int studentNo;
	@Column
	private String studentName;
	@Column
	private String gender;
	@ManyToOne
	@JoinColumn(name="departmentId")
	private Department department;
	@Column
	private String profession;
	@Column
	private int classNo;
	@Column
	private int grade;
	@Column
	private String phone;
	@Column
	private String email;
	@Column
	private String password;
	
	@OneToMany
	@JoinColumn(name="studentNo")
	private Set<GroupsDetail> groupsDetails;
	
	public int getStudentNo() {
		return studentNo;
	}
	public void setStudentNo(int studentNo) {
		this.studentNo = studentNo;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	public int getClassNo() {
		return classNo;
	}
	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public Set<GroupsDetail> getGroupsDetails() {
		return groupsDetails;
	}
	
	public void setGroupsDetails(Set<GroupsDetail> groupsDetails) {
		this.groupsDetails = groupsDetails;
	}
	
}
