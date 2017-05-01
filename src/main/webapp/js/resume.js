$(document).ready(function(){
	$("#resume-summary a").click(function(){
		if(!$("#resume-summary").hasClass("resume-item-open")){
			$("#resume-summary").addClass("resume-item-open");
		}else{
			$("#resume-summary").removeClass("resume-item-open");
		}
	});
})
