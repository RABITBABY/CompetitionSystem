<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
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
	<script type="text/javascript" src="<%=path%>/js/updateComp.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
     <div class="main">
       <h1>申报书</h1>
       <form class="form-horizontal" role="form" style="width:80%;" >
           <input class="form-control" type="hidden" value="${competition.comId}" name="comId">
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
				      <input class="form-control" type="text" value="${competition.unit}">
				    </div>
				  </div>
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">联系电话</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="${competition.phone}">
				    </div>
				  </div>
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">电子邮箱</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="${competition.email}">
				    </div>
				  </div>
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">填表日期</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="<fmt:formatDate value='${competition.date}' pattern='yyyy-MM-dd'/>" readonly>
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
				      <input class="form-control" type="text" value="${competition.comName}" >
				    </div>
				  </div>
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">竞赛类别</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="${competition.level.levelName}">
				    </div>
				  </div>  
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">院级以上竞赛举办者</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="${competition.host}">
				    </div>
				  </div>  
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">竞赛时间</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="${competition.time}">
				    </div>
				  </div>  
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">竞赛地点</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="${competition.place}">
				    </div>
				  </div>  
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">参赛对象</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="${competition.object}">
				    </div>
				  </div>  
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">人数</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="${competition.people}">
				    </div>
				  </div>  
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">校外资助单位</label>
				    <div class="col-sm-10">
				      <input class="form-control" type="text" value="${competition.sponsor}">
				    </div>
				  </div>  
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">竞赛简介</label>
				    <div class="col-sm-10">
				      <textarea class="form-control" rows="3" cols="3" style="height: 200px;">${competition.introduce}</textarea>
				    </div>
				  </div>  
				  
			  </div> 
          </div>
          <!-- 指导老师 -->
          <div class="panel panel-info">
	          <div class="panel-heading">
	             <div class="row">
				  <div class="col-md-10"> 指导老师</div>
				  <div class="col-md-2"><button type="button" class="btn btn-success" onclick="addGuide()">添加</button></div>
				</div>
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
				    <tbody id="guide">
				       <c:forEach items="${competition.guideTeachers}" var="comTeacher">
				       <tr>
				           <td><input class='form-control' type='text'  value="${comTeacher.teacherName}"></td>
				           <td><input class='form-control' type='text'  value="${comTeacher.title}"></td>
				           <td><input class='form-control' type='text'  value="${comTeacher.post}"></td>
				           <td><input class='form-control' type='text'  value="${comTeacher.department.departmentName}"></td>
				       </tr>
				       </c:forEach>
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
				    <c:forEach items="${competition.groups}" var="comGroup">
				        <c:forEach items="${comGroup.groupsDetails}" var="groDetails" varStatus="n">
				          <tr>
					          <c:if test="${n.index==0}"> 
					              <td rowspan="${fn:length(comGroup.groupsDetails)}">${comGroup.groupsName}组</td>
					         </c:if> 
					          <td>${groDetails.student.studentName}</td>
					          <td>${groDetails.student.gender}</td>
					          <td>${groDetails.student.profession}</td>
				              <td>${groDetails.student.classNo}班</td>
				              <td>${comGroup.teacher.teacherName}</td>			        
				         </tr>
				        </c:forEach>
				    </c:forEach>
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
				      <textarea class="form-control" rows="3" cols="3" style="height: 200px;">${competition.plan}</textarea>
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
				       <c:forEach items="${competition.schedule}" var="comSch">
				       <tr>
				           <td>${comSch.teacher.teacherName}</td>
				           <td>${comSch.content}</td>
				           <td>${comSch.position}</td>				           
				           <td><fmt:formatDate value="${comSch.date}" pattern="yyy-MM-dd"/></td>
				           <td>${comSch.hours}</td>
				       </tr>
				       </c:forEach>
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
				      <textarea class="form-control" rows="3" cols="3" style="height: 200px;">${competition.tgoal}</textarea>
				    </div>
				  </div>  
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">竞赛获奖目标</label>
				    <div class="col-sm-10">
				      <textarea class="form-control" rows="3" cols="3" style="height: 200px;">${competition.wgoal}</textarea>
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
				       <c:set var="budSum" value="0" ></c:set>
				       <c:forEach items="${competition.budget}" var="comBud">
					       <tr>
					           <td>${comBud.subject}</td>
					           <td>${comBud.sum}</td>
					           <td>${comBud.reasons}</td>
					       </tr>
					       <c:set var="budSum" value="${comBud.sum+budSum}" ></c:set>
				       </c:forEach>
				    </tbody>
				  </table>
				  <h5 style="margin-bottom: 30px">合计：${budSum}元</h5>
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
				       <c:set var="courseSum" value="0" ></c:set>
				       <c:forEach items="${competition.hour}" var="comHour">
					       <tr>
					           <td>${comHour.type}</td>
					           <td>${comHour.hours}</td>
					           <td>${comHour.remarks}</td>
					       </tr>
					       <c:set var="courseSum" value="${comHour.hours+courseSum}" ></c:set>
				       </c:forEach>
				    </tbody>
				  </table>
				  <h5>合计：${courseSum}小时</h5>
				  <!-- <h5 style="font-weight: bold;">总计：</h5> -->
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
				      <textarea class="form-control" rows="3" cols="3" readonly style="height: 200px;">${competition.sopinion}</textarea>
				    </div>
				  </div>  
				  
				  <div class="form-group">
				    <label for="input1" class="col-sm-2 control-label">资助单位负责人</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="input1" readonly value="${competition.slsign}">
				    </div>
				  </div>
				  
				  <div class="form-group">
				    <label for="input2" class="col-sm-2 control-label">日期</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="input2" readonly value="<fmt:formatDate value="${competition.slsdate}" pattern="yyy-MM-dd"/>">
				    </div>
				  </div>
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">竞赛组织实施单位意见</label>
				    <div class="col-sm-10">
				      <textarea class="form-control" rows="3" cols="3" readonly style="height: 200px;">${competition.uopinion}</textarea>
				    </div>
				  </div>  
				  
				  <div class="form-group">
				    <label for="input1" class="col-sm-2 control-label">系部签字</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="input1" readonly value="${competition.dsign}">
				    </div>
				  </div>
				  
				  <div class="form-group">
				    <label for="input2" class="col-sm-2 control-label">日期</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="input2" readonly value="<fmt:formatDate value="${competition.dsdate}" pattern="yyy-MM-dd"/>">
				    </div>
				  </div>
				  
				  
				  <div class="form-group form-group-lg">
				    <label class="col-sm-2 control-label" for="formGroupInputLarge">教学处审批意见</label>
				    <div class="col-sm-10">
				      <textarea class="form-control" rows="3" cols="3" readonly style="height: 200px;">${competition.tdopinion}</textarea>
				    </div>
				  </div>  
				  
				  <div class="form-group">
				    <label for="input1" class="col-sm-2 control-label">教学处签字</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="input1" readonly value="${competition.olsign}">
				    </div>
				  </div>
				  
				  <div class="form-group">
				    <label for="input2" class="col-sm-2 control-label">日期</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="input2" readonly value="<fmt:formatDate value="${competition.olsdate}" pattern="yyy-MM-dd"/>">
				    </div>
				  </div>
				    
			  </div> 
          </div>      
		  
		  <div align="center" >
		     <button type="button" class="btn btn-primary" onclick="submitForm()">提交</button>
		  </div>

		</form>
		
     </div>
    
  </body>
</html>
