<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>申报表-审批</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--样式文件引用-->
	<link href="<%=path%>/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
   	<link rel="stylesheet" href="<%=path%>/css/competition.css" />
   	<!--JavaScript插件都是依赖与jQuery库-->
	<script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="<%=path%>/bootstrap/dist/js/bootstrap.min.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
     <div class="main">
       <h1>申报书</h1>
       <form class="form-horizontal" role="form" style="width:65%;">
          <!-- 申报人信息 -->
          <div class="panel panel-info">
	          <div class="panel-heading">
			         申报人信息
			  </div>
			  <div class="panel-body">
			      <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">竞赛负责人</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="甲骨文" readonly>
				    </div>
				  </div>
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">所在单位</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="甲骨文" readonly>
				    </div>
				  </div>
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">联系电话</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="甲骨文" readonly>
				    </div>
				  </div>
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">电子邮箱</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="甲骨文" readonly>
				    </div>
				  </div>
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">填表日期</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="甲骨文" readonly>
				    </div>
				  </div>
				  
			  </div>
          </div>
          <!-- 竞赛情况 -->
          <div class="panel panel-warning">
	          <div class="panel-heading">
			         竞赛情况
			  </div>
			  <div class="panel-body">
			      <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">竞赛名称</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="甲骨文" readonly>
				    </div>
				  </div>
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">竞赛类别</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="甲骨文" readonly>
				    </div>
				  </div>  
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">院级以上竞赛举办者</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="甲骨文" readonly>
				    </div>
				  </div>  
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">竞赛时间</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="甲骨文" readonly>
				    </div>
				  </div>  
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">竞赛地点</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="甲骨文" readonly>
				    </div>
				  </div>  
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">参赛对象</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="甲骨文" readonly>
				    </div>
				  </div>  
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">人数</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="甲骨文" readonly>
				    </div>
				  </div>  
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">校外资助单位</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="甲骨文" readonly>
				    </div>
				  </div>  
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">竞赛简介</label>
				    <div class="col-sm-10">
				      <textarea class="form-control" rows="3" cols="3" readonly style="height: 200px;"></textarea>
				    </div>
				  </div>  
				  
			  </div> 
          </div>
          <!-- 指导老师 -->
          <div class="panel panel-info">
	          <div class="panel-heading">
			         指导老师
			  </div>
			  <div class="panel-body">
				  <table class="table">
				    <tr>
				       <td></td>
				    </tr>
				  </table>
			  </div>
          </div>

		</form>
		
     </div>
    
  </body>
</html>
