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
<nav class="navbar navbar-default navbar-fixed-top navbar-inverse navbar-fixed-width">
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
				<li><a href="<c:url value='/'/>">HOME</a></li>
       			<li>
       				<c:if test="${empty sessionScope.id}" var="isNotLogin">
       					<a href="<c:url value='/Member/Login.bbs'/>">로그인</a>
       				</c:if>
       				<c:if test="${not isNotLogin}">
       					<a href="<c:url value='/Member/Logout.bbs'/>">로그아웃</a>
       				</c:if>
       			</li>
       			<li>
       				<a href="<c:url value='/BBS/List.bbs'/>">한줄 댓글 게시판</a>
       			</li>
       			<li>
       				<a href="<c:url value='/Market/Research.bbs'/>">통계</a>
       			</li>
       			<li>
       				<a href="<c:url value='/Market/Main.bbs'/>">경매장</a>
       			</li>
			</ul>
		</div>
	</div> <!-- container -->
</nav> <!-- navigationBar 끗-->