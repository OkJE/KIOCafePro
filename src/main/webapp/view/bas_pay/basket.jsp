<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Document</title>
<style>
table {
	/* 	height: 200px; */
	text-align: center;
	/* margin-left: 30px; */
	min-width: 1000px;
}

th, td {
	align-items: center;
	min-width: 100px;
}

td:not(.btn-td) {
	line-height: 195px;
}

img {
	width: 150px;
	margin-top: 30px;
}

.count {
	height: 28px;
}

.count-btn {
	width: 45px;
	height: 35px;
	padding: 30px;
	padding-top: 12px;
	display: block;
	display: flex;
	align-items: center;
	margin-top: 80px;
}

.up {
	margin-right: 50px;
	background-image: url('./img/up.png');
}

.down {
	margin-right: 50px;
	background-image: url('./img/down.png');
}

.checkbox {
	position: absolute;
	bottom: 3px;
}
/*  */
.pay-div {
	width: 80%;
	margin: auto;
	display: flex;
	justify-content: end;
	border: 1px black solid;
	border-radius: 6px;
}

.pay-div>h4 {
	margin-right: 10px;
}

.pay-btn {
	float: right;
	margin: 10px;
}
</style>
</head>

<body>



	<div style="width: 80%; margin: auto;">
		<div class="w3-bar w3-middle">
			<section>
				<h4 style="margin-top: 15px;">빵바구니</h4>
			</section>

			<table class="w3-table w3-bordered"
				style="width: 80%; margin-left: 30px;">
				<tr>
					<td>
						<p>
							<input class="w3-check" type="checkbox" checked="checked">
							<label>마카롱</label>
						</p>
						<p>
					</td>

					<td><img src="./img/bread2.png" alt=""></td>
					<td>
						<p>1,000원</p>
					</td>

					<td class="btn-td" style="text-align: right;">
						<button class="w3-button w3-white  count-btn"
							style="border: 1px black solid; border-radius: 8px;">
							<span>+</span>
						</button>
					</td>

					<td>
						<p class="count" style="text-align: center">10개</p>
					<td class="btn-td" style="text-align: left">
						<button class="w3-button w3-white   count-btn"
							style="border: 1px black solid; border-radius: 8px;">
							<span>-</span>
						</button>
					</td>
					<td style="text-align: right">
						<p>합계 10,000원</p>
					</td>
				</tr>
				<!--  -->
				<!--  -->
				<!--  -->

				<tr>
					<td>
						<p>
							<input class="w3-check" type="checkbox" checked="checked">
							<label>식빵</label>
						</p>
						<p>
					</td>

					<td><img src="./img/bread1.png" alt=""></td>
					<td>
						<p>1,000원</p>
					</td>

					<td class="btn-td" style="text-align: right;">
						<button class="w3-button w3-white  count-btn"
							style="border: 1px black solid; border-radius: 8px;">
							<span>+</span>
						</button>
					</td>

					<td>
						<p class="count" style="text-align: center">10개</p>
					<td class="btn-td" style="text-align: left">
						<button class="w3-button w3-white   count-btn"
							style="border: 1px black solid; border-radius: 8px;">
							<span>-</span>
						</button>
					</td>
					<td style="text-align: right">
						<p>합계 10,000원</p>
					</td>
				</tr>
				<!--  -->
				<!--  -->
				<!--  -->
				<tr>
					<td>
						<p>
							<input class="w3-check" type="checkbox" checked="checked">
							<label>초코빵</label>
						</p>
						<p>
					</td>

					<td><img src="./img/bread3.png" alt=""></td>
					<td>
						<p>1,000원</p>
					</td>

					<td class="btn-td" style="text-align: right;">
						<button class="w3-button w3-white  count-btn"
							style="border: 1px black solid; border-radius: 8px;">
							<span>+</span>
						</button>
					</td>

					<td>
						<p class="count" style="text-align: center">10개</p>
					<td class="btn-td" style="text-align: left">
						<button class="w3-button w3-white   count-btn"
							style="border: 1px black solid; border-radius: 8px;">
							<span>-</span>
						</button>
					</td>
					<td style="text-align: right">
						<p>합계 10,000원</p>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<div>
		<div class="pay-div">
			<h4 class="pay-p">상품금액 : 30,000원</h4>
			<div>
				<button class="pay-btn" style="height: 30px;">결제</button>
			</div>
		</div>
	</div>
</body>

</html>