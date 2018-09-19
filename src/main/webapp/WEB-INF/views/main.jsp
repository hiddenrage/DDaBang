<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 파일명은 이곳에 -->

<!-- script는 이쪽 아래에 -->
<style>

.jumbotron{
    	height: 460px; 
    	background-size: 100% 100%; 
    }  

 /* 테마 -background-img 크기 조정*/
.img{
    position: relative;                                                          
    height:300px;
    width:260px;
    background-size: cover;
    display:inline-block;
    /* margin: 10px; */ /*그림 사이 간격*/
    overflow:hidden;
}

.img:hover{
	/* height: 300px;
    width:300px; */	
	transform:scale(1.1);          /*  default */
	-webkit-transform:scale(1.1);  /*  크롬 */
	-moz-transform:scale(1.1);     /* FireFox */
	-o-transform:scale(1.1);		 /* Opera */     
	transition: all 0.3s ease-in-out; 
}

/* background-img 색 어둡게 */
 .img-cover{
   position: absolute;
   height:300px;
   width:260px;
   background-color: rgba(0, 0, 0, 0.4);                                                                 
   z-index:1;
}
 
/*글자 위치 및 색 조정*/
 .img .content{
     position: absolute;
     top:50%;
     left:50%;
     transform: translate(-50%, -50%);                                                                   
     font-size:5rem;
     color: white;
     z-index: 2;
     text-align: center;
} 

.expansion{
	height:300px;
	width:260px;
	display:inline-block;
	margin-right: 30px;
	margin-bottom: 30px;
	overflow: hidden;
}
</style>
<script>
	$('nav').removeClass('navbar-fixed-width');
	$('div:eq(0)').removeClass('container');
