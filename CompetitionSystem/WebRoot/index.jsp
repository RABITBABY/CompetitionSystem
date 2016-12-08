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
<link rel="stylesheet" href="${base }css/index/index.css">

<link rel="stylesheet" href="${base }css/index/topbar.css">
</head>

<body>
	<%-- <s:debug /> --%>
	<!--导航条-->
	<div class="_top">
		<label class="bar_title">学科竞赛管理系统</label>
		<ul class="top_bar">
			<li>首页</li>
			<li data-toggle="modal" data-target="#LoginModel">请登录</li>
		</ul>
	</div>
	<!--中间内容  -->
	<div class="man_content">

		<div class="col-lg-6 box1">
			<div>
				<div>
					<h3>竞赛信息列表</h3>
					<hr />
				</div>
				<ul class="ul">
					<s:iterator value="comList" var="c">
						<li class="li"><span class="glyphicon glyphicon-hand-right"></span>
							<a href="toDetail?articleId=${c.articleId }"><label>&nbsp;${c.title}</label>
								<label style="float: right"> &nbsp; <fmt:formatDate
										value="${c.pubDate}" pattern="yyyy-MM-dd" />
							</label></a></li>
					</s:iterator>
					<li class="li" style="float: right"><a
						href="toListPage?type=1&indexPage=1">&nbsp;更多>>></a></li>
				</ul>
			</div>

		</div>


		<div class="col-lg-5" style="float: right;">
			<div>
				<div>
					<h3>竞赛动态公告</h3>
					<hr />
				</div>
				<ul class="ul">
					<s:iterator value="newList" var="c">
						<li class="li"><span class="glyphicon glyphicon-hand-right"></span>
							<a href="toDetail?articleId=${c.articleId }"><label>&nbsp;${c.title}</label>
								<label style="float: right"> &nbsp; <fmt:formatDate
										value="${c.pubDate}" pattern="yyyy-MM-dd" />
							</label></a></li>

					</s:iterator>
					<li class="li" style="float: right"><a
						href="toListPage?type=2&indexPage=1">&nbsp;更多>>></a></li>
				</ul>
			</div>


			<div>
				<div>
					<h3>竞赛获奖情况</h3>
					<hr />
				</div>
				<ul class="ul">
					<s:iterator value="awardList" var="c">
						<li class="li"><span class="glyphicon glyphicon-hand-right"></span>
							<a href="toDetail?articleId=${c.articleId }"><label>&nbsp;${c.title}</label>
								<label style="float: right"> &nbsp; <fmt:formatDate
										value="${c.pubDate}" pattern="yyyy-MM-dd"/>
							</label></a></li>
					</s:iterator>
					<li class="li" style="float: right"><a
						href="toListPage?type=3&indexPage=1">&nbsp;更多>>></a></li>
				</ul>
			</div>



		</div>



	</div>

	<div class="produ_bar">
		<h3>优秀作品</h3>
		<hr>
		<div class="pro_list">
			<s:iterator value="production " var="p">
				<div class="col-sm-4 col-md-4">
					<div class="thumbnail">
						<img style="width: 240px;height: 200px"
							src="img/production/${p.pic }" alt="...">
						<div class="caption">
							<h3>${p.proName}</h3>
							<p>获得奖项：${p.award}</p>
							<p>参赛选手：${p.membersName}</p>
							<p>作品简介：${p.introduction}</p>
						</div>
					</div>
				</div>

			</s:iterator>

		</div>

	</div>

</body>
<!-- 弹出框 -->
<div class="modal fade" id="LoginModel" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="false">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">用户登录</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" role="form"
					enctype="multipart/form-data" action="login" method="post">
					<div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">用户名：</label>
						<div class="col-sm-9">
							<input type="text" name="username" class="form-control intext"
								id="username">
						</div>

					</div>
					<div class="form-group">
						<label for="inputPassword3" class="col-sm-2 control-label">密码：</label>
						<div class="col-sm-9">
							<input type="password" name="password"
								class="form-control intext" id="password">
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword3" class="col-sm-2 control-label">登录身份:</label>
						<div class="col-sm-9">
							<input type="radio" name="role" value="1" id="role1"><label
								for="role1">学生</label>&nbsp; <input type="radio" name="role"
								value="2" id="role2"><label for="role2">老师</label>&nbsp;
							<input type="radio" checked="checked" name="role" value="3"
								id="role3"><label for="role3">管理员</label>&nbsp;
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							onclick="initInput()">取消</button>
						<button type="submit" class="btn btn-primary">登录</button>
					</div>
				</form>
			</div>

		</div>
	</div>
</div>
</html>

