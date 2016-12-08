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
	height: 600px;
}
</style>

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
			<s:if test="article.articleType eq 1">
				<h2>竞赛征文修改</h2>
			</s:if>
			<s:elseif test="article.articleType eq 2">
				<h2>动态公告修改</h2>
			</s:elseif>
			<s:elseif test="article.articleType eq 3">
				<h2>获奖公告修改</h2>
			</s:elseif>
			<form method="post" action="article/updateArticle"
				onsubmit="return updateCheck()">
				<div class="input-group">
					<span class="input-group-addon">文章标题</span> <input type="text"
						class="form-control" placeholder="标题" name="article.title"
						value="${article.title }"> <input type="hidden"
						name="article.articleType" value="${article.articleType }">
					<input type="hidden" name="article.articleId"
						value="${article.articleId }"> 
					<input type="hidden"
						value='${article.content}' name="article.content"
						id="article_content">
					<input type="hidden"
					value='${article.project.comId}' name="article.project.comId">
					<input type="hidden"
					value='${article.pubDate}' name="article.pubDate">
					
					<input type="hidden"
					value='${article.pubUser.adminNo}' name="article.pubUser.adminNo">
					

				</div>
				<!-- 编辑器 -->
				<div class="editor_con">
					<script id="editor" type="text/plain" class="ueditor"></script>
				</div>

				<div>
					<button class="btn con_btn btn-primary" onclick="admin/toCom">退出编辑</button>
					<input type="submit" class="btn con_btn btn-primary" value="发布文章">
					&nbsp;
				</div>
			</form>
		</div>

	</div>


</body>
<script>
	//初始化富文本框
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
	//文本框记载后进行的操作，将上次编辑的内容显示在编辑器中
	ue.addListener('ready', function(editor) {
		text = $("#article_content").val();//获取上次的内容
		text.replace(/"/, "'");
		setContent();
	});

	function updateCheck() {
		//将编辑器内容获取出来，添加到隐藏的内容输入框
		var content = getContent();
		$("#article_content").val(content);
		return true;
	}
</script>
</html>
