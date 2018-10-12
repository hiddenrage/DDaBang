<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- sale/List.jsp -->
<!-- script는 이쪽 아래에 -->
<script>
	$(function() {
		$("#write").click(function(){
			location.href="<c:url value='/Deal/Write.bbs'/>";
		});		
	});
	
</script>

<!-- body -->
<div>
	<h2>임시 리스트</h2>
	<button id="write" class="btn btn-success">방 등록</button>
</div>