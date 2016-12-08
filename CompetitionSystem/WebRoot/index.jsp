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
			<li>请登录</li>
		</ul>
	</div>
	<!--中间内容  -->
	<div class="man_content">

		<div class="col-lg-6">
			<div>
				<div>
					<h3>竞赛信息列表</h3>
					<hr />
				</div>
				<ul class="ul">
					<s:iterator value="comList" var="c">
						<li class="li"><span class="glyphicon glyphicon-hand-right"></span>
							<a>&nbsp;${c.title}</a> <a style="float: right"> &nbsp; <fmt:formatDate
									value="${c.pubDate}" pattern="yyyy-MM-dd" />
						</a></li>
					</s:iterator>
					<li class="li" style="float: right"><a href="toListPage?type=1&indexPage=1">&nbsp;更多>>></a></li>
				</ul>
			</div>

		</div>


		<div class="col-lg-5" style="float: right;">
			<div>
				<div>
					<h3>竞赛信息列表</h3>
					<hr />
				</div>
				<ul class="ul">
					<s:iterator value="newList" var="c">
						<li class="li"><span class="glyphicon glyphicon-star"></span>
							<a>&nbsp;${c.title}</a> <a style="float: right"> &nbsp; <fmt:formatDate
									value="${c.pubDate}" pattern="yyyy-MM-dd" />
						</a></li>

					</s:iterator>
				</ul>
			</div>


			<div>
				<div>
					<h3>竞赛信息列表</h3>
					<hr />
				</div>
				<ul class="ul">
					<s:iterator value="awardList" var="c">
						<li class="li"><span class="glyphicon glyphicon-star"></span>
							<a>&nbsp;${c.title}</a> <a style="float: right"> &nbsp; <fmt:formatDate
									value="${c.pubDate}" pattern="yyyy-MM-dd" />
						</a></li>
					</s:iterator>
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
</html>

