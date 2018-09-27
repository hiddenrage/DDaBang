<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
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
						<button type="submit" id="login" class="btn btn-success btn-lg col-xs-12">로그인</button>	
					</div>			
				</div>
			</form>	
				<div class="form-group">			
					<div class="col-xs-12 col-sm-6 col-sm-offset-3">
					<div class="row">
						<a href="${url }" id="login" class="btn btn-success btn-lg col-xs-12">네이버 아이디로 로그인</a>	
					</div>	
					</div>			
				</div>			
			<div class="col-xs-12 col-sm-6 col-sm-offset-3">
				<div style="display: inline-block;"><span id="searchPass" style="cursor: pointer">비밀번호 찾기</span></div>
				<div style="display: inline-block;float: right;"><span id="signup" style="cursor: pointer;">회원가입</span></div>
			</div>
			
		
		</div>
						
	</div><!-- container -->
	