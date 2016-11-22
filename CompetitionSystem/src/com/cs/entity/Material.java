package com.cs.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "material")
public class Material {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer materialId;
	
	@ManyToOne
	@JoinColumn(name="studentNo")
	private Student student;
	
	@Column
	private String materialName;
	
	@Column
	private String materialPic;

	public Integer getMaterialId() {
		return materialId;
	}

	public void setMaterialId(Integer materialId) {
		this.materialId = materialId;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public String getMaterialName() {
		return materialName;
	}

	public void setMaterialName(String materialName) {
		this.materialName = materialName;
	}

	public String getMaterialPic() {
		return materialPic;
	}

	public void setMaterialPic(String materialPic) {
		this.materialPic = materialPic;
	}
	
	
	
}
