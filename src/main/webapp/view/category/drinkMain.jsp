<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
 <style>
      html,
      body {
        position: relative;
        height: 100%;
      }

      body {
        background: white;
        font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
        font-size: 14px;
        color: #000;
        margin: 20px;
        padding: 0 20px;
      }
      h1{
      	text-align: center;
      	margin-bottom: 6rem;
      	border: 0.1rem solid;
      	border-top:0; 
      	border-left:0; 
      	border-right:0; 
      	
      }
      
      .swiper {
        width: 85%;
        height: 70%;
        margin-left: auto;
        margin-right: auto;
        margin-bottom: -15rem;
      }

      .swiper-slide {
        text-align: center;
        font-size: 18px;
        background: #fff;
        height: calc((80% - 40px) / 2) !important; 
        width: calc((70% - 40px) / 3) !important;
        
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        align-items: center;
      }
      .swiper-slide>img{
      	width: 100%;
      	height: 100%;
      	border-radius: 10%;
      	position: relative;
      }
      /* .pagination{
      	margin-bottom:-50rem !important; 
      } */
      /* .swiper-slide>tr>td>img{
      display:flex;
      	height: 1rem;
      	width: 1rem;
      } */
  
      .swiper-button-next{
      	margin-right: 2rem; 
      	margin-top:-16rem;
      	display: flex;      	
      }
       .swiper-button-prev{
      	margin-left: 2rem; 
      	margin-top:-16rem;
      	display: flex;
      }
      
      .benner{
      	height:20rem;
      	width: 115%;
      	margin-bottom: 15rem;
      	font-size: 30px;
      }
      .benner>img{
      	height: 100%;
      	padding-right: 3rem;
      }
      
      .swiper-button-next2{
      	margin-right: 0; 
      	margin-top:60rem;
      	display: flex;      	
      }
       .swiper-button-prev2{
      	margin-left: 0; 
      	margin-top:60rem;
      	display: flex;
      }
      
      table{
      	 margin: 0.6rem auto;
      }
      td>img{
      	width: 20%;
      	padding-left: 6rem;
      }  
      
    </style>
</head>
<body>

<h1>음료류</h1>

<div class="swiper mySwiper">
	
	<div class="swiper-wrapper">
	      
		<div class="swiper-slide"><img alt="#" src="./img/drink1.jpg">
			<table>
			  	<tr> <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				    <td class="w3-teal"> Slide 1</td>
				 
				   <td  rowspan="2">&nbsp;&nbsp;&nbsp;<img alt="#" src="./img/Buy.png"></td>
			  	</tr>
			  	<tr>
				     <td> &nbsp;</td>
				    <td>30,000원</td>
				 
			  	</tr>
			  	</table>
		</div>
	        
        <div class="swiper-slide"><img alt="#" src="./img/drink2.jpg">
        	<table>
			  	<tr> <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				    <td class="w3-teal"> Slide 2</td>
				 
				   <td  rowspan="2">&nbsp;&nbsp;&nbsp;<img alt="#" src="./img/Buy.png"></td>
			  	</tr>
			  	<tr>
				     <td> &nbsp;</td>
				    <td>30,000원</td>
				 
			  	</tr>
			  	</table>
        </div>
	        
        <div class="swiper-slide"><img alt="#" src="./img/drink3.jpg">
        	<table>
			  	<tr> <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				    <td class="w3-teal"> Slide 3</td>
				 
				   <td  rowspan="2">&nbsp;&nbsp;&nbsp;<img alt="#" src="./img/Buy.png"></td>
			  	</tr>
			  	<tr>
				     <td> &nbsp;</td>
				    <td>30,000원</td>
				 
			  	</tr>
			  	</table>
        </div>
        
        <div class="swiper-slide"><img alt="#" src="./img/drink4.jpg">
        	<table>
			  	<tr> <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				    <td class="w3-teal"> Slide 4</td>
				 
				   <td  rowspan="2">&nbsp;&nbsp;&nbsp;<img alt="#" src="./img/Buy.png"></td>
			  	</tr>
			  	<tr>
				     <td> &nbsp;</td>
				    <td>30,000원</td>
				 
			  	</tr>
			  	</table>
        </div>
        
        <div class="swiper-slide"><img alt="#" src="./img/drink5.jpg">
        	<table>
			  	<tr> <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				    <td class="w3-teal"> Slide 5</td>
				 
				   <td  rowspan="2">&nbsp;&nbsp;&nbsp;<img alt="#" src="./img/Buy.png"></td>
			  	</tr>
			  	<tr>
				     <td> &nbsp;</td>
				    <td>30,000원</td>
				 
			  	</tr>
			  	</table>
        </div>
        
        <div class="swiper-slide"><img alt="#" src="./img/drink5.jpg">
        	<table>
			  	<tr> <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				    <td class="w3-teal"> Slide 6</td>
				 
				   <td  rowspan="2">&nbsp;&nbsp;&nbsp;<img alt="#" src="./img/Buy.png"></td>
			  	</tr>
			  	<tr>
				     <td> &nbsp;</td>
				    <td>30,000원</td>
				 
			  	</tr>
			  	</table>
        </div>
        
        <div class="swiper-slide"><img alt="#" src="./img/drink6.jpg">
        	<table>
			  	<tr> <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				    <td class="w3-teal"> Slide 7</td>
				 
				   <td  rowspan="2">&nbsp;&nbsp;&nbsp;<img alt="#" src="./img/Buy.png"></td>
			  	</tr>
			  	<tr>
				     <td> &nbsp;</td>
				    <td>30,000원</td>
				 
			  	</tr>
			  	</table>
        </div>
        
        <div class="swiper-slide"><img alt="#" src="./img/drink7.jpg">
        	<table>
			  	<tr> <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				    <td class="w3-teal"> Slide 8</td>
				 
				   <td  rowspan="2">&nbsp;&nbsp;&nbsp;<img alt="#" src="./img/Buy.png"></td>
			  	</tr>
			  	<tr>
				     <td> &nbsp;</td>
				    <td>30,000원</td>
				 
			  	</tr>
			  	</table>
        </div>   	
	</div>
	
	<!-- <div class="swiper-pagination"></div> -->
	
