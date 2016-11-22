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

	@Column
	private String subject;
	@Column
	private int sum;
	@Column
	private String reasons;
	
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
