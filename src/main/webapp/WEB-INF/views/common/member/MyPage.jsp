<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 파일명은 이곳에 -->

<!-- script는 이쪽 아래에 -->

<!-- body는 아래에 -->
<div class="container">
			<div class="page-header">
   				<h2 style="margin-left: 230px">나의 계정정보</h2>
   			</div>
   			</br>	
			<table class="table table-bordered" style="width: 700px; margin-left: 230px" >
   				<tr>
   					<td colspan="2">개인정보</td>
   				</tr>
   				<tr>
   					<td style="vertical-align: middle; background-color: rgba(80,80,80,0.1);">성명</td>
   					<td>
   						<div class="col-sm-8">
   							<input type="text" class="form-control" id="username" >
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td style="vertical-align: middle; background-color: rgba(80,80,80,0.1);">휴대폰 번호</td>
   					<td>
   						<form class="form-inline">
 							<div class="form-group">    							
  								<select class="form-control" style="margin-left: 15px"> 
   									<option value="010">010</option> 
   									<option value="011">011</option> 
   									<option value="016">016</option> 
   									<option value="017">017</option> 
   									<option value="018">018</option> 
   									<option value="019">019</option> 
   								</select>
   								<label for="email" style="margin-left:10px ;margin-right: 10px">-</label>
   							</div>
   							<div class="form-group">
   								<input type="text" class="form-control" id="number2" style="width: 90px">
   								<label for="email" style="margin-left:10px ;margin-right: 10px">-</label>
   							</div>
   							<div class="form-group">
   								<input type="text" class="form-control" id="number3" style="width: 90px">
   							</div>
   						</form>
   					</td>
   				</tr>
   				<tr>
   					<td style="vertical-align: middle; background-color: rgba(80,80,80,0.1);">이메일 주소</td>
   					<td>
 						<form class="form-inline">
 							<div class="form-group">
    							<input type="email" class="form-control" id="email" style="margin-left: 15px">
    							<label for="email">@</label>
  							</div>
   							<div class="form-group">
   							<select class="form-control" style="margin-left: 10px"> 
   								<option value="userinsert">직접입력</option> 
   								<option value="daum">daum.net</option> 
   								<option value=naver>naver.com</option> 
   								<option value="hanmail">hanmail.net</option> 
   								<option value="gmail">gmail.com</option> 
   								<option value="nate">nate.com</option> 
   								<option value="icloud">icloud.com</option> 
   								<option value="hotmail">hotmail.com</option> 
   								<option value="korea">korea.com</option> 
   								<option value="empal">empal.com</option> 
   								<option value="dreamwiz">dreamwiz.com</option> 
   								<option value="yahoo">yahoo.com</option> 
   								<option value="ymail">ymail.com</option> 
   								<option value="live">live.com</option> 
   								<option value="aol">aol.com</option> 
   								<option value="msn">msn.com</option> 
   								<option value="me">me.com</option> 
   								<option value="rocketmail">rocketmail.com</option> 
   								<option value="qq">qq.com</option> 
   								<option value="link">link.com</option> 
   							</select> 
   							</div>
   						</form>
   					</td>
   				</tr>
   				<c:if test="${kind eq 0}">
   				<tr>
   					<td rowspan="3" style="vertical-align: middle; background-color: rgba(80,80,80,0.1);">비밀번호 변경</td>
   					<td>
   						<div class="col-sm-8">
   							<input type="password" class="form-control" id="number1" placeholder="비밀번호를 입력해 주세요">
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td>
   						<div class="col-sm-8">
   							<input type="password" class="form-control" id="number2" placeholder="변경할 비밀번호를 입력해 주세요">
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td>
   						<div class="col-sm-8">
   							<input type="password" class="form-control" id="number2" placeholder="비밀번호를 다시 입력해 주세요">
   						</div>
   					</td>
   				</tr>
   				</c:if>
			</table>		
				<p style="margin-left: 230px; margin-bottom: 1px">※회원정보 및 비밀번호 변경을 원할시 -<small style="color: orange;"> 현재 페이지에서 수정/변경이 가능합니다.</small></p>
				<p style="margin-left: 230px; margin-bottom: 1px">※하위계정 추가 및 수정/삭제 -<small style="color: orange;"> 하위계정관리에서 추가/수정/삭제가 가능합니다.</small></p>
			</br>
 			<div class="form-group text-center">       
                <button type="submit" class="btn btn-primary btn-lg" style="margin-left: 10px">확인<i class="fa fa-check spaceLeft"></i></button>       
            </div>		
   			</br></br>		
	    </div>