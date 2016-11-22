package com.cs.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="article")
public class Article  implements Serializable{
	@Column
	private int articleId;
	@Column
	private int title;
	@Column
	private String content;
	@Column
	private Date pubDate;
	@ManyToOne
	@JoinColumn(name="pubUser")
	private Adminster pubUser;
	@Column
	private int articleType;
	public int getArticleId() {
		return articleId;
	}
	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}
	public int getTitle() {
		return title;
	}
	public void setTitle(int title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getPubDate() {
		return pubDate;
	}
	public void setPubDate(Date pubDate) {
		this.pubDate = pubDate;
	}
	public Adminster getPubUser() {
		return pubUser;
	}
	public void setPubUser(Adminster pubUser) {
		this.pubUser = pubUser;
	}
	public int getArticleType() {
		return articleType;
	}
	public void setArticleType(int articleType) {
		this.articleType = articleType;
	}
	
	
}
