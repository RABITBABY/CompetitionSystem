<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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

<title>首页</title>
<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="bootstrap/dist/js/bootstrap.js"></script>
<script type="text/javascript" src="bootstrap/dist/js/npm.js"></script>
<link rel="stylesheet" href="bootstrap/dist/css/bootstrap-theme.css" />
<link rel="stylesheet" href="bootstrap/dist/css/bootstrap.css" />
<link rel="stylesheet" href="${base }css/index/topbar.css">
<link rel="stylesheet" href="${base }css/index/index.css">
<link rel="stylesheet" href="${base }css/index/showList.css">
</head>

<body>
	 <s:debug />
	<!--导航条-->
	<div class="_top">
		<label class="bar_title">学科竞赛管理系统</label>
		<ul class="top_bar">
			<li>首页</li>
			<li>请登录</li>
		</ul>
	</div>
	<!--中间内容  -->
	<div class="list_content">

		<div class="list_content">
			<div>
				<div>
				<s:if test="type eq 1">
					<h3>竞赛信息列表</h3>
				</s:if>
				<s:elseif test="type eq 2">
					<h3>竞赛信息列表</h3>
				</s:elseif>
				<s:elseif test="type eq 3">
					<h3>竞赛信息列表</h3>
				</s:elseif>
					
					<hr />
				</div>
				<ul class="ul">
					<s:iterator value="page.list" var="c">
						<li class="li"><span class="glyphicon glyphicon-hand-right"></span>
							<a href="toDetail?articleId=${c.articleId }"><label >&nbsp;${c.title}</label> <label style="float: right"> &nbsp; <fmt:formatDate
									value="${c.pubDate}" pattern="yyyy-MM-dd" />
						</label></a></li>
					</s:iterator>

					<li class="li">
					<nav>
						<ul class="pagination"  style="float: right">
							<s:if test="page.pageIndex eq 1">
								<li><a href="toListPage?type=1&indexPage=1">&laquo;</a></li>
							</s:if>
							<s:else>
								<li><a href="toListPage?type=1&indexPage=${page.pageIndex -1 }">&laquo;</a></li>
							</s:else>
							
							<s:iterator begin="1" end="page.pageCount" var="p" step="1">
								<li><a href="toListPage?type=1&indexPage=${p}">${p}</a></li>
							</s:iterator>
							
							<s:if test="page.pageIndex eq page.pageCount ">
							<li><a href="toListPage?type=1&indexPage=${page.pageCount}">&raquo;</a></li>
							</s:if>
							<s:else>
							
							<li><a href="toListPage?type=1&indexPage=${page.pageIndex + 1}">&raquo;</a></li>
							</s:else>
						</ul>
						</nav>
					</li>
				</ul>
			</div>
		</div>




	</div>
	<jsp:include page="footer.jsp" flush="true"></jsp:include>

</body>
</html>
