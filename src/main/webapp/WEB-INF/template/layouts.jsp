<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>layouts.jsp</title>
<link href="<c:url value='/Bootstrap/css/bootstrap.min.css'/>"rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="<c:url value='/Bootstrap/js/bootstrap.min.js'/>"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>
<body>
	<div class="wrapper">
		<!-- 네비게이션바 -->
		<tiles:insertAttribute name="Top"/>
		<!-- 네비게이션바 끗 -->
		
		<!-- 내용 시작 -->
		<tiles:insertAttribute name="Body" />
		<!-- 내용 끝 -->
		<tiles:insertAttribute name="Footer" />
	</div>
	<!-- container -->
</body>
</html>