<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="header">
	<div class="inner">
		<h1><a href="/" class="logo"><img src="/images/logo.png" alt="다모아페이"></a></h1>
		<a href="javascript:void(0);" class="btn_menu">
			<span class="t"></span>
			<span class="m"></span>
			<span class="b"></span>
		</a>
		<div class="gnb">
			<div class="black"></div>
			<ul class="menu">
				<li class="${gNum eq'01'?'on':''}">
					<a href="/intro/company.do" class="pc_vw">회사소개</a>
					<a href="javascript:void(0);" class="mo_vw">회사소개<i></i></a>
					<div class="snb">
						<a href="/intro/company.do" class="${gNum eq'01' && sNum eq'01'?'on':''}">회사개요</a>
						<a href="/intro/department.do" class="${gNum eq'01' && sNum eq'02'?'on':''}">조직도</a>
						<a href="/intro/history.do" class="${gNum eq'01' && sNum eq'03'?'on':''}">연혁</a>
						<a href="/intro/cna.do" class="${gNum eq'01' && sNum eq'04'?'on':''}">고객사&amp;제휴사</a>
						<a href="/intro/location.do" class="${gNum eq'01' && sNum eq'05'?'on':''}">오시는길</a>
					</div>
				</li>
				<li class="${gNum eq'02'?'on':''}">
					<a href="/business/manual.do" class="pc_vw">사업분야</a>
					<a href="javascript:void(0);" class="mo_vw">사업분야<i></i></a>
					<div class="snb">
						<a href="/business/manual.do" class="${gNum eq'02' && sNum eq'01'?'on':''}">수기결제</a>
						<a href="/business/sms.do" class="${gNum eq'02' && sNum eq'02'?'on':''}">SMS결제</a>
						<a href="/business/url.do" class="${gNum eq'02' && sNum eq'03'?'on':''}">URL결제</a>
						<a href="/business/bank.do" class="${gNum eq'02' && sNum eq'04'?'on':''}">계좌이체</a>
						<a href="/business/terminal.do" class="${gNum eq'02' && sNum eq'05'?'on':''}">단말기</a>
					</div>
				</li>
				<li class="${gNum eq'03'?'on':''}">
					<a href="/serviceIntro/payment.do" class="pc_vw">서비스소개</a>
					<a href="javascript:void(0);" class="mo_vw">서비스소개<i></i></a>
					<div class="snb">
						<a href="/serviceIntro/payment.do" class="${gNum eq'03' && sNum eq'01'?'on':''}">결제 서비스</a>
						<a href="/serviceIntro/calculate.do" class="${gNum eq'03' && sNum eq'02'?'on':''}">정산 서비스</a>
						<a href="/serviceIntro/app.do" class="${gNum eq'03' && sNum eq'03'?'on':''}">어플</a>
					</div>
				</li>
				<li class="${gNum eq'04'?'on':''}">
					<a href="/customer/consult.do" class="pc_vw">고객지원</a>
					<a href="javascript:void(0);" class="mo_vw">고객지원<i></i></a>
					<div class="snb">
						<a href="/customer/consult.do" class="${gNum eq'04' && sNum eq'01'?'on':''}">상담안내</a>
						<a href="/customer/notice.do" class="${gNum eq'04' && sNum eq'02'?'on':''}">공지사항</a>
						<a href="/customer/faq.do" class="${gNum eq'04' && sNum eq'03'?'on':''}">FAQ</a>
						<a href="#this" onclick="alert('현재 준비준입니다.');">결제내역조회</a>
					</div>
				</li>
			</ul>
			<ul class="right">
				<li class="ag"><a href="https://mms.damoapay.com/">가맹점관리시스템</a></li>
			</ul>
		</div>
	</div>
</div>