<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

	<div class="stit">정산 서비스란?</div>
	<ul class="dots_list">
		<li>고객사의 시스템환경에 최적화된 연동방식을 제공합니다.</li>
		<li>국내 최고 수준의 알고리즘과 최신 암호화기술을 이용한 강력한 보안시스템을 사용합니다.</li>
	</ul>

	<div class="stit">서비스 내용</div>
	<div class="tbl tbl_n">
		<table>
			<tr>
				<th>승인</th>
				<td>해당 신용카드의 거래 (결제한도, 본인 사용유무, 연체유무, 유효기간 등 사용 여부)에 대한 승인 업부</td>
			</tr>
			<tr>
				<th>매입</th>
				<td>
					승인 거래에 대해 거래발생 다음날 EDI형태로 데이터를 카드사로 전송하는 업무<br/>
					① 자동으로 매입되는 방식<br/>
					② 상점에서 매입하고자 하는 거래를 직접 선택하여 매입 요청하는 방식
				</td>
			</tr>
			<tr>
				<th>정산</th>
				<td>승인거래를 기준으로 결제 수수료를 제하고 지급하는 업무</td>
			</tr>
			<tr>
				<th>세금계산서</th>
				<td>한 달 간 발생한 승인, 매입에 대한 수수료를 합산하여 전자세금계산서로 발행 및 제공</td>
			</tr>
		</table>
	</div>

	<div class="stit">대표가맹점 정산주기</div>
	<p class="plbox">통합정산주기(신용카드, 계좌이체, 가상계좌)</p>
	<div class="tbl tbl_w">
		<table>
			<tr>
				<th>승인</th>
				<th>승인</th>
				<th>승인</th>
				<th>승인</th>
			</tr>
			<tr>
				<td>일정산</td>
				<td>승인(매입요청)기준</td>
				<td>매일</td>
				<td>D+7일 (은행영업일 기준)</td>
			</tr>
			<tr>
				<td>1회/월</td>
				<td>승인(매입요청)기준</td>
				<td>01일 - 말일</td>
				<td>익월 08일</td>
			</tr>
			<tr>
				<td rowspan="2">2회/월</td>
				<td rowspan="2">승인(매입요청)기준</td>
				<td>01일 - 15일</td>
				<td>당월 22일</td>
			</tr>
			<tr>
				<td>16일 - 말일</td>
				<td>익월 08일</td>
			</tr>
			<tr>
				<td rowspan="4">4회/월</td>
				<td rowspan="4">승인(매입요청)기준</td>
				<td>01일 - 07일</td>
				<td>당월 15일</td>
			</tr>
			<tr>
				<td>08일 - 14일</td>
				<td>당월 22일</td>
			</tr>
			<tr>
				<td>15일 - 21일</td>
				<td>당월 29일</td>
			</tr>
			<tr>
				<td>22일 - 말일</td>
				<td>익월 08일</td>
			</tr>
		</table>
	</div>
