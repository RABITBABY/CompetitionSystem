function result(value) {
	// 使用ajax拼接一个模态框。
	// ajax申请数据放在模态框中
	// 通过调用show.hide进行显示隐藏。

	$.ajax({
				url : "teacher/compResult",
				type : "post",
				data : {
					"competition.comId" : value
				},// 传参
				dataType : "json",
				success : function(obj) {// 发送成功之后执行的操作
					console.log(obj);
					var model = "<div class='modal fade' id='myModal' tabindex='-1' role='dialog' aria-labelledby='myModalLabel' aria-hidden='true'>"
							+ "<div class='modal-dialog'>"
							+ "<div class='modal-content'>"
							+ "<div class='modal-header'>"
							+ "<button type='button' class='close' data-dismiss='modal'>"
							+ "<span aria-hidden='true'>&times;</span>"
							+ "<span class='sr-only'>Close</span>"
							+ "</button>"
							+ "<h4 class='modal-title' id='myModalLabel'>反馈比赛结果</h4>"
							+ "</div>"
							+ "<div class='modal-body'>"
							+ "<h3>"+obj[0].project.comName+"</h3>"
							+ "<table class='table'>"
							+ "<thead>"
							+ "<tr>"
							+ "<td>组别</td>"
							+ "<td>操作</td>"
							+ "</tr>"
							+ "</thead>"
							+ "<tbody>";
					for(var i=0;i<obj.length;i++){
						model+="<tr>" +
						       "<td>"+obj[i].groupsName+"</td>"+
						       "<td><select><option>选择：</option><option>一等奖</option><option>二等奖</option><option>三等奖</option></select></td>"+
							   "</tr>";
						
					}
					model+= "</tbody>"
							+ "</table>"
							+ "</div>"
							+ "<div class='modal-footer'>"
							+ "<button type='button' class='btn btn-default' data-dismiss='modal'>取消</button>"
							+ "<button type='button' class='btn btn-primary'>保存</button>"
							+ "</div>" + "</div>" + "</div>" + "</div>";

					$("#theModel").html(model);
					$('#myModal').modal('show');
				}
			});

}


function seeResult(value) {
	// 使用ajax拼接一个模态框。
	// ajax申请数据放在模态框中
	// 通过调用show.hide进行显示隐藏。

	$.ajax({
				url : "teacher/seeCompResult",
				type : "post",
				data : {
					"competition.comId" : value
				},// 传参
				dataType : "json",
				success : function(obj) {// 发送成功之后执行的操作
					console.log(obj);
					var model = "<div class='modal fade' id='myModal' tabindex='-1' role='dialog' aria-labelledby='myModalLabel' aria-hidden='true'>"
							+ "<div class='modal-dialog'>"
							+ "<div class='modal-content'>"
							+ "<div class='modal-header'>"
							+ "<button type='button' class='close' data-dismiss='modal'>"
							+ "<span aria-hidden='true'>&times;</span>"
							+ "<span class='sr-only'>Close</span>"
							+ "</button>"
							+ "<h4 class='modal-title' id='myModalLabel'>反馈比赛结果</h4>"
							+ "</div>"
							+ "<div class='modal-body'>"
							+ "<h3>"+obj[0].competition.comName+"</h3>"
							+ "<table class='table'>"
							+ "<thead>"
							+ "<tr>"
							+ "<td>组别</td>"
							+ "<td>操作</td>"
							+ "</tr>"
							+ "</thead>"
							+ "<tbody>";
					for(var i=0;i<obj.length;i++){
						model+="<tr>" +
						       "<td>"+obj[i].groups.groupsName+"</td>"+
						       "<td>"+obj[i].prize.prizeName+"</td>"+
							   "</tr>";
						
					}
					model+= "</tbody>"
							+ "</table>"
							+ "</div>"
							+ "<div class='modal-footer'>"
							+ "<button type='button' class='btn btn-default' data-dismiss='modal'>取消</button>"
							+ "<button type='button' class='btn btn-primary'>保存</button>"
							+ "</div>" + "</div>" + "</div>" + "</div>";

					$("#theModel").html(model);
					$('#myModal').modal('show');
				}
			});

}

