<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 파일명은 이곳에 -->

<!-- script는 이쪽 아래에 -->

<!-- body는 아래에 -->
<div class="container">
			<div class="page-header">
   				<h2 style="margin-left: 230px">내 계정</h2>
   			</div>
   			</br>	
			<table class="table table-bordered" style="width: 700px; margin-left: 230px" >
   				<tr>
   					<td colspan="2">개인정보</td>
   				</tr>
   				<tr>
   					<td>성명</td>
   					<td>
   						<div class="col-sm-8">
   							<input type="text" class="form-control" id="username" readonly >
   						</div>
   					</td>
   				</tr>
   				<tr>
   					<td>휴대폰 번호</td>
   					<td>
   						<form class="form-inline">
 							<div class="form-group">    							
  								<select class="form-control" style="margin-left: 15px" readonly> 
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
   								<input type="text" class="form-control" id="number2" style="width: 90px" readonly>
   								<label for="email" style="margin-left:10px ;margin-right: 10px">-</label>
   							</div>
   							<div class="form-group">
   								<input type="text" class="form-control" id="number3" style="width: 90px" readonly>
   							</div>
   						</form>
   					</td>
   				</tr>
   				<tr>
   					<td>이메일 주소</td>
   					<td>
 						<div class="col-sm-8">
    						<input type="email" class="form-control" id="email" style="margin-left: 0px" readonly>
  						</div>

   					</td>
   				</tr>
   				<tr>
   					<td rowspan="3">현재 비밀번호</td>
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
			</table>
			
 			</br></br>
 			<div class="form-group text-center">
                <button type="submit" class="btn btn-primary btn-lg" style="margin-left: 10px">확인<i class="fa fa-check spaceLeft"></i></button>       
            </div>		
   			</br></br>		
	    </div>