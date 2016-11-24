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
@Table(name="hours")
public class Hour  implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int hoursId;
	
	@ManyToOne
	@JoinColumn(name="comId")
	private Competition competition;
	@Column
	private String type;
	@Column
	private int hours;
	@Column
	private String remarks;
	
	
	public int getHoursId() {
		return hoursId;
	}
	public void setHoursId(int hoursId) {
		this.hoursId = hoursId;
	}
	public Competition getCompetition() {
		return competition;
	}
	public void setCompetition(Competition competition) {
		this.competition = competition;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getHours() {
		return hours;
	}
	public void setHours(int hours) {
		this.hours = hours;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
	
	
}
