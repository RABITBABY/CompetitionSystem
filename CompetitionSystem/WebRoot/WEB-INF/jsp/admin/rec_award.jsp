<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>My JSP 'rec_award.jsp' starting page</title>
<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="bootstrap/dist/js/bootstrap.js"></script>
<script type="text/javascript" src="bootstrap/dist/js/npm.js"></script>
<link rel="stylesheet" href="bootstrap/dist/css/bootstrap-theme.css" />
<link rel="stylesheet" href="bootstrap/dist/css/bootstrap.css" />
<style type="text/css">
.man_content {
	width: 1200px;
	height: 100%;
	margin: auto;
}

.con_left {
	width: 200px;
	height: 500px;
	float: left;
	margin-right: 30px;
}

.con_middle {
	width: 970px;
	height: 500px;
	float: right;
}

._title {
	font-size: 25px;
	font-weight: 0;
	margin-left: 10px;
}
</style>
</head>

<body>
	<!--导航条-->
	<div class="man_top">
		<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="">&nbsp;</a> <a class="navbar-brand"
					href="">&nbsp;LOGO&nbsp;</a>
			</div>

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">

					<li class="active"><a href="">管理员页面</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="">你好，MAX</a></li>
					<li><a href="">退出</a></li>
				</ul>
			</div>
		</div>
		</nav>
	</div>

	<div class="man_content">
		<div class="con_left">
			<jsp:include page="left.jsp" flush="true"></jsp:include>

		</div>

		<div class="con_middle">
			<label class="_title">近期比赛</label>
			<table class="table">
				<tr>
					<th>序号</th>
					<th>获奖比赛</th>
					<th>主办单位</th>
					<th>组员</th>
					<th>指导老师</th>
					<th>奖项</th>
					<th>获奖日期</th>
					<th>操作</th>
				</tr>
				<tr>
					<td class="col-lg-1">2013071654</td>
					<td class="col-lg-4">App设计大赛名字坑你会很长，总之会很长</td>
					<td class="col-lg-1">广东教育局</td>
					<td class="col-lg-1">李大明、周崇光</td>
					<td class="col-lg-1">郭敬明</td>
					<td class="col-lg-1">一等奖</td>
					<td class="col-lg-1">2016-5-12</td>
					<td class="col-lg-2">
						<button class="btn btn-primary">发布征文</button>
					</td>
				</tr>
				<tr>
					<td class="col-lg-1">2013071654</td>
					<td class="col-lg-4">App设计大赛名字坑你会很长，总之会很长</td>
					<td class="col-lg-1">广东教育局</td>
					<td class="col-lg-1">李大明、周崇光</td>
					<td class="col-lg-1">郭敬明</td>
					<td class="col-lg-1">一等奖</td>
					<td class="col-lg-1">2016-5-12</td>
					<td class="col-lg-2">
						<button class="btn btn-primary">发布征文</button>
					</td>
				</tr>
			</table>

		</div>

	</div>
</body>
</html>
