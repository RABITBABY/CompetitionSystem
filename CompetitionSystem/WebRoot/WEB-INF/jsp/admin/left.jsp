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

<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="bootstrap/dist/js/bootstrap.js"></script>
<script type="text/javascript" src="bootstrap/dist/js/npm.js"></script>
<link rel="stylesheet" href="bootstrap/dist/css/bootstrap-theme.css" />
<link rel="stylesheet" href="bootstrap/dist/css/bootstrap.css" />
<script type="text/javascript">
	$(function() {
		$(".list-group-item").click(function() {
			//	$(this).css("font-size","25px");
		});
	})
</script>

</head>

<body>
	<div class="con_left">
		<div class="list-group">
			<a href="" class="list-group-item active"> 竞赛资讯 </a> <a
				href="admin/toRecCom" class="list-group-item">近期比赛</a> <a
				href="admin/toRecAwards" class="list-group-item">近期获奖</a> <a
				class="list-group-item active"> 竞赛信息管理 </a> <a href="admin/toCom?type=1"
				class="list-group-item">发布竞赛征文</a> <a href="admin/toNew?type=2"
				class="list-group-item">发布竞赛动态</a> <a href="admin/toAwards?type=3"
				class="list-group-item">发布获奖信息</a> <a href="admin/toPro"
				class="list-group-item">发布优秀作品</a> <a href=""
				class="list-group-item active"> 账号管理 </a> <a href=""
				class="list-group-item">添加用户</a> <a href="" class="list-group-item">权限管理</a>
			<a href="" class="list-group-item active"> 上传文件 </a> <a href=""
				style="height: 300px;" class="list-group-item "> </a>
		</div>

	</div>
</body>
</html>
