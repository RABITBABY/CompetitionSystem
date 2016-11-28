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
<title>管理——商品</title>
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

.add {
	float: right;
	margin-right: 30px;
}
</style>
</head>

<body>
	<!--导航条-->
	<div class="man_top">
		<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">&nbsp;</a> <a class="navbar-brand"
					href="#">&nbsp;LOGO&nbsp;</a>
			</div>

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">

					<li class="active"><a href="#">管理员页面</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">你好，MAX</a></li>
					<li><a href="#">退出</a></li>
				</ul>
			</div>
		</div>
		</nav>
	</div>
	<!--中间内容  -->
	<div class="man_content">
		<!--左边  -->
		<div class="con_left">
			<jsp:include page="left.jsp" flush="true"></jsp:include>
		</div>
		<!--右边  -->
		<div class="con_middle">
				<ol class="breadcrumb">
				<li>
					<a href="">管理员</a>
				</li>
				<li>
					<a href="">竞赛动态</a>
				</li>
				<li class="active">竞赛动态列表</li>
			</ol>

			<div>
				<div>
					<label class="_title">竞赛动态列表</label>

					<button type="button" class="btn btn-primary add">
						<span class="glyphicon glyphicon-plus-sign"></span>
						添加竞赛动态信息</button>
				</div>
				<div class="list-group _center">
					<a href="#" class="list-group-item active ">
						<h4 class="list-group-item-heading">第五届甲骨文大赛</h4>
						<p class="list-group-item-text">全国大学生，java相关技术的比赛....</p>
					</a>
				</div>
				<div class="list-group _center">
					<a href="#" class="list-group-item ">
						<h4 class="list-group-item-heading">第五届甲骨文大赛</h4>
						<p class="list-group-item-text">全国大学生，java相关技术的比赛....</p>
					</a>
				</div>
				<div class="list-group _center">
					<a href="#" class="list-group-item ">
						<h4 class="list-group-item-heading">第五届甲骨文大赛</h4>
						<p class="list-group-item-text">全国大学生，java相关技术的比赛....</p>
					</a>
				</div>
				<div class="list-group _center">
					<a href="#" class="list-group-item ">
						<h4 class="list-group-item-heading">第五届甲骨文大赛</h4>
						<p class="list-group-item-text">全国大学生，java相关技术的比赛....</p>
					</a>
				</div>
			</div>

		</div>

	</div>

	<!-- 添加弹出框 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true"
		data-backdrop="false">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">上传优秀作品</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" role="form"
						enctype="multipart/form-data" action="admin/savePro" method="post">
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">作品图片</label>
							<div class="col-sm-9">
								<input type="file" name="upload" id="exampleInputFile">
							</div>

						</div>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">作品名称</label>
							<div class="col-sm-9">
								<input type="text" name="pro.proName" class="form-control" id="inputEmail3">
							</div>
						</div>

						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">获得奖项</label>
							<div class="col-sm-9">
								<input type="text" name="pro.award" class="form-control" id="inputPassword3">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">作品作者</label>
							<div class="col-sm-9">
								<input type="text" name="pro.membersName" class="form-control" id="inputPassword3">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">作品简介</label>
							<div class="col-sm-9">
								<textarea class="form-control" name="pro.introduction" rows="3"></textarea>
							</div>

						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">取消</button>
							<button type="submit" class="btn btn-primary">上传</button>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>
</body>
</html>
