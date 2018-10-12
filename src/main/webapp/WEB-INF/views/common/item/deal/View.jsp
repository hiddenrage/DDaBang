<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
  
<style>
	.table tr td:nth-child(odd){
	width:23%;
	}
	.table tr td:nth-child(even){
	font-weight:bold;
	text-align: right;
	
	}
	.table tr td:nth-child(2){
	width:20%
	}
	
	.fixed {
	  position: fixed;
	  top: 10px;
	  right : 230px;
	  width: 260px;
	  background-color: white;
	  border: 1px solid gray;
	}

</style>
<script>
	$(function(){
		$('#EditRoom').click(function(){
			location.href="<c:url value='/Deal/Edit.bbs'/>";
		});
		$('#List').click(function(){
			location.href="<c:url value='/Deal/List.bbs'/>";
		});
	});
</script>
	<div class="fixed">
		<table class="table">
			<tr>
				<td>원룸 월세 200 / 33만원</td>
			</tr>
			<tr>
				<td>가성비 갑 지하철 가까움</td>
			</tr>
			<tr>
				<td style="font-weight: 0.8em">서울특별시 금천구 가산동</td>
			</tr>
			<tr>
				<td>#주차   #반려동물</td>
			</tr>
		</table>
	</div>
	
    <div class="container" style="width: 640px;">
    
    	<p style="width:640px; height: 400px; background-color: yellow; text-align: center; line-height: 400px;">집 사진 넣는곳이여</p>
    
    	<h3>매물정보</h3>
    	<table class="table">
    		<tr>
    			<td>보증금/월세</td>
    			<td></td>
    			<td>방 종류</td>
    			<td>${roomlist}</td>
    		</tr>
    		<tr>
    			<td>해당 층/건물 층</td>
    			<td>${selectfloor}층/${housefloor}층</td>
    			<td>전용 / 공급면적</td>
    			<td>${Exclusivearea}/${Supplyarea}</td>
    		</tr>
    		<tr>
    			<td>관리비</td>
    			<td>
    			<c:forEach var="money" items="${paramValues.money }">
  				${money}
  				</c:forEach>
    			</td>
    			<td>관리비포함항목</td>
    			<td>
    			<c:forEach var="managemoney" items="${paramValues.managemoney }">
  				${managemoney}
  				</c:forEach>
  				</td>
    		</tr>
    		<tr>
    			<td>난방종류</td>
    			<td>${hiter}</td>
    			<td>입주가능일</td>
    			<td>${moving_date}</td>
    		</tr>
    		<tr>
    			<td>주차</td>
    			<td>
    			<c:forEach var="parking" items="${paramValues.parking}">
    			${parking}
    			</c:forEach></td>
    			<td>반려동물</td>
    			<td>
    			<c:forEach var="animal" items="${paramValues.animal}">
    			${animal}
    			</c:forEach>
    			</td>
    		</tr>
    		<tr>
    			<td>엘리베이터</td>
    			<td><c:forEach var="elevator" items="${paramValues.elevator}">
    			${elevator}
    			</c:forEach></td>
    			<td></td>
    			<td></td>
    		</tr>
    	</table>
    	
    	<table style="text-align: center;">
    		<h3>옵션</h3>
    		<c:set var="black" value="${fn:split('1-1aircon,2-1washer,3-1bed,4-1desk,5-1dressroom,6-1tv,7-1shoesroom,8-1Refrigerator,9-1gasrange,10-1induction,11-1microwave,12-1doorlock,13-1bidet', ',')}"></c:set>
			<c:set var="color" value="${fn:split('1aircon,2washer,3bed,4desk,5dressroom,6tv,7shoesroom,8Refrigerator,9gasrange,10induction,11microwave,12doorlock,13bidet', ',') }"></c:set>
		 	<c:set var="selectedOption" value="${fn:join(paramValues.option,',')}"/>
			<c:set var="options" value="${fn:split('에어컨,세탁기,침대,책상,옷장,TV,신발장,냉장고,가스레인지,인덕션,전자레인지,전자도어락,비데', ',')}"></c:set>
					
			<c:forEach var="item" items="${options}" varStatus="i">
				<c:if test="${i.index eq 0 || i.index eq 7 }">
					<tr style="text-align: center;">
				</c:if>
					<td>	
						<c:if test="${fn:contains(selectedOption,item)}" var="image">
								<img style="margin-right: 26px;"src="<c:url value='/resources/images/options/${color[i.index]}.png'/>"></img>
						</c:if>
						<c:if test="${!image}">
								<img style="margin-right: 26px;"src="<c:url value='/resources/images/options/${black[i.index]}.png'/>"></img>
						</c:if>
					</td>
				<c:if test="${i.index eq 6 || i.index eq 12 }">
					</tr>
				</c:if>		
			</c:forEach>				
    	</table>
    	<h3>상세설명</h3>
    	<td>
    	<TEXTAREA rows="20" cols="100">
    	</TEXTAREA>
    	</td>
    	<div style=" text-align: center;">
			<button style="width:200px; height: 50px;" id="Main">취소</button>
			<button style="width:200px; height: 50px;" id="EditRoom">수정</button>
			<button style="width:200px; height: 50px;" id="List">목록</button>
		</div>
    </div>
    