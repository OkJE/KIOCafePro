<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <title>카테고리 메인창</title>
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"
    />
    <!-- Link Swiper's CSS -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"
    />

    <!-- Demo styles -->
    <style>
      html,
      body {
        position: relative;
        height: 100%;
      }

      body {
        background:  write;
        font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
        font-size: 14px;
        color: write;
        margin: 0;
        padding: 0;
      }

      .swiper {
        width: 100%;
        height: 100%;
      }

      .swiper-slide {
        text-align: center;
        font-size: 18px;
        background: #fff;

        /* Center slide text vertically */
        display: -webkit-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        align-items: center;
      }

/*       .swiper-slide>a>img {
        display: block;
        width: 100%;
        height: 70%;
        object-fit: cover;
      } */
		#wrapper {
	  max-width: 1000px;
		
	  margin: 0 auto;
		
	  border: 2px solid white;
	  border-radius: 6px;
	}
	/* span {
	font-weight: bold;

	color: black;
	text-decoration: underline;
} */
	 
    </style>
  </head>

  <body>
  <br>

  <div id="wrapper">
	<%-- <br>
    <img src="<%=request.getContextPath()%>/view/category/로고.png">
</div>
  <div class="w3-bar w3-light-grey" >
	<div class="w3-right">
    <a href="${pageContext.request.contextPath}/member/index" class="w3-bar-item w3-button"><span>카테고리 1</span></a>
    <a href="${pageContext.request.contextPath}/member/index" class="w3-bar-item w3-button"><span>카테고리 2</span></a>
    <a href="${pageContext.request.contextPath}/member/index" class="w3-bar-item w3-button"><span>카테고리 3</span></a>
    <a href="${pageContext.request.contextPath}/member/index" class="w3-bar-item w3-button"><span>카테고리 4</span></a>
    <a href="${pageContext.request.contextPath}/member/index" class="w3-bar-item w3-button"><span>카테고리 5</span></a>
    </div>
           </div> 
           <br> --%>
           
           
           

    <!-- Swiper -->
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
        <div class="swiper-slide">
        <a href="${pageContext.request.contextPath}/view/category/bakeryMain.jsp">
        <div class="w3-display-container">
  		<img src="<%=request.getContextPath()%>/view/category/img/bakery_main_img.jpg"  alt="Lights" style=" width: 100%; height: 70%;">
  		<div class="w3-padding w3-display-middle w3-white">Bakery</div>
        </div></a></div>
        <div class="swiper-slide">
        <a href="${pageContext.request.contextPath}/view/category/drinkMain.jsp">
        </a>
        <div class="w3-display-container">
  		<img src="<%=request.getContextPath()%>/view/category/img/drink_main_img.jpg"  alt="Lights" style=" width: 100%; height: 70%;">
  		<div class="w3-padding w3-display-topmiddle w3-white">Drink</div>
        </div></div>
       
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
    

	 
	 
	 
	 
     <!--  <div class="w3-center">
  <br> <a class="w3-bar-item w3-button w3-grey">사업자 정보 아래로 고정</a> <br>
    <a>사업자 이름 : KMS</a><br>
	<a>사업장 주소 : 서울 강남구 테헤란로1길 10 세경빌딩 3 층</a><br> 
    </div>-->
    </div> 

 

    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
      var swiper = new Swiper(".mySwiper", {
        cssMode: true,
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
        pagination: {
          el: ".swiper-pagination",
        },
        mousewheel: true,
        keyboard: true,
      });
    </script>
 
  </body>
</html>
