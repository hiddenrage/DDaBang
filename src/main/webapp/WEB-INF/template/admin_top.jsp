<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 이곳에 파일명을 입력 -->
<!-- Top.jsp -->
<!-- script는 이쪽 아래에 -->

<!-- body는 아래에 -->
<!-- Navigation -->
<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
	<div class="navbar-header">
	    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	    </button>
	    <a class="navbar-brand" href="<c:url value='/Admin/Main.bbs'/>">따방 관리 홈</a>
	</div>
	<!-- /.navbar-header -->
	
	<ul class="nav navbar-top-links navbar-right">    
	    <!-- /.dropdown -->
	    <li class="dropdown">
	        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
	            <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
	        </a>
	        <ul class="dropdown-menu dropdown-alerts">
	            <li>
	                <a href="#">
	                    <div>
	                        <i class="fa fa-comment fa-fw"></i> New Comment
	                        <span class="pull-right text-muted small">4 minutes ago</span>
	                    </div>
	                </a>
	            </li>
	            <li class="divider"></li>
	            <li>
	                <a href="#">
	                    <div>
	                        <i class="fa fa-twitter fa-fw"></i> 3 New Followers
	                        <span class="pull-right text-muted small">12 minutes ago</span>
	                    </div>
	                </a>
	            </li>
	            <li class="divider"></li>
	            <li>
	                <a href="#">
	                    <div>
	                        <i class="fa fa-envelope fa-fw"></i> Message Sent
	                        <span class="pull-right text-muted small">4 minutes ago</span>
	                    </div>
	                </a>
	            </li>
	            <li class="divider"></li>
	            <li>
	                <a href="#">
	                    <div>
	                        <i class="fa fa-tasks fa-fw"></i> New Task
	                        <span class="pull-right text-muted small">4 minutes ago</span>
	                    </div>
	                </a>
	            </li>
	            <li class="divider"></li>
	            <li>
	                <a href="#">
	                    <div>
	                        <i class="fa fa-upload fa-fw"></i> Server Rebooted
	                        <span class="pull-right text-muted small">4 minutes ago</span>
	                    </div>
	                </a>
	            </li>
	            <li class="divider"></li>
	            <li>
	                <a class="text-center" href="#">
	                    <strong>See All Alerts</strong>
	                    <i class="fa fa-angle-right"></i>
	                </a>
	            </li>
	        </ul>
	        <!-- /.dropdown-alerts -->
	    </li>
	    <!-- /.dropdown -->
	    <li class="dropdown">
	        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
	            <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
	        </a>
	        <ul class="dropdown-menu dropdown-user">
	            <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
	            </li>
	            <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
	            </li>
	            <li class="divider"></li>
	            <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> 로그아웃</a>
	            </li>
	        </ul>
	        <!-- /.dropdown-user -->
	    </li>
	    <!-- /.dropdown -->
	</ul>
	<!-- /.navbar-top-links -->
	
	<div class="navbar-default sidebar" role="navigation">
	    <div class="sidebar-nav navbar-collapse">
	        <ul class="nav" id="side-menu">
	            <li>
	                <a href="<c:url value='/Admin/Main.bbs'/>"><i class="fa fa-dashboard fa-fw"></i> 대쉬보드</a>
	            </li>
	            <li>
	                <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> 매물 관리<span class="fa arrow"></span></a>
	                <ul class="nav nav-second-level">
	                	<li>
	                        <a href="#">매물 검색</a>
	                    </li>
	                    <li>
	                        <a href="#">실시간 매물 관리</a>
	                    </li>
	                    <li>
	                        <a href="<c:url value='/Admin/ItemCollect.bbs'/>">매물 수집</a>
	                    </li>
	                </ul>
	                <!-- /.nav-second-level -->
	            </li>
	            <li>
	                <a href="#"><i class="fa fa-sitemap fa-fw"></i> 회원 관리<span class="fa arrow"></span></a>
	                <ul class="nav nav-second-level">
	                    <li>
	                        <a href="#">전체 회원 관리</a>
	                    </li>
	                    <li>
	                        <a href="#">가입 신청 조회</a>
	                    </li>
	                </ul>
	                <!-- /.nav-second-level -->
	            </li>
	            <li>
	                <a href="#"><i class="fa fa-files-o fa-fw"></i> 고객지원<span class="fa arrow"></span></a>
	                <ul class="nav nav-second-level">
	                    <li>
	                        <a href="#">1대1 문의</a>
	                    </li>
	                </ul>
	                <!-- /.nav-second-level -->
	            </li>
	        </ul>
	    </div>
	    <!-- /.sidebar-collapse -->
	</div>
	<!-- /.navbar-static-side -->
</nav>
