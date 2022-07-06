<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="svisual_wrap">
	<div class="svisual g${gNum}">
		<div class="tt">${gName}</div>
		지불결제서비스에 새로운 Value 를 제공하는 다모아페이
	</div>
</div>
<div class="aside inner">
	<a href="/" class="home"><img src="/images/icon_home.png" alt="홈으로" /></a>
	<dl class="g">
		<dt>${gName}<i></i></dt>
		<dd>
			<a href="/intro/company.do" class="${gNum eq'01'?'on':''}">회사소개</a>
			<a href="/business/manual.do" class="${gNum eq '02'?'on':''}">사업분야</a>
			<a href="/serviceIntro/payment.do" class="${gNum eq '03'?'on':''}">서비스소개</a>
			<a href="/customer/consult.do" class="${gNum eq '04'?'on':''}">고객지원</a>
		</dd>
	</dl>
	<dl class="s">
		<dt>${sName}<i></i></dt>
		<dd>
			<c:choose>
				<c:when test="${gNum eq '01'}">
					<div class="inbox set5">
						<a href="/intro/company.do" class="${sNum eq '01'?'on':''}">회사개요</a>
						<a href="/intro/department.do" class="${sNum eq '02'?'on':''}">조직도</a>
						<a href="/intro/history.do" class="${sNum eq '03'?'on':''}">연혁</a>
						<a href="/intro/cna.do" class="${sNum eq '04'?'on':''}">고객사&amp;제휴사</a>
						<a href="/intro/location.do" class="${sNum eq '05'?'on':''}">오시는길</a>
					</div>
				</c:when>
				<c:when test="${gNum eq '02'}">
					<div class="inbox set5">
						<a href="/business/manual.do" class="${sNum eq '01'?'on':''}">수기결제</a>
						<a href="/business/sms.do" class="${sNum eq '02'?'on':''}">SMS결제</a>
						<a href="/business/url.do" class="${sNum eq '03'?'on':''}">URL결제</a>
						<a href="/business/bank.do" class="${sNum eq '04'?'on':''}">계좌이체</a>
						<a href="/business/terminal.do" class="${sNum eq '05'?'on':''}">단말기</a>
					</div>
				</c:when>
				<c:when test="${gNum eq '03'}">
					<div class="inbox set3">
						<a href="/serviceIntro/payment.do" class="${sNum eq '01'?'on':''}">결제 서비스</a>
						<a href="/serviceIntro/calculate.do" class="${sNum eq '02'?'on':''}">정산 서비스</a>
						<a href="/serviceIntro/app.do" class="${sNum eq '03'?'on':''}">어플</a>
					</div>
				</c:when>
				<c:when test="${gNum eq '04'}">
					<div class="inbox set3">
						<a href="/customer/consult.do" class="${sNum eq '01'?'on':''}">상담안내</a>
						<a href="/customer/notice.do" class="${sNum eq '02'?'on':''}">공지사항</a>
						<a href="/customer/faq.do" class="${sNum eq '03'?'on':''}">FAQ</a>
					</div>
				</c:when>
			</c:choose>
			
		</dd>
	</dl>
</div>

<div class="title">${sName}</div>