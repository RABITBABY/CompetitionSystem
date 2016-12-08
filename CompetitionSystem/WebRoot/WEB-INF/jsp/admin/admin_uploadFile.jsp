<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<title>管理——上传文件</title>
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

.fileinput-button {
	position: relative;
	display: inline-block;
	float: right;
	overflow: hidden;
	margin-right: -120px;
}

.fileinput-button input {
	position: absolute;
	right: 0px;
	top: 0px;
	opacity: 0;
	-ms-filter: 'alpha(opacity=0)';
	font-size: 200px;
}
</style>

</head>

<body>
	<s:debug></s:debug>
	<!--导航条-->
	<div class="man_top">
		<jsp:include page="admin_head.jsp" flush="true"></jsp:include>
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
				<li><a href="">管理员</a></li>
				<li><a href="">已上传文件列表</a></li>
			</ol>

			<div>
				<div>
					<div>
						<label class="_title">历史文件列表</label>
						<button type="button" style="margin-right: 50px;float: right;"
							class="btn btn-primary" data-toggle="modal"
							data-target="#fileModel">上传文件</button>
					</div>

					<table class="table table-striped">
						<tr>
							<th>文件编号</th>
							<th>文件名称</th>
							<th>上传日期</th>
							<th>上传者</th>
							<th>操作</th>
						</tr>
						<s:iterator value="files" var="f">
							<tr>
								<td>${f.fileId }</td>
								
								<td>${f.fileName }</td>
								<td>
								<fmt:formatDate value="${f.uploadDate }" pattern="yyyy-MM-dd"/>
								</td>
								<td>${f.uploadUser.adminName}</td>
								<td>
									<button class="btn btn-danger" onclick="delectFile(<s:property value="#f.fileId"/>)">删除文件</button>
								</td>
							</tr>
						</s:iterator>
					</table>
				</div>
			</div>
		</div>

		<!-- 修改弹出框 -->
		<div class="modal fade" id="fileModel" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true"
			data-backdrop="false">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">上传文件</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal" role="form"
							enctype="multipart/form-data" action="file/upload" method="post">
							<div class="form-group">
								<div class="col-sm-9">
									<div class="col-sm-6">
										<div class="fileinput-button">
											<span> <span class="btn btn-primary">选择文件</span><a
												class="file gradient"> <label id="showname"></label><input type="file" name="upload"></a>
											</span>
										</div>
										<label id="showname"></label>
									</div>
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
<script type="text/javascript">
	$(".file").on("change", "input[type='file']", function() {
		var filePath = $(this).val();
		var arr = filePath.split('\\');
		var fileName = arr[arr.length - 1];
		$("#showname").html(fileName);
	});
	function delectFile(fileid) {
		location='file/deleteFile?fileId='+fileid;
	}
</script>
</html>
