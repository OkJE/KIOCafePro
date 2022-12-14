
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
</head>
<body>
<br>
<div class="w3-container w3-center" style="width: 90%; margin: auto;">
  <h2>회원 리스트</h2>
<br>
<!-- 검색창 시작 -->
  <div class="search-container">
  <form class="search-var w3-right" action="#" style="margin:auto;max-width:300px">
  <input type="text" placeholder="주문자명 입력">
  <a href="#" class="w3-bar-item w3-button w3-light-grey">검색</a>
</form>
</div>
<!-- 검색창 끝 -->
<br>
<br>
<br>
  <table class="w3-table w3-bordered w3-hoverable">
    <tbody><tr>
  <th>id</th>
  <th>비밀번호</th>
  <th>이름</th>
  <th>전화번호</th>
  <th>주소</th>
  <th>생일</th>
  <th>이메일</th>
  <th>가입일</th>
  <th>탈퇴일</th>
</tr>
<!-- 임시로 데이터 보여지도록 넣었습니다. 실제 돌아갈 때는 삭제 예정 -->
<tr>
      <td>potato</td>
      <td>sweetpotato</td>
      <td>알감자</td>
      <td>010 1234 5678</td>
      <td>경기 수원시 감자구 고구마로 7 </td>
      <td>19970101</td>
      <td>potato12@naver.com</td>
      <td>20220101</td>
      <td>20220908</td>
    </tr>
    <tr>
      <td>potato</td>
      <td>sweetpotato</td>
      <td>알감자</td>
      <td>010 1234 5678</td>
      <td>경기 수원시 감자구 고구마로 7 </td>
      <td>19970101</td>
      <td>potato12@naver.com</td>
      <td>20220101</td>
      <td>20220908</td>
    </tr>
    <tr>
      <td>potato</td>
      <td>sweetpotato</td>
      <td>알감자</td>
      <td>010 1234 5678</td>
      <td>경기 수원시 감자구 고구마로 7 </td>
      <td>19970101</td>
      <td>potato12@naver.com</td>
      <td>20220101</td>
      <td>20220908</td>
    </tr>
</tbody>
<tbody>
<c:forEach var="m" items="${li}">

<tr>
  <td>${m.id}</td>
  <td>${m.pass}</td>
  <td>${m.name}</td>
  <td>${m.tel}</td>
  <td>${m.address}</td>
  <td>${m.birthday}</td>
  <td>${m.email}</td>
  <td>${m.joindate}</td>
  <td>${m.outdate}</td>

</tr>

</c:forEach>
</tbody>
</table>
</div>
</body>
</html>