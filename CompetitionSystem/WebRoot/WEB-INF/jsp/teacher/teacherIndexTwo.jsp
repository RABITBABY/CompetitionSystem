<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="<%=path%>/css/studentIndex.css" />
<link rel="stylesheet" href="<%=path%>/css/studentCommon.css" />
<!--JavaScript插件都是依赖与jQuery库-->
<script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
<script type="text/javascript"
	src="<%=path%>/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/studentIndex.js"></script>
<script type="text/javascript" src="<%=path%>/js/teacherCommon.js"></script>
<script type="text/javascript" src="<%=path%>/js/teacherIndex.js"></script>

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
						<li class="list-group-item change_left">竞赛申报</li>
						<li class="list-group-item" onclick="watchResult()">查看审批结果</li>
						<li class="list-group-item" onclick="managerStudent()">管理报名学生</li>
						<li class="list-group-item" onclick="compResult()">竞赛反馈</li>
						<li class="list-group-item"></li>
					</ul>
				</div>
			</div>
			<div class="col-md-10 right-part">
				<div class="main">
					<ol class="breadcrumb">
						<li><a href="#">第一步：负责人基本信息</a></li>
						<li class="active">第二步：竞赛信息</li>
						<li><a href="#">第三步：预算信息</a></li>
					</ol>
					<form class="form-horizontal" role="form"
						style="width:65%;margin-left: 30px;" method="post"
						action="<%=path%>">

						<!-- 竞赛情况 -->
						<div class="panel panel-warning">
							<div class="panel-heading">竞赛情况</div>
							<div class="panel-body">
								<div class="form-group form-group-lg">
									<label class="col-sm-2 control-label" for="formGroupInputLarge">竞赛名称</label>
									<div class="col-sm-10">
										<input class="form-control" type="text" name="competition.comName">
									</div>
								</div>

								<div class="form-group form-group-lg">
									<label class="col-sm-2 control-label" for="formGroupInputLarge">竞赛类别</label>
									<div class="col-sm-10">
										<input class="form-control" type="text" name="competition.level.levelName">
									</div>
								</div>

								<div class="form-group form-group-lg">
									<label class="col-sm-2 control-label" for="formGroupInputLarge">院级以上竞赛举办者</label>
									<div class="col-sm-10">
										<input class="form-control" type="text" name="competition.host">
									</div>
								</div>

								<div class="form-group form-group-lg">
									<label class="col-sm-2 control-label" for="formGroupInputLarge">竞赛时间</label>
									<div class="col-sm-10">
										<input class="form-control" type="text" name="competition.time">
									</div>
								</div>

								<div class="form-group form-group-lg">
									<label class="col-sm-2 control-label" for="formGroupInputLarge">竞赛地点</label>
									<div class="col-sm-10">
										<input class="form-control" type="text" name="competition.place">
									</div>
								</div>

								<div class="form-group form-group-lg">
									<label class="col-sm-2 control-label" for="formGroupInputLarge">参赛对象</label>
									<div class="col-sm-10">
										<input class="form-control" type="text" name="competition.object">
									</div>
								</div>

								<div class="form-group form-group-lg">
									<label class="col-sm-2 control-label" for="formGroupInputLarge">人数</label>
									<div class="col-sm-10">
										<input class="form-control" type="text" name="competition.people">
									</div>
								</div>

								<div class="form-group form-group-lg">
									<label class="col-sm-2 control-label" for="formGroupInputLarge">校外资助单位</label>
									<div class="col-sm-10">
										<input class="form-control" type="text" name="competition.sponsor">
									</div>
								</div>

								<div class="form-group form-group-lg">
									<label class="col-sm-2 control-label" for="formGroupInputLarge">竞赛简介</label>
									<div class="col-sm-10">
										<textarea class="form-control" rows="3" cols="3"
											style="height: 200px;" name="competition.introduce"></textarea>
									</div>
								</div>

							</div>
						</div>

						<div align="center">
							<button type="button" class="btn btn-primary" onclick="three()">下一步</button>
						</div>

					</form>


				</div>

			</div>
		</div>
	</div>
</body>
</html>
