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
	<link rel="stylesheet" href="<%=path%>/css/studentBrief.css" />

  </head>
  
  <body>
    <div class="main">
			<!--竞赛统计与获奖统计-->
			<div class="row acconut-style" >
				<!--竞赛统计-->
				<div class="col-md-6 comp-account" align="center">
					<div class="icon-comp">
						<i class="glyphicon glyphicon-book"></i>
					    <span>2</span>
					</div>
					<div class="account">
						竞赛次数
					</div>
				</div>
				<!--获奖统计-->
				<div class="col-md-6 award-account" align="center">
					<div class="icon-comp">
						<i class="glyphicon glyphicon-bookmark"></i>
					    <span>2</span>
					</div>
					<div class="account">
						获奖次数
					</div>
				</div>
				
			</div>
			<!--我的消息-->
			<div>
				<div class="msghead">
					<span>我的消息</span>
				</div>
				<!--消息内容-->
				<div>
					<div class="media msg-part">
					  <a class="media-left" href="#">
					  	<img style="width:64px;height: 64px;" src="img/touxiang.png" class="img-rounded">
					  	
					  </a>
					  <div class="media-body mbody">
					    <span class="media-heading madia-msg">学生认证</span>
					    <div>
					    	<p>林欢雯同学，您的认证信息已经提交，客服会在3个工作日内完成审核</p>
					        <span>2016-09-18 10:17:02</span>
					    </div>
					  </div>
					</div>
					
				</div>
				
				
				
			</div>
		</div>
  </body>
</html>
