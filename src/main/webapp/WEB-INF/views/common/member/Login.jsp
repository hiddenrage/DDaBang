<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 로그인 페이지 입니다 -->

<!-- script는 이쪽에 -->

<!-- body는 아래에 -->
	<div class="container" style="margin-bottom: 300px">
		<div style="text-align: center;margin-top: 100px;">
			<h1>로그인</h1>
		</div>
		
		<div class="row">
			<form class="form-horizontal">
				<div class="form-group">
					<div class="col-xs-12 col-sm-6 col-sm-offset-3">
						<input style="height: 50px" type="text" class="form-control" id="id" name="id" placeholder="아이디를 입력하세요">
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-12 col-sm-6 col-sm-offset-3">
						<input style="height: 50px" type="password" class="form-control" id="pass" name="pass" placeholder="Password">
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-12 col-sm-6 col-sm-offset-3">
						<span id="login" class="btn btn-success btn-lg col-xs-12">로그인</span>	
					</div>			
				</div>
			</form>
			<div class="col-xs-12 col-sm-6 col-sm-offset-3">
				<div></div>
			</div>
			<div class="col-xs-12 col-sm-6 col-sm-offset-3 ">
				<span id="searchPass" style="cursor: pointer">비밀번호 찾기</span>
			</div>
		
		</div>
						
	</div><!-- container -->
	