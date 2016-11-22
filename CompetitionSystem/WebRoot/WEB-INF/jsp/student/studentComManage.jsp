<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
     <base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <!--样式文件引用-->
	<link rel="stylesheet" href="<%=path%>/css/studentComManage.css" />
  </head>
  
  <body>
     	<div class="main">
			<div class="row manage-head">
				<div class="col-md-10">
					<span>我的竞赛(<span>4</span>)</span>
				</div>
				<div class="col-md-2 addbtn">
					<button type="button" class="btn btn-info">去报名</button>
				</div>
			</div>
			<div>
				<!--排序-->
				<div class="row range">
					<div class="col-md-1 range-title">显示：</div>
					<div class="col-md-11">
						<ul class="nav nav-pills" role="tablist">
						  <li role="presentation" class="active"><a href="#">全部</a></li>
						  <li role="presentation"><a href="#">报名成功</a></li>
						  <li role="presentation"><a href="#">等待缴费</a></li>
						  <li role="presentation"><a href="#">正在审核</a></li>
						</ul>
					</div>										
				</div>
				<!--列表-->
				<table class="table table-hover table-bordered comp-table">
				  <thead>				  	
				  	 <tr>
				  	 	<th>名称</th>
				  	 	<th>报名时间</th>
				  	 	<th>金额(元)</th>
				  	 	<th>报名状态</th>
				  	 </tr>
				  </thead>
				  <tbody>
				  	 <tr>
				  	    <td>蓝桥杯校赛</td>  	
				  	    <td>2016-08-07</td>
				  	    <td>0.00</td>
				  	    <td>通过审核</td>
				  	 </tr>
				  	 <tr>
				  	    <td>蓝桥杯省赛</td>  	
				  	    <td>2016-09-07</td>
				  	    <td>300.00</td>
				  	    <td>等待缴费</td>
				  	 </tr>
				  	 <tr>
				  	    <td>甲骨文java程序设计大赛</td>  	
				  	    <td>2016-10-07</td>
				  	    <td>0.00</td>
				  	    <td>未通过</td>
				  	 </tr>
				  	 <tr>
				  	    <td>蓝桥杯校赛</td>  	
				  	    <td>2016-08-07</td>
				  	    <td>0.00</td>
				  	    <td>正在审核</td>
				  	 </tr>
				  </tbody>
				</table>
			</div>
		</div>
  </body>
</html>
