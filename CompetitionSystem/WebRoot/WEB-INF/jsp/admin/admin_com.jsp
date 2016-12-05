<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
<script type="text/javascript">
	$(function() {
		$(".com_art a").hover(function() {
			$(this).addClass("active");
		}, function() {
			$(this).removeClass("active");
		});
		
		
	})
	
	function delectArticle(id) {
		if(confirm("确定要删除？")){
			
		location="article/delectArticle?articleId="+id;
		}
	}
</script>
</head>

<body>
	<s:debug></s:debug>
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
				<li><a href="">管理员</a></li>
				<li><a href="">竞赛信息</a></li>
				<li class="active">竞赛列表</li>
			</ol>

			<div>
				<div>
					<label class="_title">竞赛列表</label>
					<!--  -->
					<button type="button" class="btn btn-primary add"
						onclick="location='admin/toRecCom'">
						<span class="glyphicon glyphicon-plus-sign"></span> 添加竞赛信息
					</button>
				</div>

				<s:iterator value="articles" var="c">
					<div class="list-group com_art _center">
						<a  class="list-group-item  " style="height:65px">
							<div style="width:700px;heigth:65px;float:left">
								<h4 class="list-group-item-heading">${c.title }</h4>
								<div  style="height:18px;overflow: hidden;" class="list-group-item-text">
									<%-- ${c.content } --%>
									<s:property value="#c.content" escape="false"/>
								</div>
							</div>
							<div style="float: right">
								<button class="btn btn-info " onclick="location='article/toUpdate?articleId=${c.articleId}'">修改</button>
								<button class="btn btn-danger"  onclick="delectArticle(<s:property value="#c.articleId" />)">删除</button>
							</div>
						</a>
					</div>
				</s:iterator>
			</div>

		</div>

	</div>



	<div class="modal fade" id="pubModel" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true"
		data-backdrop="false">

		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title">选择要发布的竞赛</h4>
				</div>

				<div class="modal-body">

					<div class="form-group">
						<div class="col-sm-9">
							<s:iterator value="projects" var="p">

								<%-- <input type="radio" id="comName">
								<label for="comName" class="">${p.comName}</label>
								<br /> --%>
							</s:iterator>
						</div>
					</div>
				</div>


				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal"
						onclick="initInput()">取消</button>
					<button type="submit" class="btn btn-primary">保存</button>
				</div>

			</div>
		</div>
	</div>
</body>
</html>
