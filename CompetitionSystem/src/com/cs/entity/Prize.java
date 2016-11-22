package com.cs.entity;

import java.io.Serializable;
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
@Table(name="type")
public class Prize implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int prizeId;
	
	@Column(name="prizeName")
	private String prizeName;
	
	
	@OneToMany
	@JoinColumn(name="prizeId")
	private Set<Awards> awards;


	public int getPrizeId() {
		return prizeId;
	}


	public void setPrizeId(int prizeId) {
		this.prizeId = prizeId;
	}


	public String getPrizeName() {
		return prizeName;
	}


	public void setPrizeName(String prizeName) {
		this.prizeName = prizeName;
	}


	public Set<Awards> getAwards() {
		return awards;
	}


	public void setAwards(Set<Awards> awards) {
		this.awards = awards;
	}


	
	
}
