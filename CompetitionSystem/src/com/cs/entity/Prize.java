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
	private int pri_id;
	
	@Column(name="name")
	private String name;
	
	
	@OneToMany
	@JoinColumn(name="pri_id")
	private Set<Awards> awards;


	public int getPri_id() {
		return pri_id;
	}


	public void setPri_id(int pri_id) {
		this.pri_id = pri_id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public Set<Awards> getAwards() {
		return awards;
	}


	public void setAwards(Set<Awards> awards) {
		this.awards = awards;
	}
	
	
	
}
