<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

</head>
<body>

	<form class="w3-container"
		action="${pageContext.request.contextPath}/member/joinPro" name="f"
		method="post">
		<table class="w3-table w3-bordered"
			style="background-color: #fff; color: #000; width: 700px; margin: auto;">
			<tbody>
			<caption>
				<font size="6em">회원가입</font>		<br><br><br><br>
			</caption>
	
			<tr>
			<td><b>필수항목</b></td>
			</tr>
			<tr>
				<td>아이디<br> <input type="text" name="id">&nbsp;&nbsp;&nbsp;
					 <input class="w3-btn w3-light-gray" style="width: 80px" type="button"  value="확인" ></p></td>
			</tr>
			<tr>

				<td>비밀번호<br> <input type="password" name="pass"></td>
				<td>비밀번호 재입력<br> <input type="password" name="pass">&nbsp;&nbsp;&nbsp;
					 <input class="w3-btn w3-light-gray" style="width: 80px" type="button"  value="확인" ></p></td>
			</tr>
			<tr>

				<td>이름<br> <input type="text" name="name"></td>
			</tr>

			<tr>
				<td>주소<br> <input type="text" name="adress"></td>
			</tr>

			<tr>
				<td>전화번호<br> <input type="text" name="tel"></td>
			</tr>



			<tr>
				<td><b>선택항목</b></td>
			</tr>
			<tr>
				<td>생년월일 (입력하면 이벤트 참여 가능!!!)<br> <input type="text" name="birthday">
					<!-- 		<input type="text" name="month">월&nbsp;
			<input type="text" name="days">일 -->
				</td>
			</tr>

			<tr>
				<td>이메일<br> <input type="text" name="email"></td>
			</tr>
			<tr>
				<td colspan=2;><div style="text-align: center">
						 <input class="w3-btn w3-light-gray" style="width: 100px" type="button"  value="가입" ></p>
					</div></td>
			</tr>
			</tbody>
		</table>
	</form>
	<br>
	<br>
	<br>
	<br>
	
</body>
<footer>
</footer>
</html>