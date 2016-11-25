package com.cs.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="budget")
public class Budget implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer bugetId;
	
	@ManyToOne
	@JoinColumn(name="comId")
	private Competition competition;
	@Column
	private String subject;
	@Column
	private int sum;
	@Column
	private String reasons;
	
	
	public Integer getBugetId() {
		return bugetId;
	}
	public void setBugetId(Integer bugetId) {
		this.bugetId = bugetId;
	}
	public Competition getCompetition() {
		return competition;
	}
	public void setCompetition(Competition competition) {
		this.competition = competition;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	public String getReasons() {
		return reasons;
	}
	public void setReasons(String reasons) {
		this.reasons = reasons;
	}
	
	
	
}
