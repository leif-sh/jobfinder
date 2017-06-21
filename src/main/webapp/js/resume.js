$(document).ready(function(){
	$("#resume-summary a").click(function(){
		if(!$("#resume-summary").hasClass("resume-item-open")){
			$("#resume-summary").addClass("resume-item-open");
		}else{
			$("#resume-summary").removeClass("resume-item-open");
		}
	});
    $("#nav-description").click(function(){
        if(!$("#resume-summary").hasClass("resume-item-open")){
            $("#resume-summary").addClass("resume-item-open");
        }else{
            $("#resume-summary").removeClass("resume-item-open");
        }
    });
	$("#cancelButtonInSummary").click(function(){
		$("#resume-summary").removeClass("resume-item-open");
	});
	
	$("#resume-purpose a").click(function(){
		if(!$("#resume-purpose").hasClass("resume-item-open")){
			$("#resume-purpose").addClass("resume-item-open");
		}else{
			$("#resume-purpose").removeClass("resume-item-open");
		}
	});
    $("#nav-dream").click(function(){
        if(!$("#resume-purpose").hasClass("resume-item-open")){
            $("#resume-purpose").addClass("resume-item-open");
        }else{
            $("#resume-purpose").removeClass("resume-item-open");
        }
    });
	$("#cancelButtonPurpose").click(function(){
		$("#resume-purpose").removeClass("resume-item-open");
	});
	
	$("#resume-userinfo a").click(function(){
		if(!$("#resume-userinfo").hasClass("resume-item-open")){
			$("#resume-userinfo").addClass("resume-item-open");
		}else{
			$("#resume-userinfo").removeClass("resume-item-open");
		}
	});
    $("#nav--summary").click(function(){
        if(!$("#resume-userinfo").hasClass("resume-item-open")){
            $("#resume-userinfo").addClass("resume-item-open");
        }else{
            $("#resume-userinfo").removeClass("resume-item-open");
        }
    });
	$("#cancelButtonInPersonInfo").click(function(){
		$("#resume-userinfo").removeClass("resume-item-open");
	});

	$("#resume-history a").click(function(){
		if(!$("#resume-history").hasClass("resume-item-open")){
			$("#resume-history").addClass("resume-item-open");
		}else{
			$("#resume-history").removeClass("resume-item-open");
		}
	});
    $("#nav-job").click(function(){
        if(!$("#resume-history").hasClass("resume-item-open")){
            $("#resume-history").addClass("resume-item-open");
        }else{
            $("#resume-history").removeClass("resume-item-open");
        }
    });
	$("#cancelButtonHistory").click(function(){
		$("#resume-history").removeClass("resume-item-open");
	});
	
	$("#resume-project a").click(function(){
		if(!$("#resume-project").hasClass("resume-item-open")){
			$("#resume-project").addClass("resume-item-open");
		}else{
			$("#resume-project").removeClass("resume-item-open");
		}
	});
    $("#nav-project").click(function(){
        if(!$("#resume-project").hasClass("resume-item-open")){
            $("#resume-project").addClass("resume-item-open");
        }else{
            $("#resume-project").removeClass("resume-item-open");
        }
    });
	$("#cancelButtonProject").click(function(){
		$("#resume-project").removeClass("resume-item-open");
	});
	
	$("#resume-education a").click(function(){
		if(!$("#resume-education").hasClass("resume-item-open")){
			$("#resume-education").addClass("resume-item-open");
		}else{
			$("#resume-education").removeClass("resume-item-open");
		}
	});
    $("#nav-education").click(function(){
        if(!$("#resume-education").hasClass("resume-item-open")){
            $("#resume-education").addClass("resume-item-open");
        }else{
            $("#resume-education").removeClass("resume-item-open");
        }
    });
	$("#cancelButtonEducation").click(function(){
		$("#resume-education").removeClass("resume-item-open");
	});
})
