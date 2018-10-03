<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Login.jsp (admin) -->
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>layouts.jsp</title>
	<link href="<c:url value='/Bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="<c:url value='/Bootstrap/js/bootstrap.min.js'/>"></script>
</head>
<!-- script는 이쪽에 -->
<style>
	.container {
 		width: 90%; 
 		margin-top: 100px;
 		
	}
	.form-control {
		height: 60px;
	}
</style>
<!-- body는 아래에 -->
<body>
	<div class="container">
		<div style="text-align: center;">
			<h1>관리자 로그인</h1>
		</div>
		
		<div class="row" style="margin-top: 50px;">
			<form method="POST" class="form-horizontal" action="<c:url value='/Admin/LoginProcess.bbs'/>">
				<div class="form-group">
					<div class="col-xs-12 col-sm-6 col-sm-offset-3">
						<input type="email" class="form-control" id="id" name="id" placeholder="이메일 ">
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-12 col-sm-6 col-sm-offset-3">
						<input type="password" class="form-control" id="pass" name="pass" placeholder="비밀번호">
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-12 col-sm-6 col-sm-offset-3">
						<button type="submit" class="btn btn-success btn-lg col-xs-12 form-control">로그인</button>	
					</div>			
				</div>
			</form>	
		</div><!-- row -->			
	</div><!-- container -->
</body>
</html>