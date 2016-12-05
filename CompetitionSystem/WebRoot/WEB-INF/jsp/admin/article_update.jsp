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
<title>修改文章</title>
<base href="<%=basePath%>">
<script type="text/javascript" src="${base }js/jquery-2.1.3.min.js"></script>
<script type="text/javascript"
	src="${base }bootstrap/dist/js/bootstrap.js"></script>
<script type="text/javascript" src="${base }bootstrap/dist/js/npm.js"></script>
<link rel="stylesheet"
	href="${base }bootstrap/dist/css/bootstrap-theme.css" />
<link rel="stylesheet" href="${base }bootstrap/dist/css/bootstrap.css" />
<script type="text/javascript" charset="utf-8"
	src="${base }ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${base }ueditor/ueditor.all.min.js">
	
</script>
<script type="text/javascript" charset="utf-8"
	src="${base }ueditor/lang/zh-cn/zh-cn.js"></script>
<style>
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
	height: auto;
	float: right;
}

.con_btn {
	float: right;
	margin: 10px;
}

.ueditor {
	width: 1024px;
	height: 500px;
	margin-top: 20px;
}

.editor_con {
	width: 1024px;
	height: 700px;
}
</style>

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
			<s:if test="type eq 1">
				<h2>竞赛征文修改</h2>
			</s:if>
			<s:elseif test="type eq 2">
				<h2>动态公告修改</h2>
			</s:elseif>
			<s:elseif test="type eq 3">
				<h2>获奖公告修改</h2>
			</s:elseif>

			<div class="input-group">
				<span class="input-group-addon">文章标题</span> <input type="text"
					class="form-control" placeholder="标题" id="article_title"
					name="article.title" value="${article.title }"> <input
					value="${type }" type="hidden" id="article_type">

				<%-- 	<input type="hidden" value="${articleId }" name=""
					id="article_comId"> --%>

				<input type="hidden" value='${article.content}'
					name="article.content" id="article_content">

			</div>

			<div class="editor_con">
				<button class="btn  btn-primary" style="margin-top: 15px"
					onclick="setContent()">继续上次内容</button>
				<script id="editor" type="text/plain" class="ueditor"></script>
			</div>

			<div class="">
				<button class="btn con_btn btn-primary" >退出编辑</button>
				<button class="btn con_btn btn-primary" onclick="pubArticle()">发布文章</button>
				&nbsp;

			</div>

		</div>

	</div>


</body>
<script>
	//初始化富文本框
	var ue = UE.getEditor('editor');
	var text = "sdfsdf";
	//获取富文本编辑器内容  
	function getContent() {
		text = UE.getEditor('editor').getContent();
		console.log(text);
		return text;
	}
	//设置编辑器内容  
	function setContent() {
		UE.getEditor('editor').setContent(text);
	}

	ue.addListener('ready', function(editor) {
		text = $("#article_content").val();
		text.replace(/"/, "'");
		setContent();
	});
</script>
</html>
