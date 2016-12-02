package com.cs.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
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
@Table(name = "competition")
public class Competition implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int comId;
	
	@Column
	private String comName;
	
	@ManyToOne
	@JoinColumn(name="teacherNo")
	private Teacher teacher;
	
	@Column
	private String unit;
	
	@ManyToOne
	@JoinColumn(name="levelId")
	private Level level;
	
	@Column
	private String phone;
	@Column
	private String email;
	@ManyToOne
	@JoinColumn(name="departmentId")
	private Department department;
	@Column
	private Date date;
	@Column
	private String host;
	@Column
	private Date time;
	@Column
	private String place;
	@Column
	private String introduce;
	@Column
	private String object;
	@Column
	private int people;
	@Column
	private String sponsor;
	@Column
	private String plan;
	@Column
	private String tgoal;
	@Column
	private String wgoal;
	@Column
	private String sopinion;
	@Column
	private String slsign;
	@Column
	private Date slsdate;
	@Column
	private String uopinion;
	@Column
	private String dsign;
	@Column
	private Date dsdate;
	@Column
	private String tdopinion;
	@Column
	private String olsign;
	@Column
	private Date olsdate;
	@Column
	private String lsign;
	@Column
	private Date lsdate;
	@Column
	private Integer status;//0等待系主任审批 1.等待教学处审批 2申报成功3申报失败

	// 外键一对一 预算
	@OneToMany
    @JoinColumn(name="comId")
	private Set<Budget> budget;

	// 外键一对一 课时预算
	@OneToMany
	@JoinColumn(name="comId")
	private Set<Hour> hour;

	// 外键一对一 培训工作安排
	@OneToMany
	@JoinColumn(name="comId")
	private Set<Schedule> schedule;
	
	@OneToMany
	@JoinColumn(name="comId")
	private Set<Groups> groups;
	
	@OneToMany
	@JoinColumn(name="comId")
	private Set<GuideTeacher> guideTeachers;
	


	public int getComId() {
		return comId;
	}

	public void setComId(int comId) {
		this.comId = comId;
	}

	public String getComName() {
		return comName;
	}

	public void setComName(String comName) {
		this.comName = comName;
	}

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public Level getLevel() {
		return level;
	}

	public void setLevel(Level level) {
		this.level = level;
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

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getHost() {
		return host;
	}

	public void setHost(String host) {
		this.host = host;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getObject() {
		return object;
	}

	public void setObject(String object) {
		this.object = object;
	}

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}

	public String getSponsor() {
		return sponsor;
	}

	public void setSponsor(String sponsor) {
		this.sponsor = sponsor;
	}

	public String getPlan() {
		return plan;
	}

	public void setPlan(String plan) {
		this.plan = plan;
	}

	public String getTgoal() {
		return tgoal;
	}

	public void setTgoal(String tgoal) {
		this.tgoal = tgoal;
	}

	public String getWgoal() {
		return wgoal;
	}

	public void setWgoal(String wgoal) {
		this.wgoal = wgoal;
	}

	public String getSopinion() {
		return sopinion;
	}

	public void setSopinion(String sopinion) {
		this.sopinion = sopinion;
	}

	public String getSlsign() {
		return slsign;
	}

	public void setSlsign(String slsign) {
		this.slsign = slsign;
	}

	public Date getSlsdate() {
		return slsdate;
	}

	public void setSlsdate(Date slsdate) {
		this.slsdate = slsdate;
	}

	public String getUopinion() {
		return uopinion;
	}

	public void setUopinion(String uopinion) {
		this.uopinion = uopinion;
	}

	public String getDsign() {
		return dsign;
	}

	public void setDsign(String dsign) {
		this.dsign = dsign;
	}

	public Date getDsdate() {
		return dsdate;
	}

	public void setDsdate(Date dsdate) {
		this.dsdate = dsdate;
	}

	public String getTdopinion() {
		return tdopinion;
	}

	public void setTdopinion(String tdopinion) {
		this.tdopinion = tdopinion;
	}

	public String getOlsign() {
		return olsign;
	}

	public void setOlsign(String olsign) {
		this.olsign = olsign;
	}

	public Date getOlsdate() {
		return olsdate;
	}

	public void setOlsdate(Date olsdate) {
		this.olsdate = olsdate;
	}

	public String getLsign() {
		return lsign;
	}

	public void setLsign(String lsign) {
		this.lsign = lsign;
	}

	public Date getLsdate() {
		return lsdate;
	}

	public void setLsdate(Date lsdate) {
		this.lsdate = lsdate;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Set<Budget> getBudget() {
		return budget;
	}

	public void setBudget(Set<Budget> budget) {
		this.budget = budget;
	}

	public Set<Hour> getHour() {
		return hour;
	}

	public void setHour(Set<Hour> hour) {
		this.hour = hour;
	}

	public Set<Schedule> getSchedule() {
		return schedule;
	}

	public void setSchedule(Set<Schedule> schedule) {
		this.schedule = schedule;
	}

	public Set<Groups> getGroups() {
		return groups;
	}

	public void setGroups(Set<Groups> groups) {
		this.groups = groups;
	}

	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	
	public Set<GuideTeacher> getGuideTeachers() {
		return guideTeachers;
	}
	
	public void setGuideTeachers(Set<GuideTeacher> guideTeachers) {
		this.guideTeachers = guideTeachers;
	}
	
	public String getIntroduce() {
		return introduce;
	}
	
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	
	
}
