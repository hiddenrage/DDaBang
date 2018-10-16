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
	
    <!-- MetisMenu CSS -->
    <link href="<c:url value='/resources/sb-admin-2/vendor/metisMenu/metisMenu.min.css'/>" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<c:url value='/resources/sb-admin-2/dist/css/sb-admin-2.css'/>" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="<c:url value='/resources/sb-admin-2/vendor/font-awesome/css/font-awesome.min.css'/>" rel="stylesheet" type="text/css">
</head>
<!-- script는 이쪽에 -->
<!-- Metis Menu Plugin JavaScript -->
<script src="<c:url value='/resources/sb-admin-2/vendor/metisMenu/metisMenu.min.js'/>"></script>
<!-- Custom Theme JavaScript -->
<script src="<c:url value='/resources/sb-admin-2/dist/js/sb-admin-2.js'/>"></script>
<script>
	onresize = function() {
		if(window.innerWidth < 350) {
			$(".container").css('margin-top','0px').css('width','90%');
		}else{
			$(".container").css('margin-top','100px').css('width','300px');
		}
		if(window.innerHeight < 350){
			$(".container").css('margin-top','0px');
		}
	};
</script>
<style>
	 .container {
  		width: 300px;  
  		margin-top: 100px; 
 		text-align: center;
	} 
	fieldset div:nth-child(-n+2){
 		height: 35px; 
		margin-bottom:10px;
	}
	input[type=submit] {
		padding: 0;
		height: 40px;
		line-height: 40px;
	}
</style>
<!-- body는 아래에 -->
<body>
	<div class="container">
		<div class="row">
			<div class="login-panel panel panel-default">
            	<div class="panel-heading">
                	<h3 class="panel-title">따방 관리자 페이지</h3>
               	</div>
               	<div class="panel-body">
					<form method="POST" class="form-horizontal" action="<c:url value='/Admin/LoginProcess.bbs'/>">
						<fieldset>
							<div>
								<input type="text" class="form-control" id="id" name="id" placeholder="아이디 ">
							</div>
							<div>
								<input type="password" class="form-control" id="pwd" name="pwd" placeholder="비밀번호">
							</div>	                       
	                        <div>
								<input type="submit" class="btn btn-success btn-lg col-xs-12 form-control" value="로그인"/>	
							</div>
                    	</fieldset>
					</form>	
				</div>
            </div>
		</div><!-- row -->			
	</div><!-- container -->
</body>
</html>