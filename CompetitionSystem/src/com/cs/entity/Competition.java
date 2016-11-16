package com.cs.entity;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name = "competition")
public class Competition {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column(name="name")
	private String name;
	
	@ManyToOne
	@JoinColumn(name="tno")
	private Teacher teacher;
	
	@Column
	private String unit;
	
	@ManyToOne
	@JoinColumn(name="level_id")
	private Level level;
	
	@Column
	private String phone;
	@Column
	private String email;
	@Column
	private Date date;
	@Column
	private String host;
	@Column
	private Date time;
	@Column
	private String place;
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

	// 外键一对一 预算
	@OneToOne(cascade = CascadeType.ALL)
	@PrimaryKeyJoinColumn
	private Budget budget;

	// 外键一对一 课时预算
	@OneToOne(cascade = CascadeType.ALL)
	@PrimaryKeyJoinColumn
	private Hour hour;

	// 外键一对一 培训工作安排
	@OneToOne(cascade = CascadeType.ALL)
	@PrimaryKeyJoinColumn
	private Schedule schedule;

	// 外键一对一 项目一览表
	@OneToOne(cascade = CascadeType.ALL)
	@PrimaryKeyJoinColumn
	private Project project;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public Budget getBudget() {
		return budget;
	}

	public void setBudget(Budget budget) {
		this.budget = budget;
	}

	public Hour getHour() {
		return hour;
	}

	public void setHour(Hour hour) {
		this.hour = hour;
	}

	public Schedule getSchedule() {
		return schedule;
	}

	public void setSchedule(Schedule schedule) {
		this.schedule = schedule;
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}


	

}
