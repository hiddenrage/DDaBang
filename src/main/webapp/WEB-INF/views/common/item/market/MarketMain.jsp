<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 파일명은 이곳에 -->

<!-- script는 이쪽 아래에 -->
<script>
	$(function(){
		$(':input[type=button]').click(function(){
			location.href='<c:url value="/Market/Write.bbs"/>';
		});
	});
</script>
<style>
	body {
		padding-top:100px;
		height: 100%;
	}
	#marketNav {
		margin-top: 50px;
		background-color: #cccccc;
	}
</style>
<!-- body는 아래에 -->
<nav id="marketNav" class="navbar navbar-fixed-top navbar-custom">
	<div class="container-fluid">
		<!-- 화면 작을때 -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" 
					data-toggle="collapse" data-target="#collapseMenu">
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</button>
		</div> <!-- navbar-header -->
		<!-- 화면 클때 -->
		<div class="collapse navbar-collapse" id="collapseMenu" style="margin-right:50px">
			<ul class="nav navbar-nav navbar-right">
				<li>
       				<a href="<c:url value='#'/>">방검색</a>
       			</li>
			</ul>
		</div>
	</div> <!-- container -->
</nav> <!-- navigationBar 끗-->
<div class="container">
	<div class="row">
		<div style="float:left">
			<h2>경매 메인</h2>
		</div>
		<div style="float:right;margin-top: 15px;margin-right: 10px">
			<input type="button" class="btn btn-success" value="경매 신청">
		</div>
		<div>
			<table class="table table-bordered">
				<tr>
					<td colspan="3" style="padding:8;">
						<!-- 진행중인 경매 노출 -->
						<a href="#" style="display:block;background-color: yellow">
							<div>
								<img alt="이미지" src="<c:url value='/resources/images/alphaca.jpg'/>" 
								style="max-width: 300px;max-height: 300px;">
							</div>
						</a>
					</td>
				</tr>
				<tr>
					<td>에헤헤
					
					</td>
					<td>에헤헤
					
					</td>
					<td>에헤헤
					
					</td>
				</tr>
				<tr>
					<td>에헤헤
					
					</td>
					<td>에헤헤
					
					</td>
					<td>에헤헤
					
					</td>
				</tr>
				<tr>
					<td>에헤헤
					
					</td>
					<td>에헤헤
					
					</td>
					<td>에헤헤
					
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>