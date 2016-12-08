<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title></title>
<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="bootstrap/dist/js/bootstrap.js"></script>
<script type="text/javascript" src="bootstrap/dist/js/npm.js"></script>
<link rel="stylesheet" href="bootstrap/dist/css/bootstrap-theme.css" />
<link rel="stylesheet" href="bootstrap/dist/css/bootstrap.css" />
<style type="text/css">
.man_content {
	width: 1200px;
	height: 100%;
	margin: auto;
}

.con_left {
	width: 200px;
	height: 500px;
	float: left;
	margin-right: 30px;
}

.con_middle {
	width: 970px;
	height: 500px;
	float: right;
}

._title {
	font-size: 25px;
	font-weight: 0;
	margin-left: 10px;
}

.selectBar {
	margin: 10px 20px;
}

.select_lable {
	font-size: 20px;
	margin-left: 50px
}

.select_content {
	width: 80px;
	height: 30px;
	display: inline-block;;
	border-radius: 5px;
	text-align: center;
}
.head_heigth{
height: 50px;
}
</style>
<script type="text/javascript">
	//异步获取符合条件的竞赛信息
	function selectCom(level, ispub) {
		//异步请求获取数据
		$.ajax({
			type : "post",
			url : "admin/selectCom",
			data : {
				"level" : level,
				"isPub" : ispub
			},
			dataType : "json",
			success : function(data) {
				//清空
				$("#projectList").empty();
				console.log(data);
				
				
				
				
				for(var i=0;i<data.projects.length;i++){
					 
					 if(data.projects[i].isPublish==0){
						 $("#projectList").append(
								 
								 "<div class='panel panel-primary'>"
									+"<div class='panel-heading panel_head head_heigth'  >"
									+data.projects[i].comName
									+"<button class='btn btn-default ' onclick='location=\"article/toPublic?type=1&comId="+data.projects[i].comId+"\"'"
										+"style='float: right;margin-right: 50px;'>发布征文</button></div>"+
										"<div class='panel-body panel1'>"
										+"<div> <h4 class='col-lg-4'>竞赛编号："+data.projects[i].comId +"</h4>"
											+"<h4 class='col-lg-4'>竞赛级别："+data.projects[i].level.levelName+"</h4>"
											+"<h4 class='col-lg-4'>校承办单位："+data.projects[i].sOrganizer +"</h4>"
											+"<h4 class='col-lg-4'>主办单位："+data.projects[i].hunit +"</h4>"
											+"<h4 class='col-lg-4'> 报名开始时间："
											+data.projects[i].applyBeginDate +"</h4>"
											+"<h4 class='col-lg-4'> 报名结束时间："
											+data.projects[i].applyEndDate 
											+" </h4> <h4 class='col-lg-4'> 比赛时间："
											+data.projects[i].comDate 
											+"</h4> <h4 class='col-lg-4'>报名费："+data.projects[i].cost +"元</h4>"
											+"<h4 class='col-lg-12'>竞赛简介："+data.projects[i].introduction +"</h4>"
											+"</div> </div> </div>"	
										
						 
						 
						 );
					 }else if(data.projects[i].isPublish==1){
					 
					 $("#projectList").append(
							 
							 "<div class='panel panel-primary'>"
								+"<div class='panel-heading panel_head head_heigth'  >"
								+data.projects[i].comName
						+" <button class='btn btn-success '"
						+"style='float: right;margin-right: 20px;'>查看征文</button></div>"+
						"<div class='panel-body panel1'>"
						+"<div> <h4 class='col-lg-4'>竞赛编号："+data.projects[i].comId +"</h4>"
							+"<h4 class='col-lg-4'>竞赛级别："+data.projects[i].level.levelName+"</h4>"
							+"<h4 class='col-lg-4'>校承办单位："+data.projects[i].sOrganizer +"</h4>"
							+"<h4 class='col-lg-4'>主办单位："+data.projects[i].hunit +"</h4>"
							+"<h4 class='col-lg-4'> 报名开始时间："
							+data.projects[i].applyBeginDate +"</h4>"
							+"<h4 class='col-lg-4'> 报名结束时间："
							+data.projects[i].applyEndDate 
							+" </h4> <h4 class='col-lg-4'> 比赛时间："
							+data.projects[i].comDate 
							+"</h4> <h4 class='col-lg-4'>报名费："+data.projects[i].cost +"元</h4>"
							+"<h4 class='col-lg-12'>竞赛简介："+data.projects[i].introduction +"</h4>"
							+"</div> </div> </div>"	
						
					 
					 );
					 }
						
					
				}
			},
			error : function() {
				
				alert("系统异常，请稍后重试！");
			}

		});

	}

	$(function() {
		$(".panel_head").click(function() {
			//alert("sd");
		});

		$(".select_content").change(function() {
			//获取两个选项框的值
			var level = $("#ComLevelSelect").val();
			var ispub = $("#ispubSelect").val();
			//局部刷新请求获取数据集合
			selectCom(level, ispub);

		});
	})
</script>
</head>

<body>
	<!--导航条-->
	<div class="man_top">
		<jsp:include page="admin_head.jsp" flush="true"></jsp:include>
	</div>

	<div class="man_content">
		<div class="con_left">
			<jsp:include page="left.jsp" flush="true"></jsp:include>
		</div>

		<div class="con_middle">
			<label class="_title">可报名比赛</label>

			<div class="selectBar">
				<lable class="select_lable">比赛等级:</lable>
				<select class="select_content" id="ComLevelSelect">
					<option value="">全部</option>
					<option value="4">校级</option>
					<option value="3">市级</option>
					<option value="2">省级</option>
					<option value="1">国家级</option>
				</select>

				<lable class="select_lable">征文发布状态:</lable>
				<select class="select_content" id="ispubSelect">
					<option value="">全部</option>
					<option value="0">未发布</option>
					<option value="1">已发布</option>
				</select>
			</div>

			<div id="projectList">
				<s:iterator value="projects" var="p">
					<div class="panel panel-primary">
						<div class="panel-heading panel_head" style="height: 50px">
							${p.comName }
							<s:if test="#p.isPublish eq 0 ">
								<button class="btn btn-default "
									onclick="location='article/toPublic?type=1&comId=${p.comId}'"
									style="float: right;margin-right: 50px;">发布征文</button>
							</s:if>
							<s:else>
								<button class="btn btn-success "
									style="float: right;margin-right: 20px;">查看征文</button>
							</s:else>
						</div>
						
						<div class="panel-body panel1">
							<div>
								<h4 class="col-lg-4">竞赛编号：${p.comId }</h4>
								<h4 class="col-lg-4">竞赛级别：${p.level.levelName}</h4>
								<h4 class="col-lg-4">校承办单位：${p.sOrganizer }</h4>
								<h4 class="col-lg-4">主办单位：${p.hunit }</h4>
								<h4 class="col-lg-4">
									报名开始时间：
									${p.applyBeginDate }
										
								</h4>
								<h4 class="col-lg-4">
									报名结束时间：
									${p.applyEndDate }
										
								</h4>
								<h4 class="col-lg-4">
									比赛时间：
									${p.comDate }
								</h4>
								<h4 class="col-lg-4">报名费：${p.cost }元</h4>
								<h4 class="col-lg-12">竞赛简介：${p.introduction }</h4>
							</div>

						</div>
					</div>

				</s:iterator>
			</div>

		</div>

	</div>
</body>

</html>