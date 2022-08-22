<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="Generator" content="EditPlus">
<meta name="Author" content="">
<meta name="Keywords" content="">
<meta name="Description" content="">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="//code.jquery.com/jquery-3.6.0.min.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>CategoryDetailForm</title>
<script>
	$(document).ready(function() {
		/* 		alert("hi"); */
		let cntA = 0;
		let cntB = 0;
		let cntC = 0;
		let allPrice = 0;

		$('.plusA-btn').click(function() {
			cntA++;
			$(".productA-cnt-p").html(cntA);
			allPrice = cntA * 1000 + "원";

			$(".productATotalPrice").html(cntA * 1000 + "원");
			$(".allPrice").html(allPrice);

			console.log("hi");
			console.log(cntA);
		})
		$('.minusA-btn').click(function() {
			if (cntA != 0) {
				cntA--;
				$(".productA-cnt-p").html(cntA);
				console.log(cntA);

				$(".productATotalPrice").html(cntA * 1000 + "원");
				allPrice = cntA * 1000;
				$(".allPrice").html(allPrice);
			}
		})
	});

	console.log("hi");
</script>
<style>
#navbar {
	overflow: hidden;
	background-color: white;
	positon: fixed;
	top: 0;
	width: 100%;
}

#navbar a {
	float: left;
	display: block;
	color: black;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
	width: 33.33%
}

#navbar a:hover {
	background-color: #ddd;
	color: teal;
}

#navbar a.active {
	background-color: teal;
	color: white;
}

.length {
	position: relative;
	width: 50px;
	height: 32px;
	border: 1px;
}
</style>
</head>

<body>
<<<<<<< HEAD
<div class="w3-container w3-content w3-center w3-padding-64 w3-white" style="max-width:1000px">

<div style="font-family:sans-serif">
<div class="w3-row w3-stretch">
<div class="w3-half w3-padding-large w3-hide-small"> 
=======
	<div class="w3-container w3-content w3-center w3-padding-64 w3-white"
		style="max-width: 1000px">
		<div style="font-family: sans-serif">
			<div class="w3-row w3-stretch">
				<div class="w3-half w3-padding-large w3-hide-small">
>>>>>>> branch 'master' of https://github.com/OkJE/KIOCafePro.git

					<ul class="detailImg">
						<img src="img/bearcookie.jpg" class="w3-round w3-image"
							alt="Table" width="700">
					</ul>

					<ul class="thmb_1st">
						<span class="thmb"> <img src="img/bearcookie.jpg"
							class="w3-round testsm  w3-opacity-min" border="1" width="70"></a>
						</span>
						<span class="thmb"> <img src="img/bearcookie.jpg"
							class="w3-round testsm  w3-opacity-min" border="1" width="70"></a>
						</span>
					</ul>

				</div>

				<div class="w3-half w3-padding-large">
					<div class="prod-name">
						<h2 class="tbl-text w3-border-bottom w3-border-black">kio
							bakery 곰돌이 쿠키 세트</h2>
					</div>
					<br>
					<div class="table-prod-info">
						<table class="table-row">
							<colgroup>
								<col style="width: 188px;">
								<col style="width: auto;">
							</colgroup>
							<tbody>

								<tr>
									<th>상품 가격</th>
									<td>10,000원</td>
								</tr>

								<tr>
									<th scope="row" class="pro-code">상품코드</th>
									<td>1234567</td>
								</tr>

								<tr>
									<th>제조사/공급사</th>
									<td>kio bakery/kio</td>
								</tr>

<<<<<<< HEAD
<tr>
<th>배송비</th>
<td>무료배송</td>
</tr>
<tr>
<th>총 상품 금액</th>
<td>10,000</td>
</tr>
</tbody>
</table>
</div>

<br>
<div class="w3-border-bottom w3-border-black">
</div>
</div>

<br>
<div class="w3-half w3-padding-large">
<button href="#a" class="w3-btn w3-block w3-white w3-border w3-border-green w3-teal">장바구니</button>
<button href="#a" class="w3-btn w3-block w3-teal">구매하기</button>
</div>
</div>
</div>
</div>

<div class="w3-row w3-stretch">
<div class="w3-padding-large w3-hide-small">
<div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px">

