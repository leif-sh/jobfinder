$(document).ready(function(){
	$(".side-menu dl").click(function(){
		$(".side-menu dl").removeClass("cur");
		$(this).addClass("cur");
	})
	$(".menu-position").click(function(){
		$(".search-container").hide();
		$(".viewed-container").hide();
		$(".sync-container").hide();
		$(".chat-container").hide();
		$(".set-container").hide();
		$(".company-container").hide();
		$(".job-container").show();
		/*$(".menu-job-manage").addClass("cur");*/
		//$(".menu-position").toggleClass("cur");
	});
	$(".menu-recommend").click(function(){
		$(".search-container").hide();
		$(".job-container").hide();
		$(".viewed-container").hide();
		$(".chat-container").hide();
		$(".set-container").hide();
		$(".company-container").hide();
		$(".sync-container").show();
		/*$(".viewed-container").toggleClass("cur");*/
		
		
	});
	$(".menu-geek-search").click(function(){
		
		$(".job-container").hide();
		$(".viewed-container").hide();
		$(".chat-container").hide();
		$(".set-container").hide();
		$(".company-container").hide();
		$(".sync-container").hide();
		$(".search-container").show();
	});
	$(".menu-chat-bussiness").click(function(){
		$(".search-container").hide();
		$(".job-container").hide();
		$(".viewed-container").hide();
		$(".sync-container").hide();
		$(".set-container").hide();
		$(".company-container").hide();
		$(".chat-container").show();
	});
	$(".menu-companyinfo").click(function(){
		$(".search-container").hide();
		$(".job-container").hide();
		$(".viewed-container").hide();
		$(".sync-container").hide();
		$(".chat-container").hide();
		$(".set-container").hide();
		$(".company-container").show();
	});
	$("#setting").click(function(){
		$(".search-container").hide();
		$(".job-container").hide();
		$(".viewed-container").hide();
		$(".sync-container").hide();
		$(".chat-container").hide();
		$(".company-container").hide();
		$(".set-container").show();
	})
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
