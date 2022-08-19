<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>
<style>
/* 버튼 같은 컴포넌트 움직일때는 display flex 나 grid 
혹은 position 주셔야 해여 */
/* 플렉스 그리드 혹은 디스플레이랑 포지션 조절 정도 */
/* 저는 주로 인라인블럭 주고 text align으로 맞추는 편입니다 스껄티비 */
body {
	text-align: center;
}

table {
	border-collapse: collapse;
	min-width: 500px;
	margin-left: auto;
	margin-right: auto;
}

table, th, td {
	border: 1px solid black;
}

.w-2>td:nth-child(2n) {
	width: 250px;
}

/* 값이 없으면 높이가 없어져 높이 추가 */
.h-2>td:nth-child(n) {
	height: 24px;
}

.border-none-table {
	border-left: none;
	border-bottom: none;
}

.border-none-tr>td:nth-child(-n+3) {
	border-spacing: 0px;
	border-style: none;
}

button {
	margin-top: 10px;
}
</style>

<body>
	<br>
	<div style="width: 60%; margin: auto;">
		<h1 class="w3-center">마이 페이지</h1>
		<br>
		<caption>
			<h4 class="w3-center" style="float: left;">회원정보</h4>
		</caption>
		<table table class="w3-table w3-bordered w3-center"
			style="background-color: #fff; color: #000">
			<tr class="w-2">
				<td>아이디</td>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td></td>
			</tr>
			<tr>
				<td>현 주소</td>
				<td></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td></td>
			</tr>
		</table>
		<br>
  <p style="text-align: right; ">
  <input class="w3-btn w3-light-gray" style="width: 150px" type="button"  value="개인정보수정" ></p>
		<!--  -->
		<!--  -->
		<table table class="w3-table w3-bordered w3-center"
			style="background-color: #fff; color: #000">
			<caption>
				<h4 class="w3-center" style="float: left;">주문정보</h4>
			</caption>
			<tr>
				<td>주문날짜</td>
				<td>주문내역(주문상세)</td>
				<td>배송현황</td>
			</tr>
			<tr class="h-2">
				<td>20220818</td>
				<td></td>
				<td></td>
			</tr>
			<tr class="h-2">
				<td>20220819</td>
				<td></td>
				<td></td>
			</tr>
		</table>
		<!--  -->
		<br>

		<caption>
			<h4 class="w3-center" style="float: left;">장바구니</h4>
		</caption>
		<table table class="w3-table w3-bordered w3-center"
			style="background-color: #fff; color: #000">
			<tr>
				<td>선택</td>
				<td>상품명</td>
				<td>가격</td>
				<td>수량</td>
				<td>총가격</td>
			</tr>
			<tr class="h-2">
				<td>1</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr class="h-2">
				<!-- 여백 -->
				<td>2</td>
				<td></td>
				<td></td>
				<!--  -->
				<td></td>
				<td></td>
			</tr>
			<tr class="h-2 border-none-tr">
				<td></td>
				<td></td>
				<td></td>
				<td>상품금액</td>
			</tr>
			<tr class="border-none-tr">
				<td></td>
				<td></td>
				<td></td>
				<td>배송료</td>
				<td></td>
			</tr>
			<tr class="border-none-tr">
				<td></td>
				<td></td>
				<td></td>
				<td>총 금액</td>
				<td></td>
			</tr>
		</table>
		<br>
  <p style="text-align: right; ">
  <input class="w3-btn w3-light-gray" style="width: 100px" type="button"  value="구매" ></p>
		<!--  -->

		<caption>
			<h4>문의</h4>
		</caption>
		<table table class="w3-table w3-bordered w3-center"
			style="background-color: #fff; color: #000">
			<tr>
				<td>번호</td>
				<td>날짜</td>
				<td>문의분류</td>
				<td>제목</td>
				<td>처리현황</td>
			</tr>
			<tr class="h-2">
				<td>1</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr class="h-2">
				<td>2</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</table>
		<!--  -->
		<br>
		<table table class="w3-table w3-bordered w3-center"
			style="background-color: #fff; color: #000">
			<caption>
				<h4 style="float: left;">리뷰</h4>
			</caption>
			<tr>
				<td>날짜</td>
				<td>상품</td>
				<td>리뷰제목</td>
			</tr>
			<tr class="h-2">
				<td>1
				<td>
				<td></td>
				<td></td>
			</tr>
			<tr class="h-2">
				<td>2</td>
				<td></td>
				<td></td>
			</tr>
		</table>
	</div>
</body>

</html>