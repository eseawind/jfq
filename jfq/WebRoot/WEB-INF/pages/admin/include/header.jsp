<%--
/*
 * 头部共通部分画面
 *
 * VERSION  DATE        BY           REASON
 * -------- ----------- ------------ ------------------------------------------
 * 1.00     2014-02-28  wuxiaogang   程序・发布
 * -------- ----------- ------------ ------------------------------------------
 * Copyright 2014 jfq System. - All Rights Reserved.
 *
 */
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" session="false"%>
<%@page import="cn.com.softvan.common.CommonConstant"%>
<%@page import="cn.com.softvan.bean.BaseUserBean"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path;
	request.setAttribute("path", path);
	request.setAttribute("basePath", basePath);
%>
<div class="header navbar navbar-inverse navbar-fixed-top">
		<!-- BEGIN TOP NAVIGATION BAR -->
		<div class="header-inner">
			<!-- BEGIN LOGO -->
			<a class="" href="${basePath}/h/home_init.ac">
			<img alt="" src="${basePath}/images/dd_03.jpg" style="height: 42px;">
			</a>
			<!-- END LOGO -->
			<!-- BEGIN RESPONSIVE MENU TOGGLER -->
			<a href="javascript:;" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
			<img src="${basePath}/plugins/bootstrap.admin.theme/assets/img/menu-toggler.png" alt="">
			</a> 
			<!-- END RESPONSIVE MENU TOGGLER -->
			<!-- BEGIN TOP NAVIGATION MENU -->
			<ul class="nav navbar-nav pull-right">
				<!-- BEGIN USER LOGIN DROPDOWN -->
				<li><a href="${basePath}" id="dropdown" target="_blank"><i class="fa fa-bookmark"></i> 前台首页</a></li>
				<li class="dropdown user">
					 <%
						BaseUserBean user = (BaseUserBean) request.getSession().getAttribute(CommonConstant.SESSION_KEY_USER);
					if (user != null) {
					%>
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
					<img alt="" src="${basePath}/plugins/bootstrap.admin.theme/assets/img/avatar1_small.jpg">
					<span class="username hidden-480"><%=user.getUser_id()%></span>
					<i class="fa fa-angle-down"></i>
					</a>
					<ul class="dropdown-menu">
						<li><a href="${basePath}/h/home_edit.ac?id=<%=user.getId()%>"><i class="fa fa-cogs"></i> 信息修改</a></li>
						<li><a href="javascript:;" id="trigger_fullscreen"><i class="fa fa-move"></i> 全屏展示</a></li>
						<li class="divider"></li>
						<li><a href="${basePath}/h/s005_init.ac"><i class="fa fa-book"></i> 导航管理</a></li>
						<li class="divider"></li>
						<li><a href="<%=basePath%>/home_logout.ac"><i class="fa fa-key"></i> 安全退出</a></li>
					</ul>
					 <%
						}
					%>
				</li>
				<!-- END USER LOGIN DROPDOWN -->
			</ul>
			<!-- END TOP NAVIGATION MENU -->
		</div>
		<!-- END TOP NAVIGATION BAR -->
	</div>