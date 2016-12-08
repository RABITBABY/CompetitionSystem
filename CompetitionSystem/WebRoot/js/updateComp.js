function addGuide(){
	//创建<tr>标签
    var $tr=$("<tr>"+
				 "<td><input class='form-control' type='text' name='guideTeachers.teacherName'></td>"+
				 "<td><input class='form-control' type='text' name='guideTeachers.title'></td>"+
				 "<td><input class='form-control' type='text' name='guideTeachers.post'></td>"+
				 "<td><input class='form-control' type='text' name='guideTeachers.department.departmentName'></td>"+
			   "</tr>");
    //让父亲追加
   $("#guide").append($tr);
}

/*function submitForm(){
	var row=$("#guide tr").length;
	//var col=$("#guide tr:first td").length;
	var teacherName;
	var title;
	var post;
	var depart;
	var teacher="[";
	for(var i=0;i<row;i++){
			teacherName=$("#guide>tr:eq("+i+")>td:eq("+0+")>input:only-child").val();
			title=$("#guide>tr:eq("+i+")>td:eq("+1+")>input:only-child").val();
			post=$("#guide>tr:eq("+i+")>td:eq("+2+")>input:only-child").val();
			depart=$("#guide>tr:eq("+i+")>td:eq("+3+")>input:only-child").val();//,'depart':'"+depart+"'}
			if (i==row-1) {
				teacher+="{'teacherName':'"+teacherName+"','title':'"+title+"','post':'"+post+"'}";
				break;
			}
			teacher+="{'teacherName':'"+teacherName+"','title':'"+title+"','post':'"+post+"'},";
		
	}
    teacher+="]";
    alert(teacher);
	$.ajax({
        url:"teacher/updateComp",
        type:"post",
        data:{"teachers":teacher},//传参
        dataType:"json",
        success:function(obj){//发送成功之后执行的操作
            alert("成功！");
          }
    });
}*/