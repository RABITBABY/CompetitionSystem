 package com.cs.entity;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
@Entity
@Table(name="production")
public class Production implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	//作品====组别号
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="gno")
	private Group groups;
	
	@Column
	private String name;
	
	@Column
	private String introduction;
	
	@Column
	private String pic;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public Group getGroups() {
		return groups;
	}

	public void setGroups(Group groups) {
		this.groups = groups;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}
	
	

}
