$(function(){
	$(".list-g li").click(function(){
		$(this).addClass("change_left");
		$(this).siblings().removeClass("change_left");
	});
			
	
});