<div id="navbar">
  <a class="active" href="#productDetail"><input class="w3-bar-item w3-button w3-light-grey" value="상세설명"></a>
  <a href="#review"><input class="w3-bar-item w3-button w3-light-grey" value="리뷰"></a>
  <a href="#qna"><input class="w3-bar-item w3-button w3-light-grey" value="QnA" style=""></a>
</div>

<!-- 상세설명 페이지 -->
<div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px" id="productDetail">
<img src="img/detailimgEx.jpg" class="w3-center" alt="Table" width="700">
</div>
<!-- 리뷰 페이지 -->
<div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px" id="review">
<h3 class="w3-center">리뷰</h3>
<p> 등록  된 리뷰가 없습니다 </p>
<a class="w3-button w3-right w3-grey" href="#">리뷰 남기기</a>
</div>
 <!-- QnA 페이지 -->
 <div class="mainBody w3-white" id="qna">
<div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px" id="qna">
<h3 class="w3-center">QnA</h3>
<p> 등록  된 게시물이 없습니다 </p>
<a class="w3-button w3-right w3-grey" href="#">질문하기</a>

</div>
</div>
<!-- 맨 위로 버튼 -->
<div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px" id="top"></div>
<a class="w3-button w3-right w3-grey" href="#">맨 위로가기</a>
</div>
</div>
<div>
<!-- footer-->
		
<!-- //footer-->
</div>
</div>

								<tr>
									<th>구매수량</th>
									<td>
									<td class="btn-td" style="text-align: left;">
										<button class="w3-button w3-white minusA-btn  count-btn"
											style="border: 1px black solid; border-radius: 8px;">
											<span>-</span>
										</button>
									</td>
									<td class="count productA-cnt-p">0</td>
									<td class="btn-td" style="text-align: left;">
										<button class="w3-button w3-white plusA-btn  count-btn"
											style="border: 1px black solid; border-radius: 8px;">
											<span>+</span>
										</button>
									</td>
								</tr>



								<tr>
									<th>배송비</th>
									<td>무료배송</td>
								</tr>
								<tr>
									<th>총 상품 금액</th>
									<td class="productATotalPrice">0</td>
								</tr>
							</tbody>
						</table>
					</div>

					<br>
					<div class="w3-border-bottom w3-border-black"></div>
				</div>

				<br>
				<div class="w3-half w3-padding-large">
					<button href="#a"
						class="w3-btn w3-block w3-white w3-border w3-border-green w3-teal">장바구니</button>
					<button href="#a" class="w3-btn w3-block w3-teal">구매하기</button>
				</div>
			</div>
		</div>
	</div>

	<div class="w3-row w3-stretch">
		<div class="w3-padding-large w3-hide-small">
			<div class="w3-container w3-content w3-center w3-padding-64"
				style="max-width: 800px">

				<div id="navbar">
					<a class="active" href="#productDetail">상세설명</a> <a href="#review">리뷰</a>
					<a href="#qna">QnA</a>
				</div>

				<!-- 상세설명 페이지 -->
				<div class="w3-container w3-content w3-center w3-padding-64"
					style="max-width: 800px" id="productDetail">
					<img src="img/detailimgEx.jpg" class="w3-center" alt="Table"
						width="700">
				</div>
				<!-- 리뷰 페이지 -->
				<div class="w3-container w3-content w3-center w3-padding-64"
					style="max-width: 800px" id="review">
					<h3 class="w3-center">리뷰</h3>
					<p>등록 된 리뷰가 없습니다</p>
					<a class="w3-button w3-right w3-grey" href="#">리뷰 남기기</a>
				</div>
				<!-- QnA 페이지 -->
				<div class="mainBody w3-white" id="qna">
					<div class="w3-container w3-content w3-center w3-padding-64"
						style="max-width: 800px" id="qna">
						<h3 class="w3-center">QnA</h3>
						<p>등록 된 게시물이 없습니다</p>
						<a class="w3-button w3-right w3-grey" href="#">질문하기</a>

					</div>
				</div>
				<!-- 맨 위로 버튼 -->
				<div class="w3-container w3-content w3-center w3-padding-64"
					style="max-width: 800px" id="top"></div>
				<a class="w3-button w3-right w3-grey" href="#">맨 위로가기</a>
			</div>
		</div>
		<div></div>
	</div>
</body>
</html>
