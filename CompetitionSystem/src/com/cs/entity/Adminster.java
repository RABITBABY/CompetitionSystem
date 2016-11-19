package com.cs.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="administer")
public class Adminster implements Serializable {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private String no;
	@Column
	private String password;
	
	//-----------------------------
	
	public String getPassword() {
		return password;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	
	
	
}