</script>
<!-- body는 아래에 -->
<div class="row">
<div class="jumbotron col-xs-12" style=" background-image: url('../Images/main.jpg');  background-color: red;">
		<div class="container text-center" style="margin-top: 250px;">
			<h1 class="display">따방으로 찜하자</h1>
		</div>
		
		<form class="form-inline" method="post" style="text-align: center; max-width: 500px; margin: auto;">
			<input  type="text" style="width:80%; margin: auto;" name="searchWord" placeholder="관심지역 또는 매물 번호를 검색해보세요" class="form-control"/>
			<button type="submit" class="btn btn-primary">방검색</button>
		</form>
		
	</div>
	
	
		<div style="text-align: center; margin-top: 50px;">
			<h2>테마 검색</h2>
			<h4>다방의 다양한 검색조건으로 방을 찾아보세요.</h4>
		</div>
	
		<div class="container text-center" style="margin-top: 50px;">
				 <div class="expansion">
				<a href="#" class="img1"><div  class="img" style="background-image: url('../Images/cat.jpg');">
					<div class="content sample_image">
						<h3>반려동물</h3>
						<h5>반려동물과  함께 살수 있는방 알아보기</h5>
					</div>
					<div class="img-cover"></div>
				</div></a>
				</div>
				<div class="expansion">
				<a href="#" class="img1"><div  class="img" style="background-image: url('../Images/lower_house.jpg');">
					<div class="content sample_image">
						<h3>저보증금</h3>
						<h5>보증금 300만원 이하인 방 찾아보기</h5>
					</div>
					<div class="img-cover"></div>
				</div></a>
				</div>
				<div class="expansion">
				<a href="#" class="img1"><div  class="img" style="background-image: url('../Images/360.jpg');">
					<div class="content sample_image">
						<h3>360도매물</h3>
						<h5>3D 이미지로 더 자세히 볼수 있는 방 찾아보기</h5>
					</div>
					<div class="img-cover"></div>
				</div></a>
				</div>
			</div>
		
			<div class="container  text-center">
				 <div class="expansion">
				<a href="#" class="img1"><div  class="img" style="background-image: url('../Images/parking.jpg');">
					<div class="content sample_image">
						<h3>주차 가능</h3>
						<h5>주차공간이 확보된 방 찾아보기</h5>
					</div>
					<div class="img-cover"></div>
				</div></a>
				</div>
				<div class="expansion">
				<a href="#" class="img1"><div  class="img" style="background-image: url('../Images/hand.jpg');">
					<div class="content sample_image">
						<h3>직거래 매물</h3>
						<h5>중개 수수료 없는 직거래 매물 찾아보기</h5>
					</div>
					<div class="img-cover"></div>
				</div></a>
				</div>
				<div class="expansion">
				<a href="#" class="img1"><div  class="img" style="background-image: url('../Images/opistel.jpg');">
					<div class="content sample_image">
						<h3>오피스텔</h3>
						<h5>깨끗하고 편리한 주거용 오피스텔 알아보기</h5>
					</div>
					<div class="img-cover"></div>
				</div></a>
				</div>
			</div>
		
		
		<div class="table-responsive col-xs-12 col-md-offset-2 col-md-8" style="margin-top: 50px">
			<table class="table table-borderless" style="margin:auto; text-align:center; vertical-align:middle; overflow: auto;">
				
				<tr style="text-align: center;" >
					<th style="text-align: center;">형태별 검색</th>
					<th style="text-align: center;">태마별 검색</th>
					<th style="text-align: center;">공인중개사 회원가입</th>
					<th style="text-align: center;">상품소개</th>
					<th style="text-align: center;">다방뉴스</th>
					<th style="text-align: center;">고객지원</th>
					<th style="text-align: center;">About다방</th>
					<!-- table table-borderless table-condensed -->
				</tr>
				
				<tr>
					<td><a href="#">원룸</a></td>
					<td><a href="#">저보증금</a></td>
					<td><a href="#">다방 이용 설명서</a></td>
					<td><a href="#">동상품</a></td>
					<td><a href="#">공지사항</a></td>
					<td><a href="#">자주 묻는 질문</a></td>
					<td><a href="#">회사소개</a></td>
				</tr>
				<tr>
					<td><a href="#">투룸</a></td>
					<td><a href="#">오피스텔</a></td>
					<td><a href="#">가입 신청</a></td>
					<td><a href="#">지하철 상품</a></td>
					<td><a href="#">이벤트</a></td>
					<td><a href="#">Android/IOS</a></td>
					<td><a href="#">오시는길</a></td>
				</tr>
				<tr>
					<td><a href="#">쓰리룸</a></td>
					<td><a href="#">직거래 매물</a></td>
					<td><a href="#"></a></td>
					<td><a href="#">캠퍼스 상품</a></td>
					<td><a href="#">기사보기</a></td>
					<td><a href="#">월페이퍼</a></td>
					<td><a href="#">제휴 문의</a></td>
				</tr>
				<tr>
					<td><a href="#">오피스텔</a></td>
					<td><a href="#">주차 가능</a></td>
					<td><a href="#"></a></td>
					<td><a href="#">일반 상품</a></td>
					<td><a href="#"></a></td>
					<td><a href="#">다방 공식 포스트</a></td>
					<td><a href="#"></a></td>
				</tr>
				<tr>
					<td><a href="#">아파트</a></td>
					<td><a href="#">반려동물 가능</a></td>
					<td><a href="#"></a></td>
					<td><a href="#"></a></td>
					<td><a href="#"></a></td>
					<td><a href="#"></a></td>
					<td><a href="#"></a></td>
				</tr>
				<tr>
					<td><a href="#"></a></td>
					<td><a href="#">360도 매물</a></td>
					<td><a href="#"></a></td>
					<td><a href="#"></a></td>
					<td><a href="#"></a></td>
					<td><a href="#"></a></td>
					<td><a href="#"></a></td>
				</tr>
			</table>
		</div>
		
		<div class="col-xs-12 col-md-12" style="text-align: center; margin-top: 50px; margin-bottom: 50px;">
			<button type="button" class="btn btn-default">회사 소개</button>
			<button type="button" class="btn btn-default">공인 중개사 회원가입</button>
			<button type="button" class="btn btn-default">이용 약관</button>
			<button type="button" class="btn btn-default">개인정보 처리방침</button>
			<button type="button" class="btn btn-default">매물 관리 규정</button>
			<button type="button" class="btn btn-default">자동저장 서비스</button>
		</div>
</div>


		