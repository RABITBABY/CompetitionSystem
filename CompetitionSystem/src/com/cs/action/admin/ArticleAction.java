package com.cs.action.admin;

import java.util.Date;

import com.cs.entity.Adminster;
import com.cs.entity.Article;
import com.cs.entity.Project;
import com.cs.service.admin.AdminService;
import com.opensymphony.xwork2.ActionSupport;

public class ArticleAction extends ActionSupport {
	AdminService aService = new AdminService();

	// ------------变量-------
	// 选择发布的文章类型
	private int type;
	// 发布竞赛征文用到的ComID
	private int comId;
	// 文章对象
	private Article article;
	// 文章ID
	private int articleId;

	// ------------action方法------------
	// 跳转到发布页面
	public String toPublic() {
		return SUCCESS;
	}

	// 发布文章
	public String pubArticl() {
		// 页面中获取文章类型 、竞赛编号、文章标题、内容
		// 获取当前登录的管理员账号
		// 整理文章对象信息

		Adminster admin = new Adminster();
		admin = new Adminster();
		admin.setAdminNo("12345");
System.out.println("后台的内容"+article.getContent());
		article.setPubDate(new Date());
		article.setPubUser(admin);

		System.out.println(article);

		// 添加到数据库//修改这个竞赛的发布状态
		if (aService.PubArticle(article) > 0) {
			return SUCCESS;
		}

		return "input";
	}

	// 跳转到修改页面
	public String toUpdate(){
		article=aService.getArticleById(articleId);
		return SUCCESS;
	}
	
	//异步请求竞赛征文
	public String findComarti() {
		// 根据id找到文章
		article = aService.getArticleById(articleId);
		System.out.println(article+"==****===\n");
		return SUCCESS;
	}

	// 删除文章
	public String delectArticle() {
		// 获取要删除的文章ID
		aService.delectArticle(articleId);

		return SUCCESS;
	}

	// ---------------get/set方法------------------
	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	public int getComId() {
		return comId;
	}

	public void setComId(int comId) {
		this.comId = comId;
	}

	public int getArticleId() {
		return articleId;
	}

	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}
}
