$(function(){
	$(".list-g li:first-child").addClass("change_left");
	$(".list-g li").click(function(){
		$(this).addClass("change_left");
		$(this).siblings().removeClass("change_left");
		//传一些东西，然后替换jsp
		$.ajax({ 
			url:"stuPage/toComManager",
            type:"post",
            data:{},//传参
            dataType:"json",
            success:function(obj){//发送成功之后执行的操作
            	//var items=obj.searchList;
            	$("#mycontent").html("<jsp:include page="+obj.page+" flush='true'></jsp:include>");           	
            }
           });
	});
			

	
});

