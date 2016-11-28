<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="bootstrap/dist/js/bootstrap.js"></script>
<script type="text/javascript" src="bootstrap/dist/js/npm.js"></script>
<link rel="stylesheet" href="bootstrap/dist/css/bootstrap-theme.css" />
<link rel="stylesheet" href="bootstrap/dist/css/bootstrap.css" />
<title>管理——商品</title>
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

.add {
	float: right;
	margin-right: 30px;
}
</style>
<script type="text/javascript">
function initInput() {//清空文本框
	$(".intext").val("");
}
//点击修改异步请求获取数据
function editPro(proId) {
	//异步请求获取数据
	$.ajax({
		type:"post",
		url:"pro/beforeEdit",
		data:{proID:proId},
		dataType:"json",
		success:function(data){
			//将数据添加到控件
			$("#editModel").modal("toggle");
			$("#edit_proId").val(data.pro.proId);
			$("#true_pic").val(data.pro.pic);
				$("#imgpr").attr("src", "${base}img/production/"+data.pro.pic);
				$("#edit_name").val(data.pro.proName);
				$("#edit_award").val(data.pro.award);
				$("#edit_introdu").val(data.pro.introduction);
				$("#edit_member").val(data.pro.membersName);
		},
		error:function(){
			alert("系统异常，请稍后重试！");
		}
		
	});
}


//异步获取所有的作品
function allPro() {
	//异步请求获取数据
	$.ajax({
		type:"post",
		url:"pro/all",
		dataType:"json",
		success:function(data){
			//将数据添加到控件
			$("#row_").empty();
			console.log(data);
			var length=data.productions.length;
			for(var i=0;i<length;i++){
				$("#row_").append("<div class='col-sm-4 col-md-4'>"+
						" <div class='thumbnail'>"+
						"<img style='width: 240px;height: 200px' src='img/"+data.productions[i].pic+"' alt='...'>"+
						"<div class='caption'>"+
						"<h3>"+data.productions[i].proName+"</h3>"+
						"<p>"+data.productions[i].award+"</p>"+
						"<p>参赛选手："+data.productions[i].membersName+"</p>"+
						"<p> <button id='edit'  class='btn btn-default' role='button' onclick='editPro("+data.productions[i].proId+")'>修改</button> "
						+"<a onclick='return confirm(\"确定要删除这个作品？\")' href='admin/delPro?proID="+data.productions[i].proId+"' class='btn btn-default' role='button'>删除</a>"
						+"</p> </div> </div> </div>"
				);
			}
		},
		error:function(){
			alert("系统异常，请稍后重试！");
		}
		
	});
	
}
//建立一個可存取到該file的url
function getObjectURL(file) {  
  var url = null ;   
  // 下面函数执行的效果是一样的，只是需要针对不同的浏览器执行不同的 js 函数而已  
  if (window.createObjectURL!=undefined) { // basic  
    url = window.createObjectURL(file) ;  
  } else if (window.URL!=undefined) { // mozilla(firefox)  
    url = window.URL.createObjectURL(file) ;  
  } else if (window.webkitURL!=undefined) { // webkit or chrome  
    url = window.webkitURL.createObjectURL(file) ;  
  }  
  return url ;  
} 
	//修改的图片预览
	$(function(){
		$("#edit_pic").change(function(){
			var objUrl = getObjectURL(this.files[0]) ;
			console.log("objUrl = "+objUrl) ;
			if (objUrl) {
				$("#imgpr").attr("src", objUrl) ;
			}
		});
		$("#add_pic").change(function(){
			var objUrl = getObjectURL(this.files[0]) ;
			console.log("objUrl = "+objUrl) ;
			if (objUrl) {
				$("#addImgPr").attr("src", objUrl) ;
			}
		}) ;
	});
	
function test() {
	//异步请求获取数据
	$.ajax({
		type:"post",
		url:"admin/edit",
		data:{},
		dataType:"text",
		success:function(data){
			alert(data);
		},
		error:function(){
			alert("系统异常，请稍后重试！");
		}
		
	});
	
}
	


</script>
</head>

