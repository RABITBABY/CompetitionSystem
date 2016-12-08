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
<meta charset="UTF-8">
<title>管理员页面</title>
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
</style>
</head>

<body>
	<!--导航条-->
	<div class="man_top">
		<jsp:include page="admin_head.jsp" flush="true"></jsp:include>
	</div>
	<!--中间内容  -->
	<div class="man_content">
		<!--左边  -->
		<div class="con_left">
			<jsp:include page="left.jsp" flush="true"></jsp:include>

		</div>
		<!--右边  -->
		<div class="con_middle">
			<!--<iframe src="man_pro.html" height="auto" width="100%" scrolling="no" frameborder="no"> -->
			<!-- <iframe src="man_pro.jsp" id="myiframe" scrolling="no" onload="changeFrameHeight()" frameborder="0"></iframe> -->
			<%-- <jsp:include page="man_pro.jsp" flush="true"></jsp:include> --%>
			<h3>这是管理员首页</h3>
		</div>

	</div>

</body>

</html>
