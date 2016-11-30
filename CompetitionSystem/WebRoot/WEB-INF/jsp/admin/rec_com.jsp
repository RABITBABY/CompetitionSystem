<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title></title>
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
			<s:iterator value="projects" var="p">
				<div class="panel panel-primary">

					<div class="panel-heading">${p.comName }</div>
					<div class="panel-body">
						<div>
							<h4 class="col-lg-4">竞赛编号：${p.comId }</h4>
							<h4 class="col-lg-4">竞赛级别：${p.level.levelName}</h4>
							<h4 class="col-lg-4">校承办单位：${p.sOrganizer }</h4>
							<h4 class="col-lg-4">主办单位：${p.hunit }</h4>
							<h4 class="col-lg-4">报名开始时间：${p.applyBeginDate }</h4>
							<h4 class="col-lg-4">报名结束时间：${p.applyEndDate }</h4>
							<h4 class="col-lg-4">比赛时间：${p.comDate }</h4>
							<h4 class="col-lg-4">报名费：${p.cost }元</h4>
							<h4 class="col-lg-12">竞赛简介：${p.introduction }</h4>
						</div>

						<div class="col-lg-12">
							<s:if test="#p.isPublish eq 0 ">
								<button class="btn btn-primary " onclick="location='article/toPublic?type=1&comId=${p.comId}'"
									style="float: right;margin-right: 50px;">发布征文</button>
							</s:if>
							<s:else>
								<button class="btn btn-success "
									style="float: right;margin-right: 50px;">查看征文</button>
							</s:else>
						</div>
					</div>
				</div>

			</s:iterator>


		</div>

	</div>
</body>

</html>