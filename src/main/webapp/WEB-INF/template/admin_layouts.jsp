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
	<title>admin_layouts.jsp</title>
	<link href="<c:url value='/Bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="<c:url value='/Bootstrap/js/bootstrap.min.js'/>"></script>

    <!-- MetisMenu CSS -->
    <link href="<c:url value='/resources/sb-admin-2/vendor/metisMenu/metisMenu.min.css'/>" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<c:url value='/resources/sb-admin-2/dist/css/sb-admin-2.css'/>" rel="stylesheet">
    <!-- Morris Charts CSS -->
    <link href="<c:url value='/resources/sb-admin-2/vendor/morrisjs/morris.css'/>" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="<c:url value='/resources/sb-admin-2/vendor/font-awesome/css/font-awesome.min.css'/>" rel="stylesheet" type="text/css">
	
    <!-- Metis Menu Plugin JavaScript -->
    <script src="<c:url value='/resources/sb-admin-2/vendor/metisMenu/metisMenu.min.js'/>"></script>
    <!-- Morris Charts JavaScript -->
    <script src="<c:url value='/resources/sb-admin-2/vendor/raphael/raphael.min.js'/>"></script>
    <script src="<c:url value='/resources/sb-admin-2/vendor/morrisjs/morris.min.js'/>"></script>
    <script src="<c:url value='/resources/sb-admin-2/data/morris-data.js'/>"></script>
    <!-- Custom Theme JavaScript -->
    <script src="<c:url value='/resources/sb-admin-2/dist/js/sb-admin-2.js'/>"></script>
</head>
<body>
	<div class="wrapper">
		<!-- 네비게이션바 -->
		<tiles:insertAttribute name="Top"/>
		<!-- 네비게이션바 끗 -->
		<!-- 내용 시작 -->
		<div id="page-wrapper">
			<tiles:insertAttribute name="Body" />
<%-- 		<tiles:insertAttribute name="Footer" /> --%>
		</div>
		<!-- 내용 끝 -->
	</div>
</body>
</html>