<body>
	<s:debug></s:debug>
	<!--导航条-->
	<div class="man_top">
		<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">&nbsp;</a> <a class="navbar-brand"
					href="#">&nbsp;LOGO&nbsp;</a>
			</div>

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">

					<li class="active"><a href="#">管理员页面</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">你好，MAX</a></li>
					<li><a href="#">退出</a></li>
				</ul>
			</div>
		</div>
		</nav>
	</div>
	<!--中间内容  -->
	<div class="man_content">
		<!--左边  -->
		<div class="con_left">
			<jsp:include page="left.jsp" flush="true"></jsp:include>

		</div>
		<!--右边  -->
		<div class="con_middle">
			<ol class="breadcrumb">
				<li><a >管理员</a></li>
				<li><a >优秀作品</a></li>
				<li class="active">作品列表</li>
			</ol>

			<div>
				<div>
					<label class="_title">优秀作品列表</label>

					<button type="button" class="btn btn-primary  add"
						data-toggle="modal" data-target="#addModel">
						<span class="glyphicon glyphicon-plus-sign"></span> 上传作品
					</button>
				</div>
				<div class="row" id="row_">
					<s:iterator value="productions" var="p">
						<div class="col-sm-4 col-md-4">
							<div class="thumbnail">
								<img style="width: 240px;height: 200px" src="img/production/${p.pic }"
									alt="...">
								<div class="caption">
									<h3>${p.proName}</h3>
									<p>${p.award}</p>
									<p>参赛选手：${p.membersName}</p>
									<p>
										<button id="edit" class="btn btn-default" role="button"
											onclick="editPro(<s:property value="#p.proId" />)">修改</button>
										<a onclick="return confirm('确定要删除这个作品？')"
											href="pro/delPro?proID=${p.proId}" class="btn btn-default"
											role="button">删除</a>
									</p>
								</div>
							</div>
						</div>
					</s:iterator>

				</div>
			</div>

		</div>

	</div>

	<!-- 添加弹出框 -->
	<div class="modal fade" id="addModel" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true"
		data-backdrop="false">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">上传优秀作品</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" role="form"
						enctype="multipart/form-data" action="pro/savePro" method="post">
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">作品图片</label>
							<div class="col-sm-9">
								<div class="col-sm-6">
									<img style="width: 120px;height: 100px" id="addImgPr"
										src="${base}img/production/default.jpg" alt="..."
										class="img-rounded"> <input style="margin-top: 10px"
										type="file" name="upload" id="add_pic">
								</div>
							</div>

						</div>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">作品名称</label>
							<div class="col-sm-9">
								<input type="text" name="pro.proName"
									class="form-control intext">
							</div>
						</div>

						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">获得奖项</label>
							<div class="col-sm-9">
								<input type="text" name="pro.award" class="form-control intext"
									id="inputPassword3">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">作品作者</label>
							<div class="col-sm-9">
								<input type="text" name="pro.membersName"
									class="form-control intext" id="inputPassword3">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">作品简介</label>
							<div class="col-sm-9">
								<textarea class="form-control intext" name="pro.introduction"
									rows="3"></textarea>
							</div>

						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal" onclick="initInput()">取消</button>
							<button type="submit" class="btn btn-primary">上传</button>

						</div>
					</form>
				</div>

			</div>
		</div>
	</div>

	<!-- 修改弹出框 -->
	<div class="modal fade" id="editModel" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true"
		data-backdrop="false">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">修改优秀作品</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" role="form"
						enctype="multipart/form-data" action="pro/edit" method="post">
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">作品图片</label>
							<div class="col-sm-9">
								<div class="col-sm-6">
									<img style="width: 120px;height: 100px" id="imgpr"
										src="${base}img/production/default.jpg" alt="..." class="img-rounded">
									<input style="margin-top: 10px" type="file" name="upload"
										id="edit_pic"> <input type="hidden" name="pro.pic"
										id="true_pic">
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">作品名称</label>
							<div class="col-sm-9">
								<input type="text" name="pro.proName"
									class="form-control intext" id="edit_name"> 
							 <input type="hidden"  name="pro.proId" class="form-control intext"
									id="edit_proId">
							</div>
							
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">获得奖项</label>
							<div class="col-sm-9">
								<input type="text" name="pro.award" class="form-control intext"
									id="edit_award">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">作品作者</label>
							<div class="col-sm-9">
								<input type="text" name="pro.membersName"
									class="form-control intext" id="edit_member">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">作品简介</label>
							<div class="col-sm-9">
								<textarea class="form-control intext" id="edit_introdu"
									name="pro.introduction" rows="3"></textarea>
							</div>

						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal" onclick="initInput()">取消</button>
							<button type="submit" class="btn btn-primary">保存</button>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>



</body>
</html>