</div>
<div>
	<div class="swiper-button-next"></div>
	<div class="swiper-button-prev"></div>
</div>


<div class="benner w3-teal">
	<img alt="#" src="./img/benner.png">KIC Bakery
</div>
	      	
      		   		      		
	<div class="swiper mySwiper2">   
		<div class="swiper-wrapper">
			<div class="swiper-slide"><img alt="#" src="./img/drink6.jpg">
			 <table>
			  	<tr> <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				    <td class="w3-teal"> Slide 6</td>
				 
				   <td  rowspan="2">&nbsp;&nbsp;&nbsp;<img alt="#" src="./img/Buy.png"></td>
			  	</tr>
			  	<tr>
				     <td> &nbsp;</td>
				    <td>30,000원</td>
				 
			  	</tr>
			  	</table>
			</div>
			  
			<div class="swiper-slide"><img alt="#" src="./img/drink7.jpg">
				<table>
			  	<tr> <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				    <td class="w3-teal"> Slide 7</td>
				 
				   <td  rowspan="2">&nbsp;&nbsp;&nbsp;<img alt="#" src="./img/Buy.png"></td>
			  	</tr>
			  	<tr>
				     <td> &nbsp;</td>
				    <td>30,000원</td>
				 
			  	</tr>
			  	</table>
			</div>
			
	        <div class="swiper-slide"><img alt="#" src="./img/drink2.jpg">
	        	<table>
			  	<tr> <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				    <td class="w3-teal"> Slide 8</td>
				 
				   <td  rowspan="2">&nbsp;&nbsp;&nbsp;<img alt="#" src="./img/Buy.png"></td>
			  	</tr>
			  	<tr>
				     <td> &nbsp;</td>
				    <td>30,000원</td>
				 
			  	</tr>
			  	</table>
	        </div>
	        
	        <div class="swiper-slide"><img alt="#" src="./img/drink2.jpg">
	           
	        	<table>
			  	<tr> <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				    <td class="w3-teal"> Slide 9</td>
				 
				   <td  rowspan="2">&nbsp;&nbsp;&nbsp;<img alt="#" src="./img/Buy.png"></td>
			  	</tr>
			  	<tr>
				     <td> &nbsp;</td>
				    <td>30,000원</td>
				 
			  	</tr>
			  	</table>
	        	
	        </div>
	        
	        <div class="swiper-slide"><img alt="#" src="./img/drink2.jpg">
	        	<table>
			  	<tr> <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				    <td class="w3-teal"> Slide 10</td>
				 
				   <td  rowspan="2">&nbsp;&nbsp;&nbsp;<img alt="#" src="./img/Buy.png"></td>
			  	</tr>
			  	<tr>
				     <td> &nbsp;</td>
				    <td>30,000원</td>
				 
			  	</tr>
			  	</table>
	        </div>
	        
	        <div class="swiper-slide"><img alt="#" src="./img/drink2.jpg">
	        	<table>
			  	<tr> <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				    <td class="w3-teal"> Slide 11</td>
				 
				   <td  rowspan="2">&nbsp;&nbsp;&nbsp;<img alt="#" src="./img/Buy.png"></td>
			  	</tr>
			  	<tr>
				     <td> &nbsp;</td>
				    <td>30,000원</td>
				 
			  	</tr>
			  	</table>
	        </div>
        </div>
	</div>
	<div>
	<div class="swiper-button-next2"></div>
	<div class="swiper-button-prev2"></div>
</div>

		<!-- <div class="pagination">
	    	<div class="swiper-pagination"></div>
	    </div> -->
     	
      	
   		

	<!-- 본문 끝 -->      

	<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    <!-- Initialize Swiper -->
    <script>
      var swiper = new Swiper(".mySwiper", {
        slidesPerView: 4,
        grid: {
          rows: 1,
        },
        spaceBetween: 30,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
          },
      });
      
      var swiper = new Swiper(".mySwiper2", {
          slidesPerView: 4,
          grid: {
            rows: 1,
          },
          spaceBetween: 30,
          pagination: {
            el: ".swiper-pagination",
            clickable: true,
          },
          navigation: {
              nextEl: ".swiper-button-next2",
              prevEl: ".swiper-button-prev2",
            },
        });
    </script>
    <a href=""></a>
    
</body>
</html>