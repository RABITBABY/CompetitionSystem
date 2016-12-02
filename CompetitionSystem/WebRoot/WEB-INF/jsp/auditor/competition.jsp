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
	<script type="text/javascript" src="<%=path%>/js/competition.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
     <div class="main">
       <h1>申报书</h1>
       <form class="form-horizontal" role="form" style="width:65%;">
           <input class="form-control" type="hidden" value="${competition.comId}">
          <!-- 申报人信息 -->
          <div class="panel panel-info">
	          <div class="panel-heading">
			         申报人信息
			  </div>
			  <div class="panel-body">
			      <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">竞赛负责人</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="${competition.teacher.teacherName}" readonly>
				    </div>
				  </div>
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">所在单位</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="${competition.unit}" readonly>
				    </div>
				  </div>
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">联系电话</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="${competition.phone}" readonly>
				    </div>
				  </div>
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">电子邮箱</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="${competition.email}" readonly>
				    </div>
				  </div>
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">填表日期</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="${competition.date}" readonly>
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
				      <input class="form-control" type="text" value="${competition.comName}" readonly>
				    </div>
				  </div>
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">竞赛类别</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="${competition.level.levelName}" readonly>
				    </div>
				  </div>  
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">院级以上竞赛举办者</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="${competition.host}" readonly>
				    </div>
				  </div>  
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">竞赛时间</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="${competition.time}" readonly>
				    </div>
				  </div>  
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">竞赛地点</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="${competition.place}" readonly>
				    </div>
				  </div>  
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">参赛对象</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="${competition.object}" readonly>
				    </div>
				  </div>  
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">人数</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="${competition.people}" readonly>
				    </div>
				  </div>  
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">校外资助单位</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="${competition.sponsor}" readonly>
				    </div>
				  </div>  
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">竞赛简介</label>
				    <div class="col-sm-10">
				      <textarea class="form-control" rows="3" cols="3" readonly style="height: 200px;">${competition.introduce}</textarea>
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
				    <thead>
				       <tr>
				           <td>姓名</td>
				           <td>职称</td>
				           <td>职务</td>
				           <td>专业</td>
				       </tr>
				    </thead>
				    <tbody>
				       <c:forEach items="${competition.groups}" var="comGroups"></c:forEach>
				       <tr>
				           <td>${comTeacher.}</td>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				       </tr>
				       <tr>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				       </tr>
				       <tr>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				       </tr>
				    </tbody>
				  </table>
			  </div>
          </div>
          
          <!-- 参赛小组情况-->
          <div class="panel panel-info">
	          <div class="panel-heading">
			         参赛小组情况
			  </div>
			  <div class="panel-body">
				  <table class="table">
				    <thead>
				       <tr>
				           <td>组别</td>
				           <td>姓名</td>
				           <td>性别</td>
				           <td>所在专业</td>
				           <td>班级</td>
				           <td>指导老师</td>
				       </tr>
				    </thead>
				    <tbody>
				       <tr>
				           <td rowspan="3">组一</td>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				       </tr>
				       <tr>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				       </tr>
				       <tr>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				       </tr>
				    </tbody>
				  </table>
			  </div>
          </div>
          <!-- 学科竞赛实施方案-->
          <div class="panel panel-info">
	          <div class="panel-heading">
			         学科竞赛实施方案
			  </div>
			  <div class="panel-body">
			      <div class="form-group form-group-lg">
				    <div class="col-sm-12">
				      <textarea class="form-control" rows="3" cols="3" readonly style="height: 200px;">${competition.comName}</textarea>
				    </div>
				  </div> 
				  <h4>附：培训工作安排表</h4>
				  <table class="table">
				    <thead>
				       <tr>
				           <td>老师姓名</td>
				           <td>培训内容</td>
				           <td>培训地点</td>
				           <td>培训日期</td>
				           <td>学时</td>
				       </tr>
				    </thead>
				    <tbody>
				       <tr>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				       </tr>
				       <tr>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				       </tr>
				       <tr>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				       </tr>
				    </tbody>
				  </table>
			  </div>
          </div>
          <!-- 目标 -->
          <div class="panel panel-warning">
	          <div class="panel-heading">
			         目标
			  </div>
			  <div class="panel-body">
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">能力训练目标</label>
				    <div class="col-sm-10">
				      <textarea class="form-control" rows="3" cols="3" readonly style="height: 200px;">${competition.comName}</textarea>
				    </div>
				  </div>  
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">竞赛获奖目标</label>
				    <div class="col-sm-10">
				      <textarea class="form-control" rows="3" cols="3" readonly style="height: 200px;">${competition.comName}</textarea>
				    </div>
				  </div>  
				  
				  
			  </div> 
          </div>
          <!-- 经费预算 -->
          <div class="panel panel-info">
	          <div class="panel-heading">
			        经费预算
			  </div>
			  <div class="panel-body">
				  <h4 style="font-weight: bold;">经费预算</h4>
				  <table class="table">
				    <thead>
				       <tr>
				           <td>支出科目</td>
				           <td>金额（元）</td>
				           <td>计算依据及理由</td>
				       </tr>
				    </thead>
				    <tbody>
				       <tr>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				       </tr>
				       <tr>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				       </tr>
				       <tr>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				       </tr>
				    </tbody>
				  </table>
				  <h5 style="margin-bottom: 30px">合计：</h5>
				  <!-- 课时预算 -->
				  <h4 style="font-weight: bold;">课时预算</h4>
				  <table class="table">
				    <thead>
				       <tr>
				           <td>课时类型</td>
				           <td>课时数（学时）</td>
				           <td>备注</td>
				       </tr>
				    </thead>
				    <tbody>
				       <tr>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				       </tr>
				       <tr>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				       </tr>
				       <tr>
				           <td>xxx</td>
				           <td>xxx</td>
				           <td>xxx</td>
				       </tr>
				    </tbody>
				  </table>
				  <h5>合计：</h5>
				  <h5 style="font-weight: bold;">总计：</h5>
			  </div>
          </div>
          <!-- 审批意见 -->
          <div class="panel panel-warning">
	          <div class="panel-heading">
			         审批意见
			  </div>
			  <div class="panel-body">		  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">校外资助单位意见</label>
				    <div class="col-sm-10">
				      <textarea class="form-control" rows="3" cols="3" readonly style="height: 200px;">${competition.comName}</textarea>
				    </div>
				  </div>  
				    
			  </div> 
          </div>
          
          <div class="form-group" style="padding: 20px">
			<label for="exampleInputEmail1" style="margin-left: 10px">竞赛组织实施单位意见:</label>
				<button type="button" class="btn btn-success" onclick="" style="margin-left: 20px;margin-right: 30px">同意</button>
				<button type="button" class="btn btn-danger" onclick="disagree()">不同意</button>
		  </div>
				  
		  <div id="doCompOppion" style="display: none;" align="center" >
		     <div class="form-group form-group-lg" >
				<label class="col-sm-2 control-label" for="formGroupInputLarge">竞赛组织实施单位意见</label>				    
				<div class="col-sm-10">
				   <textarea class="form-control" rows="3" cols="3"  style="height: 200px;"></textarea>
				</div>
			 </div>
			 <button type="submit" class="btn btn-primary">提交</button>
		  </div>
		  

		</form>
		
     </div>
    
  </body>
</html>
