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
<script type="text/javascript" src="<%=path%>/js/managerStudent.js"></script>

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
						<li class="list-group-item change_left">管理报名学生</li>
						<li class="list-group-item" onclick="compResult()">竞赛反馈</li>
						<li class="list-group-item"></li>
					</ul>
				</div>
			</div>
			<div class="col-md-10 right-part">
				<div class="main">
					<div class="row manage-head">
						<div class="combody">
							<div class="col-md-10">
								<span>管理报名学生 </span>
							</div>
						</div>
					</div>
					<div style="margin: 30px">
						<!--列表-->
						<c:forEach items="${teacherComList}" var="teacherCom">
							<h3>${teacherCom.comName }</h3>

							<table class="table">
								<thead>
									<tr>
										<td>组别</td>
										<td>姓名</td>
										<td>性别</td>
										<td>所在专业</td>
										<td>班级</td>
										<td>指导老师</td>
										<td>状态</td>
										<td>操作</td>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${teacherCom.groups}" var="comGroup">
										<c:forEach items="${comGroup.groupsDetails}" var="groDetails"
											varStatus="n">
											<tr>
												<c:if test="${n.index==0}">
													<td rowspan="${fn:length(comGroup.groupsDetails)}">${comGroup.groupsName}组</td>
												</c:if>
												<td>${groDetails.student.studentName}</td>
												<td>${groDetails.student.gender}</td>
												<td>${groDetails.student.profession}</td>
												<td>${groDetails.student.classNo}班</td>
												<td>${comGroup.teacher.teacherName}</td>
												
												<c:choose>
													<c:when test="${comGroup.status==0}">
														<td>等待审核</td>
													</c:when>
													<c:when test="${comGroupcomGroup.status==1}">
														<td>审核不通过</td>
													</c:when>
													<c:when test="${comGroup.status==2}">
														<td>等待缴费</td>
													</c:when>
													<c:when test="${comGroup.status==3}">
														<td>报名成功</td>
													</c:when>
													<c:when test="${comGroup.status==4}">
														<td>比赛结束</td>
													</c:when>
													
												</c:choose>
												
												<c:if test="${n.index==0}">
													<c:choose>
													<c:when test="${comGroup.status==0}">
														<td rowspan="${fn:length(comGroup.groupsDetails)}"><button type="button" class="btn btn-info" onclick="pass(${comGroup.groupsNo})">通过</button>
													<button type="button" class="btn btn-danger">不合适</button></td>
													</c:when>
													<c:otherwise >
														<td rowspan="${fn:length(comGroup.groupsDetails)}"><button type="button" class="btn btn-success">查看详情</button>
												      </td>
													</c:otherwise>
													
												  </c:choose>
												</c:if>
												
												
												
											</tr>
										</c:forEach>
									</c:forEach>
								</tbody>
							</table>
						</c:forEach>

					</div>
				</div>


			</div>
		</div>
	</div>
</body>
</html>
