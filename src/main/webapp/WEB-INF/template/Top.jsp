<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- DataRoomTop.jsp -->
<script>
	$(function(){
	    $(".navbar-right li a").click(function(){
	    	$('.navbar-right li').each(function(){
	   			$(this).removeClass("active");
	    	});       
	    	$(this).parent().addClass("active");
	   	});
   	});
</script>

<style>
		body {
			padding-top: 50px;
		}
		
		@media all and (min-width: 768px) {
			.navbar-fixed-width {
				width: 768px;
				margin-left: auto;
				margin-right: auto;
			}
		}
		
		@media all and (min-width: 992px) {
			.navbar-fixed-width {
				width: 992px;
				margin-left: auto;
				margin-right: auto;
			}
		}
		
		@media all and (min-width: 1200px) {
			.navbar-fixed-width {
				width: 1200px;
				margin-left: auto;
				margin-right: auto;
			}
		}
		
		.active {
			font-weight: bold;
			font-size:1.2em;
		}
</style>

<!-- navigationBar 시작 -->
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<!-- 화면 작을때 -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" 
					data-toggle="collapse" data-target="#collapseMenu">
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">
				<%--<img alt="회사 로고 이미지" src="<c:url value='/images/logo.gif'/>" 
						class="img-rounded"> --%>
				따방 프로젝트
			</a>
		</div> <!-- navbar-header -->
		<!-- 화면 클때 -->
		<div class="collapse navbar-collapse" id="collapseMenu">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="<c:url value='/'/>">메인</a></li>
       			<li><a class="dropdown-toggle" data-toggle="dropdown" 
							id="dropdownButton"> 
						개발용 회원 메뉴<span class="caret"></span>
					</a>
					<ul class="dropdown-menu dropdown-menu-right">
						<li><a href="<c:url value='/WEB-INF/views/common/member/Template.jsp'/>">로그인</a></li>
						<li><a href="<c:url value='/WEB-INF/views/common/member/Template.jsp'/>">탈퇴</a></li>
						<li class="divider"></li>
						<li><a href="<c:url value='/WEB-INF/views/common/member/Template.jsp'/>">개인정보</a></li>
						<li><a href="<c:url value='/WEB-INF/views/common/member/Template.jsp'/>">매물 거래 내역</a></li>
						<li><a href="<c:url value='/WEB-INF/views/common/member/Template.jsp'/>">경매 입찰 내역</a></li>
						<li class="divider"></li>
						<li><a href="<c:url value='/WEB-INF/views/common/member/expert/Template.jsp'/>">등록 매물 목록</a></li>
						<li><a href="<c:url value='/WEB-INF/views/common/member/expert/Template.jsp'/>">평가보기</a></li>
						<li class="divider"></li>
						<li><a href="<c:url value='/WEB-INF/views/common/member/normal/Template.jsp'/>">본방</a></li>
						<li><a href="<c:url value='/WEB-INF/views/common/member/normal/Template.jsp'/>">찜방</a></li>
						<li class="divider"></li>
						<li><a href="<c:url value='/WEB-INF/views/common/member/signup/Template.jsp'/>">공인중개사 회원가입</a></li>
						<li><a href="<c:url value='/WEB-INF/views/common/member/signup/Template.jsp'/>">일반 회원가입</a></li>
						<li><a href="<c:url value='/WEB-INF/views/common/member/signup/Template.jsp'/>">공인중개사 이용약관</a></li>
					</ul>
				</li>
       			<li><a class="dropdown-toggle" data-toggle="dropdown" 
							id="dropdownButton"> 
						개발용 매물 메뉴<span class="caret"></span>
					</a>
					<ul class="dropdown-menu dropdown-menu-right">
						<li><a href="<c:url value='/WEB-INF/views/common/item/search/Template.jsp'/>">방 검색 페이지</a></li>
						<li><a href="<c:url value='/WEB-INF/views/common/item/search/Template.jsp'/>">방 상세보기</a></li>
						<li><a href="<c:url value='/WEB-INF/views/common/item/search/Template.jsp'/>">매물 요청 게시판</a></li>
						<li class="divider"></li>
						<li><a href="<c:url value='/WEB-INF/views/common/item/research/Template.jsp'/>">통계</a></li>
						<li class="divider"></li>
						<li><a href="<c:url value='/WEB-INF/views/common/item/market/Template.jsp'/>">경매 메인</a></li>
						<li><a href="<c:url value='/WEB-INF/views/common/item/market/Template.jsp'/>">경매 등록</a></li>
						<li><a href="<c:url value='/WEB-INF/views/common/item/market/Template.jsp'/>">경매 상세</a></li>
					</ul>
				</li>
       			<li><a class="dropdown-toggle" data-toggle="dropdown" 
							id="dropdownButton"> 
						개발용 정보 메뉴<span class="caret"></span>
					</a>
					<ul class="dropdown-menu dropdown-menu-right">
						<li><a href="<c:url value='/WEB-INF/views/common/info/Template.jsp'/>">보도자료</a></li>
						<li><a href="<c:url value='/WEB-INF/views/common/info/Template.jsp'/>">시세보기</a></li>
						<li><a href="<c:url value='/WEB-INF/views/common/info/Template.jsp'/>">이벤트</a></li>
						<li class="divider"></li>
						<li><a href="<c:url value='/WEB-INF/views/common/support'/>">1대1문의</a></li>
						<li><a href="<c:url value='/WEB-INF/views/common/support'/>">FAQ</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div> <!-- container -->
</nav> <!-- navigationBar 끗-->
