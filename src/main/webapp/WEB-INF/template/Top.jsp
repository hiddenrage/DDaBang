<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
       				<a href="<c:url value='#'/>">방검색</a>
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
       				<c:if test="${not empty sessionScope.id}" var="isNotLogin">
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