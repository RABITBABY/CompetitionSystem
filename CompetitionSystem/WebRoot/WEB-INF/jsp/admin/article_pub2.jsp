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
<title>管理——商品</title>
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
	height: 620px;
}
</style>
<script type="text/javascript">
	var ue = UE.getEditor('editor');
	var text = "";
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

	function pubArticle() {
		var title = $("#article_title").val();
		var content = getContent();
		alert(content);
		var type = $("#article_type").val();
		var comId = $("#article_comId").val();
		console.log(comId);
		var url = "article/pubArticl?article.title=" + title
				+ "&article.content=" + content + "&article.articleType="
				+ type + "&article.project.comId=" + comId;
		location = url;
		//pubArticl

	}

	function subButton() {
		var content = getContent();
		$("#article_content").val(content);
		return true;
	}
</script>
</head>

<body>
	<s:debug></s:debug>
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
			<s:if test="type eq 1">
				<h2>竞赛征文发布</h2>
			</s:if>
			<s:elseif test="type eq 2">
				<h2>动态公告发布</h2>
			</s:elseif>
			<s:elseif test="type eq 3">
				<h2>获奖公告发布</h2>
			</s:elseif>

			<form action="article/pubOtherArticle" method="post" onsubmit="return subButton()">
				<div class="input-group">
					<span class="input-group-addon">文章标题</span> 
					<input type="text" class="form-control" placeholder="标题" name="article.title" id="article_title">
					<input value="${type }" type="hidden" id="article_type" name="article.articleType"> 
					<input type="hidden"  id="article_content" name='article.content' >
				</div>

				<div class="editor_con">
					<script id="editor" type="text/plain" class="ueditor"></script>
				</div>

				<div class="">
					<button class="btn con_btn btn-primary">退出编辑</button>
					<input class="btn con_btn btn-primary" type="submit" value="发布文章">
					&nbsp;

				</div>
			</form>

		</div>

	</div>


</body>
</html>
