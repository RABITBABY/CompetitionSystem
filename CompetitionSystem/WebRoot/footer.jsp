<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'footer.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
body{
	position: relative;
}
.footer{
	width:100%;
	position:absolute;
	bottom:0px;
	height: 150px;
	background: #1E90FF;
	color:white;
}
.footer_detail{
	width: 1024px;
	margin: auto;
	margin-top: 40px;
	font-size:15px;
	font-family: "微软雅黑"
}


</style>
  </head>
  
  <body>
   <div class="footer">
		<div class="footer_detail">
			<p>版权所有:广州商学院地头蛇社团 &nbsp;地址：广州市黄埔区九龙大道206号</p>
			<p>学校办公室:020-22378888 &nbsp; 竞赛咨询热线:020-97948888</p>
			<p>粤公网安备 44011602000060号 &nbsp;粤ICP备15103669号</p>
		</div>
	</div>
  </body>
</html>
