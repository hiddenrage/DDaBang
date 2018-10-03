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
<script>
	onresize = function() {
		if(window.innerWidth < 450) {
			$(".container").css('margin-top','50px').css('width','90%');
		}else{
			$(".container").css('margin-top','150px').css('width','400px');
		}
		if(window.innerHeight < 450){
			$(".container").css('margin-top','50px');
		}
	};
</script>
<style>
	 .container {
 		width: 400px; 
 		margin-top: 150px;
 		border: 1px solid grey;
 		padding: 10px;
 		text-align: center;
	} 
	.container div {
		margin: 10px;
	}
	.form-control {
		height: 45px;
	}
</style>
<!-- body는 아래에 -->
<body>
	<div class="container">
		<div>
			<h1>관리자 로그인</h1>
		</div>
		
		<div class="row">
			<form method="POST" class="form-horizontal" action="<c:url value='/Admin/LoginProcess.bbs'/>">
				<div>
					<input type="email" class="form-control" id="id" name="id" placeholder="이메일 ">
				</div>
				<div>
					<input type="password" class="form-control" id="pass" name="pass" placeholder="비밀번호">
				</div>
				<div>
					<button type="submit" class="btn btn-success btn-lg col-xs-12 form-control">로그인</button>	
				</div>
			</form>	
		</div><!-- row -->			
	</div><!-- container -->
</body>
</html>