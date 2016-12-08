<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>首页</title>
<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="bootstrap/dist/js/bootstrap.js"></script>
<script type="text/javascript" src="bootstrap/dist/js/npm.js"></script>
<link rel="stylesheet" href="bootstrap/dist/css/bootstrap-theme.css" />
<link rel="stylesheet" href="bootstrap/dist/css/bootstrap.css" />
<link rel="stylesheet" href="${base }css/index/topbar.css">
<link rel="stylesheet" href="${base }css/index/articleDatail.css">
</head>

<body>
	<s:debug />
	<!--导航条-->
	<div class="_top">
		<label class="bar_title">学科竞赛管理系统</label>
		<ul class="top_bar">
			<li>首页</li>
			<li>请登录</li>
		</ul>
	</div>
	<!--中间内容  -->
	<div class="list_detail">

		<div class="path">
			<ol class="breadcrumb ">
				<li><a href="">首页</a></li>
				<li><a href="">竞赛资讯</a></li>
				<li class="active">正文</li>
			</ol>
		</div>

		<div class="article_content">
			<h2>${article.title }</h2>
			<div>
				<p class="articleinfo">
					发布时间：
					<fmt:formatDate value="${article.pubDate}"
						pattern="yyyy-MM-dd hh:mm:ss" />
				</p>
				<p class="articleinfo">作者：${article.pubUser.adminName }</p>
				<p class="articleinfo">来源：${article.pubUser.department }</p>
			</div>
			<br>
			<hr />
			<div class="show_content">
				<s:property escape="false" value="article.content" />
			</div>

		</div>


	</div>

<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>
