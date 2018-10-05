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
		
		.navbar-custom {
		    background-color:#222222;
  		    color:#ffffff;
		    border-radius:0;
		}
</style>

<!-- navigationBar 시작 -->
<nav class="navbar navbar-fixed-top navbar-custom">
	<div class="container-fluid">
		<!-- 화면 작을때 -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" 
					data-toggle="collapse" data-target="#collapseMenu">
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<c:url value='/'/>">
				<%--<img alt="회사 로고 이미지" src="<c:url value='/images/logo.gif'/>" 
						class="img-rounded"> --%>
				<span style="font-weight: bold;margin-left: 30px;">따방</span>
			</a>
		</div> <!-- navbar-header -->
		<!-- 화면 클때 -->
		<div class="collapse navbar-collapse" id="collapseMenu" style="margin-right:50px">
			<ul class="nav navbar-nav navbar-right">
				<li>
       				<a href="<c:url value='/Search/Map.bbs'/>">방검색</a>
       			</li>
       			<li>
       				<a href="<c:url value='#'/>">소식</a>
       			</li>
				<li>
       				<a href="<c:url value='/Market/Research.bbs'/>">통계</a>
       			</li>
       			<li>
       				<a href="<c:url value='#'/>">고객지원</a>
       			</li>
       			<%-- <li>
       				<a href="<c:url value='/Market/Main.bbs'/>">경매장</a>
       			</li> --%>
				<li>
       				<c:if test="${empty sessionScope.id}" var="isNotLogin">
       					<a href="#" data-toggle="modal" data-target="#exampleModal">회원가입</a>
       				</c:if>
       				<c:if test="${not isNotLogin}">
       					<a href="<c:url value='/Member/MyPage.bbs'/>">내 정보</a>
       				</c:if>
       			</li>
       			<li>
       				<c:if test="${empty sessionScope.id}" var="isNotLogin">
       					<a href="<c:url value='/Member/Login.bbs'/>">로그인</a>
       				</c:if>
       				<c:if test="${not isNotLogin}">
       					<a href="<c:url value='/Member/Logout.bbs'/>">로그아웃</a>
       				</c:if>
       			</li>
			</ul>
		</div>
	</div> <!-- container -->
</nav> <!-- navigationBar 끗-->
<!-- 모달창 -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h2 class="modal-title" id="exampleModalLabel" style="margin-left: 10px">회원가입</h2>
				<small style="margin-left: 10px">※이용하실 회원 구분을 선택하세요</small>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="false">&times;</span>
				</button>
				</br>
			</div>
			</br>
			<div class="modal-body text-center">
				<div class="">
					<a href="<c:url value='/Member/LreasignupTerms.bbs'/>"><button
							type="button" class="btn btn-primary btn-lg"
							style="margin-bottom: 30px; margin-right: 20px; height: 130px; width: 200px; font-size: 2em">공인중개사</button></a>
					<a href="<c:url value='/Member/GeneralSignUp.bbs'/>"><button
							type="button" class="btn btn-default btn-lg"
							style="margin-bottom: 30px; margin-left: 20px; height: 130px; width: 200px; font-size: 2em">일반회원</button></a>
				</div>
				<p style="margin-left: 25px; text-align: left; margin-bottom: 1px">※회원정보
					변경을 원할시</p>
				<p style="margin-left: 25px; text-align: left; font-size: 0.8em">-
					가입된 회원정보 변경은 사이트 메인 > 계정관리 에서 수정/변경이 가능합니다.</p>
				<p style="margin-left: 25px; text-align: left; margin-bottom: 1px">※하위계정
					추가 및 수정/삭제</p>
				<p style="margin-left: 25px; text-align: left; font-size: 0.8em">-
					계정관리 > 하위계정관리에서 추가/수정/삭제가 가능합니다.</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>
<!-- 모달창 -->