<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

	<div class="section fp-auto-height" id="section0">
		<div class="mvisual_wrap">
			<div class="txt">Do Achieve Motivation opportunity Ambition
				<div class="tt">가맹점에게 필요한 <span class="mo_br"></span>카드결제서비스!
					<strong>다모아PAY로 제공합니다</strong>
				</div>
			</div>
			<div class="mvisual">
				<div class="mv mv01">
					<img src="/images/mvisual01.jpg" alt="visual" class="pc_vw">
				</div>
				<div class="mv mv02">
					<img src="/images/mvisual02.jpg" alt="visual" class="pc_vw">
				</div>
				<div class="mv mv03">
					<img src="/images/mvisual03.jpg" alt="visual" class="pc_vw">
				</div>
			</div>
			<div class="buttons">
				<button class="pause on">Pause</button>
				<button class="play">Play</button>
			</div>
		</div>
	</div>
	<div class="section" id="section1">
		<div class="tbl_box inner">
			<div class="img_wrap pc_vw">
				<div class="img">
					<img src="/images/img_mc01_b.jpg" alt="image" class="top">
					<img src="/images/img_mc01_u.jpg" alt="image" class="btm">
				</div>
			</div>
			<div class="text">
				<div class="name">About us</div>
				<div class="tt">지불결제서비스에 새로운 Value 를 제공하는
					<img src="/images/icon_logo.png" alt="logo">
				</div>
				<p>빠르게 변화하는 전자결제 서비스 요구에 온 · 오프라인 결제수단은 물론, <span class="br"></span>가맹점의 다양한 환경에 최적화된 통합 전자지불결제 서비스 입니다</p>
			</div>
			<div class="img_wrap mo_vw">
				<div class="img">
					<img src="/images/img_mc01_b.jpg" alt="image" class="top">
					<img src="/images/img_mc01_u.jpg" alt="image" class="btm">
				</div>
			</div>
		</div>
	</div>
	<div class="section" id="section2">
		<div class="text">
			<div class="name">Busines Area</div>
			<div class="tt">다모아페이는 다양한 결제서비스를 지원합니다.</div>
		</div>
		<ul>
			<li onclick="location.replace('/business/manual.do')">
				<img src="/images/icon_mc02_01.gif" alt="icon">
				<span class="t">수기결제</span>
				<p>공인인증서/CVC 번호 등 없이 <span class="br"></span>신용카드 결제가 가능 한 서비스</p>
				<i></i>
			</li>
			<li onclick="location.replace('/business/sms.do')">
				<img src="/images/icon_mc02_02.gif" alt="icon">
				<span class="t">SMS 결제</span>
				<p>고객의 휴대폰을 통해 <span class="br"></span>전송결제가 가능한 서비스</p>
				<i></i>
			</li>
			<li onclick="location.replace('/business/url.do')">
				<img src="/images/icon_mc02_03.gif" alt="icon">
				<span class="t">URL 결제</span>
				<p>카카오톡, 인스타그램 등 <span class="br"></span>SNS를 통한 카드결제서비스 </p>
				<i></i>
			</li>
			<li onclick="location.replace('/business/bank.do')">
				<img src="/images/icon_mc02_04.gif" alt="icon">
				<span class="t">계좌이체</span>
				<p>가상계좌로 입금을 요청하여, <span class="br"></span>실시간으로 처리하는 서비스</p>
				<i></i>
			</li>
			<li onclick="location.replace('/business/terminal.do')">
				<img src="/images/icon_mc02_05.gif" alt="icon">
				<span class="t">단말기결제</span>
				<p>외장형 리더기, POS 등 <span class="br"></span>카드결제를위한 단말기</p>
				<i></i>
			</li>
		</ul>
	</div>
	<div class="section" id="section3">
		<div class="text">
			<div class="name">News &amp; Notice</div>
			<div class="tt">다모아페이 주식회사의 새로운 소식을 알려드립니다.</div>
		</div>
		<ul class="inner main_notice">
			<c:set var="month" value='<%=new String[]{"Jan.", "Feb.", "Mar.", "Apr.", "May", "June","July", "Aug.", "Sep.", "Oct.", "Nov.", "Dec."}%>' />
			<c:forEach items="${list}" var="list">
				<li onclick="location.replace('/customer/noticeDetail.do?seq=${list.seq}');">
						<span class="date">${list.crt_day}<span class="year">${list.crt_year}, ${month[list.crt_month - 1]}</span></span>
						<span class="t"><c:out value="${list.title}" /></span>
						<p><c:out value="${list.content}" /></p>
				</li>
			</c:forEach>
		</ul>
		<a href="/customer/notice.do" class="more"></a>
	</div>
	<div class="section fp-auto-height" id="section4">
		<div class="inner">
			<div class="txt"><strong class="blue">도움이 필요하신가요?</strong> 다모아페이는 언제나 고객님을 이야기에 귀기울이겠습니다.</div>
			<div class="txt"><strong>상담전화 : 1544-5996</strong></div>
			<div class="txt">상담 가능시간 평일 오전9시~오후5시(주말 및 공휴일 제외)</div>
		</div>
	</div>
	<div class="section fp-auto-height" id="section5">
		<div class="txt inner">
			지금 바로 <br/>다모아페이와 함께 하세요!
			<div class="downs">
				<a href="#this"><img src="/images/btn_down_google.png" alt="구글 플레이"></a>
				<a href="#this"><img src="/images/btn_down_apple.png" alt="앱스토어"></a>
			</div>
		</div>
	</div>

<script type="text/javascript">
//<![CDATA[
$(document).ready (function () {
	var myFullpage = new fullpage('#fullpage', {
        sectionsColor: ['#ffffff', '#ffffff', '#ffffff', '#ffffff', 'f7f7f7', '#ffffff', '#333333'],
        anchors: ['visual', 'aboutus', 'business', 'Notice', 'help', 'download', 'footer'],
		scrollOverflow: true,
        easingcss3: 'cubic-bezier(0.1, 0.8, 0.3, 1.2)'
    });
	$(".mvisual").slick({
		arrows: true,
		dots: true,
		autoplay: true,
		autoplaySpeed: 3000
	});
	$('.pause').on('click', function() {
		$('.mvisual').slick('slickPause');
		$(this).removeClass("on").siblings().addClass("on");
	});

	$('.play').on('click', function() {
		$('.mvisual').slick('slickPlay');
		$(this).removeClass("on").siblings().addClass("on");
	});
	$(window).resize(function(){
		document.location.reload();
	}); //브라우저 창 크기 조절시 새로고침 / 풀페이지 부분이 창 크기 변경시 오류가 생겨서 삽입
});
//]]>
</script>