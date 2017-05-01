$(document).ready(function(){
	$(".side-menu dl").click(function(){
		$(".side-menu dl").removeClass("cur");
		$(this).addClass("cur");
	})
	$(".menu-position").click(function(){
		$(".rsync-container").show();
		$(".viewed-container").hide();
		$(".sync-container").hide();
		$(".chat-container").hide();
		$(".set-container").hide();
		/*$(".menu-job-manage").addClass("cur");*/
		//$(".menu-position").toggleClass("cur");
		
	});
	$(".menu-recommend").click(function(){
		$(".rsync-container").hide();
		$(".viewed-container").hide();
		$(".sync-container").show();
		$(".chat-container").hide();
		$(".set-container").hide();
		/*$(".viewed-container").toggleClass("cur");*/
		
		
	});
	$(".menu-geek-search").click(function(){
		$(".rsync-container").hide();
		$(".viewed-container").hide();
		$(".sync-container").show();
		$(".chat-container").hide();
		$(".set-container").hide();
	});
	$(".menu-chat-bussiness").click(function(){
		$(".rsync-container").hide();
		$(".viewed-container").hide();
		$(".sync-container").hide();
		$(".chat-container").show();
		$(".set-container").hide();
	});
	$(".menu-companyinfo").click(function(){
		$(".rsync-container").hide();
		$(".viewed-container").hide();
		$(".sync-container").hide();
		$(".chat-container").hide();
		$(".set-container").show();
	});
	$(".sel-type").click(function(){
		//$(".sec-filter").attr("display","block");
		/*if(!$(".sec-filter").hasClass("display")){
			$(".sec-filter").attr("display","block");
		}*/
		if($(".position-sec").hasClass("show-chat-filter")){
			$(".position-sec").removeClass("show-chat-filter")
		}else{
			$(".position-sec").addClass("show-chat-filter")
		}
		
	})
})
