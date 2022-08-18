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
.container {
	margin-left: 15px;
	width: 1000px;
}

.basket-div {
	display: flex;
	width: 100%;
	text-align: center;
	line-height: 150px;
	border-bottom: 1px solid black;
}

p {
	width: 150px;
}

img {
	margin: 10px 0px 8px 0px;
	width: 150px;
}

button {
	margin: auto;
}

.count {
	width: 35px;
}

.pay-div {
	margin-top: 30px;
	margin-bottom: 30px;
	display: flex;
	justify-content: end;
	border: 1px black solid;
}

.pay-div>h4 {
	margin-right: 10px;
}

.pay-btn {
	background-color: yellow;
	float: right;
}
</style>

<body>
	<h4>빵바구니</h4>
	<div class="container" style="width: 1000px; margin-left: 15px;">
		<div>
			<form action="#">
				<div class="basket-div"
					style="display: flex; width: 100%; text-align: center; line-height: 150px; border-bottom: 1px solid black;">
					<input type="checkbox">
					<p>머커렁</p>
					<img src="./img/bread2.png" alt="">
					<p>1,000원</p>

					<button class="count">▲</button>
					<p class="count">10개</p>
					<button class="count">▼</button>
					<p>합계 10,000원</p>
				</div>
			</form>
		</div>
		<div>
			<form action="#">
				<div class="basket-div"
					style="display: flex; width: 100%; text-align: center; line-height: 150px; border-bottom: 1px solid black;">
					<input type="checkbox">
					<p>식빵</p>
					<img src="./img/bread1.png" alt="">
					<p>1,000원</p>
					<button class="count">▲</button>
					<p class="count">10개</p>
					<button class="count">▼</button>
					<p>합계 10,000원</p>
				</div>
				<div class="basket-div"
					style="display: flex; width: 100%; text-align: center; line-height: 150px; border-bottom: 1px solid black;">
					<input type="checkbox">
					<p>춰커뽱</p>
					<img src="./img/bread3.png" alt="">
					<p>1,000원</p>
					<button class="count">▲</button>
					<p class="count">1개</p>
					<button class="count">▼</button>
					<p>합계 10,000원</p>
				</div>
		</div>
		<div class="pay-div"
			style="margin-top: 30px; margin-bottom: 30px; display: flex; justify-content: end; border: 1px black solid;">
			<h4 class="pay-p">상품금액 : 1,000원</h4>
		</div>
		<div>
			<button class="pay-btn">결제</button>
		</div>
	</div>

</body>

</html>