<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bd6d42e938d967a6dfa90b6717f8df61"></script>
<script src="<c:url value='/resources/js/clusterer.js'/>"></script>
<script src="<c:url value='/resources/js/service.js'/>"></script>
<!-- DataRoomTop.jsp -->

<!-- Top.jsp -->
<link href="<c:url value='/resources/css/Top.css'/>" rel="stylesheet">

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

<!-- navigationBar 시작 -->
<nav id="mainNav" class="navbar navbar-fixed-top navbar-custom navbar-right">
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
				<span style="font-weight: bold;margin-left: 30px;margin-right:30px">따방</span>
			</a>
		</div> <!-- navbar-header -->
		<!-- 화면 클때 -->
		<div class="collapse navbar-collapse" id="collapseMenu" style="margin-right:50px">
			<ul class="nav navbar-nav navbar-right">
				<li>
       				<a href="<c:url value='/Search/Map.bbs'/>">방검색</a>
       			</li>
       			<%-- <li>
       				<a href="<c:url value='#'/>">소식</a>
       			</li> --%>
				<li>
       				<%-- 비회원이거나 일반회원의 경우 --%>
					<c:if test="${empty sessionScope.expert}" var="isNotExpert">
       					<a href="<c:url value='#'/>">관심 목록</a>
       				</c:if>
					<%-- 공인중개사일 경우 --%>
       				<c:if test="${not isNotExpert}">
       					<a href="<c:url value='#'/>">매물 관리</a>
       				</c:if>
				</li>
       			<li>
       				<a href="<c:url value='#'/>">고객지원</a>
       			</li>
       			<li>
       				<a href="<c:url value='/Market/Main.bbs'/>">경매장</a>
       			</li>
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
       					<a href="<c:url value='/Member/Login.bbs'/>">로그인 및 회원가입</a>
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
