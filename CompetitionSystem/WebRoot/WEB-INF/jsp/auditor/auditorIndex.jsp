<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>审核人员中心-学科竞赛</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Content-Tpye" content="text/html;charset=utf-8">
	<!--样式文件引用-->
	<link href="<%=path%>/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="<%=path%>/css/studentComManage.css" />
    <link rel="stylesheet" href="<%=path%>/css/studentCommon.css" />
   	<!--JavaScript插件都是依赖与jQuery库-->
	<script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="<%=path%>/bootstrap/dist/js/bootstrap.min.js"></script>
    
 
  </head>
  
  <body>
     <div>
			<div>
				<div class="head">
					<div class="head-right">
						<a href="#">退出</a>
						<a href="#" id="helloUser">林老师，欢迎您</a>
					</div>
				</div>	
		   </div>
			<div class="row rowadd">
				<div class="col-md-2 left-part">
				   <div class="panel panel-default">
						<!-- Default panel contents -->
						<div class="panel-heading"><i class="glyphicon glyphicon-home"></i>个人中心</div>
						<!-- List group -->
						<ul class="list-group list-g">
							<li class="list-group-item change_left">审批申报表</li>
							<li class="list-group-item">查看申报表</li>
						</ul>
					</div>
				</div>
				<div class="col-md-10 right-part">
					<div class="main">
					<div class="row manage-head">
					    <div class="combody">
					       <div class="col-md-10">
							<span>审批申报表(<span>${fn:length(awards)}</span>)
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
									<th>申报老师</th>
									<th>竞赛时间</th>
									<th>申报状态</th>
								</tr>
							</thead>
							<tbody>
							    <c:forEach items="${groupsList}" var="gro">
							        <tr>
										<td>${gro.project.comName}</td>
										<td>${gro.project.level.levelName}</td>
										<td>${gro.project.comDate}</td>
										<c:choose>
										    <c:when test="${gro.status==0}">
										       <td>正在审核</td>
										    </c:when>
										    <c:when test="${gro.status==1}">
										        <td>审核未通过</td>
										    </c:when>
										    <c:when test="${gro.status==2}">
										        <td>等待缴费</td>
										    </c:when>
										    <c:when test="${gro.status==3}">
										        <td>报名成功</td>
										    </c:when>
										    <c:otherwise>
										        <td>比赛结束</td>
										    </c:otherwise>
										</c:choose>
								    </tr>
							    </c:forEach>								
							</tbody>
						</table>
					</div>
				</div>

				</div>
			</div>
		</div>
  </body>
</html>
