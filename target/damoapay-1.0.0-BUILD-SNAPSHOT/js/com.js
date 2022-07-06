$(document).ready(function(){
//ie_check
	var ua = window.navigator.userAgent;
	if(ua.indexOf("MSIE") > 0 || ua.indexOf("Trident/") > 0){ //윈도우 10까지는 MSIE 윈도우 11부터는 Trident/를 사용한다.
		document.body.className="ie";
	}
//mobile
	$(".header .btn_menu").click(function(){
		$(".header").toggleClass("on");
		$("html,body").toggleClass("over_h");
	});
	$(".header .gnb .black").click(function(){
		$(".header").removeClass("on");
		$("html,body").removeClass("over_h");
	});
	$(".header .gnb .menu li > .mo_vw").click(function(){
		$(this).next(".snb").slideToggle("fast").parent().toggleClass("open").siblings().removeClass("open").removeClass("on").children(".snb").slideUp("fast");
	});
	$(".aside dt").click(function(){
		$(this).next("dd").slideToggle("fast").parent().toggleClass("on").siblings().removeClass("on").children("dd").slideUp("fast");
	});
});