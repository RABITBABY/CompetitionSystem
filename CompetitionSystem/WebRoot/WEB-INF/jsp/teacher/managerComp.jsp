<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>教师个人中心-学科竞赛</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="Content-Tpye" content="text/html;charset=utf-8">
<!--样式文件引用-->
<link href="<%=path%>/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" href="<%=path%>/css/studentCommon.css" />
<link rel="stylesheet" href="<%=path%>/css/studentComManage.css" />
<!--JavaScript插件都是依赖与jQuery库-->
<script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
<script type="text/javascript"
	src="<%=path%>/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/teacherCommon.js"></script>
<script type="text/javascript" src="<%=path%>/js/managerComp.js"></script>

</head>

<body>
	<div>
		<div>
			<div class="head">
				<div class="head-right">
					<a href="#">退出</a> <a href="#" id="helloUser">林老师，欢迎您</a>
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
						<li class="list-group-item" onclick="applyCom()">竞赛申报</li>
						<li class="list-group-item" onclick="watchResult()">查看审批结果</li>
						<li class="list-group-item" onclick="managerStudent()">管理报名学生</li>
						<li class="list-group-item change_left">竞赛反馈</li>
						<li class="list-group-item"></li>
					</ul>
				</div>
			</div>
			<div class="col-md-10 right-part">
				<div class="main">
					<div class="row manage-head">
						<div class="combody">
							<div class="col-md-10">
								<span>竞赛反馈(<span>${fn:length(projectList)}</span>)
								</span>
							</div>
						</div>
					</div>
					<div>
						<!--列表-->
						<table class="table table-hover table-bordered comp-table">
							<thead>
								<tr>
									<th>竞赛名称</th>
									<th>竞赛时间</th>
									<th>状态</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${projectList}" var="comList">
									<tr>
										<td><input type="hidden" value="${comList.comId}" />${comList.comName}</td>
										<td><fmt:formatDate value="${comList.comDate}"
												pattern="yyyy-MM-dd" /></td>
										<c:choose>
											<c:when test="${comList.status==0}">
												<td>赛前准备</td>
											</c:when>
											<c:when test="${comList.status==1}">
												<td>比赛结束</td>
											</c:when>
											<c:when test="${comList.status==2}">
												<td>已反馈</td>
											</c:when>

										</c:choose>
										<td><c:choose>
												<c:when test="${comList.status==0}">
													<button type="button" class="btn btn-info" onclick=""
														disabled="disabled">反馈结果</button>
												</c:when>
												<c:when test="${comList.status==1}">
													<button type="button" class="btn btn-info" onclick="result(${comList.comId})">反馈结果</button>
												</c:when>
												<c:otherwise>
													<button type="button" class="btn btn-success" onclick="seeResult(${comList.comId})">查看详情</button>

												</c:otherwise>
											</c:choose></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>

					</div>
				</div>
                
                
                <div id="theModel">
                
                </div>


			</div>
		</div>
	</div>
</body>
</html>
