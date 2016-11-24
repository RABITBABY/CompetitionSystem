package com.cs.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="fileupload")
public class FileUpload implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int fileId;//文件序号
	@Column
	private String fileName;//文件名称
	@Column
	private String saveName;//保存的文件名(随机产生)
	@Column
	private Date uploadDate;//上传时间
	@ManyToOne
	@JoinColumn(name="uploadUser")
	private Adminster uploadUser;//上传者
	
	
	public int getFileId() {
		return fileId;
	}
	public void setFileId(int fileId) {
		this.fileId = fileId;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getSaveName() {
		return saveName;
	}
	public void setSaveName(String saveName) {
		this.saveName = saveName;
	}
	public Date getUploadDate() {
		return uploadDate;
	}
	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}
	public Adminster getUploadUser() {
		return uploadUser;
	}
	public void setUploadUser(Adminster uploadUser) {
		this.uploadUser = uploadUser;
	}
	
	
	
}
