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
    <script type="text/javascript" src="<%=path%>/js/auditorIndex.js"></script>
 
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
							<li class="list-group-item" onclick="historyPage()">查看历史申报表</li>
						</ul>
					</div>
				</div>
				<div class="col-md-10 right-part">
					<div class="main">
					<div class="row manage-head">
					    <div class="combody">
					       <div class="col-md-10">
							<span>审批申报表(<span>${fn:length(comList)}</span>)
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
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
							    <c:forEach items="${comList}" var="com">
							        <tr>
										<td>${com.comName}</td>
										<td>${com.teacher.teacherName}</td>
										<td>${com.time}</td>
										<c:choose>
										    <c:when test="${com.status==0}">
										       <td>等待系主任审批</td>
										    </c:when>
										    <c:when test="${com.status==1}">
										        <td>等待教学处审批</td>
										    </c:when>										   
										</c:choose>
										<td>
										<c:choose>
										    <c:when test="${com.status==0}">
										      <button type="button" class="btn btn-success" onclick="competPage(${com.comId})">审批</button>
										    </c:when>
										    <c:when test="${com.status==1}">
										      <!-- 跳到查看申报表详情。 -->
										      <button type="button" class="btn btn-info" onclick="seeComPage(${com.comId})">查看</button>
										    </c:when>										   
										</c:choose>
										</td>
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
