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

<title>获奖情况-学科竞赛</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="Content-Tpye" content="text/html;charset=utf-8">
<!--样式文件引用-->
<link href="<%=path%>/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/studentAward.css" />
<link rel="stylesheet" href="<%=path%>/css/studentCommon.css" />
<!--JavaScript插件都是依赖与jQuery库-->
<script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
<script type="text/javascript"
	src="<%=path%>/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/studentIndex.js"></script>

</head>

<body>
	<div>
		<div>
			<div class="head">
				<div class="head-right">
					<a href="#">退出</a> <a href="#" id="helloUser">林欢雯，欢迎您</a>
				</div>
			</div>
		</div>
		<div class="row rowadd">
			<div class="col-md-2 left-part">
				<div class="panel panel-default">
					<!-- Default panel contents -->
					<div class="panel-heading">
						<i class="glyphicon glyphicon-home"></i>个人中心
					</div>
					<!-- List group -->
					<ul class="list-group list-g">
						<li class="list-group-item " onclick="indPage()">概况</li>
						<li class="list-group-item" onclick="comPage();">竞赛管理</li>
						<li class="list-group-item" onclick="messagePage()">我的消息</li>
						<li class="list-group-item change_left">获奖情况</li>
						<li class="list-group-item" onclick="infoPage()">我的信息</li>
						<li class="list-group-item" onclick="downloadPage()">下载中心</li>
						<li class="list-group-item"></li>
					</ul>
				</div>
			</div>
			<div class="col-md-10 right-part">
				<div class="main">
					<div class="award-head">
						<span>获奖情况(<span>2</span>)
						</span>
					</div>
					<div class="award-context">
						<ul class="cbp_tmtimeline">
							<li>
								<div class="cbp_tmtime">
									<span>4/10/13</span>
								</div>
								<div class="cbp_tmicon"></div>
								<div class="cbp_tmlabel">
									<h2 class="mytitle">全国-甲骨文杯java程序设计大赛</h2>
									<p>三等奖</p>
								</div>
							</li>
							<li>
								<div class="cbp_tmtime">
									<span>4/11/13</span>
								</div>
								<div class="cbp_tmicon"></div>
								<div class="cbp_tmlabel">
									<h2 lass="mytitle">校级-蓝桥杯</h2>
									<p>三等奖</p>
								</div>
							</li>
						</ul>
					</div>
				</div>


			</div>
		</div>
	</div>
</body>
</html>
