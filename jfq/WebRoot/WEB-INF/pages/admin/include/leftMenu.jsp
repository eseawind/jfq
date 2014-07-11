<%--
/*
 * 底部共通部分画面
 *
 * VERSION  DATE        BY           REASON
 * -------- ----------- ------------ ------------------------------------------
 * 1.00     2014-03-25  wuxiaogang        程序・发布
 * -------- ----------- ------------ ------------------------------------------
 * Copyright 2014 jfq System. - All Rights Reserved.
 *
 */
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" session="false"%>
<%@ taglib prefix="security" uri="/WEB-INF/permission-tags.tld"%>
<div class="page-sidebar navbar-collapse collapse">
	<!-- BEGIN SIDEBAR MENU -->        
	<ul class="page-sidebar-menu">
		<li>
			<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
			<div class="sidebar-toggler hidden-phone"></div>
			<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
		</li>
		<!-- <li>
			BEGIN RESPONSIVE QUICK SEARCH FORM
			<form class="sidebar-search" action="#" method="POST">
				<div class="form-container">
					<div class="input-box">
						<a href="javascript:;" class="remove"></a>
						<input placeholder="Search..." type="text">
						<input class="submit" value=" " type="button">
					</div>
				</div>
			</form>
			END RESPONSIVE QUICK SEARCH FORM
		</li> -->
		<li id="home_init" class="">
			<a href="${basePath}/home_init.ac">
			<i class="fa fa-home"></i> 
			<span class="title">系统主页</span>
			</a>
		</li>
		<security:permission id="" name="/sys">
		<li id="sys" class="">
			<a class="active" href="javascript:;">
			<i class="fa fa-bar-chart-o"></i> 
			<span class="title">资讯管理</span>
			<span id="sys_arrow" class="arrow"></span>
			</a>
			<ul id="sys_sub_menu" style="display: none;" class="sub-menu">
				<li id="sys_sub_menu_l1_sub_menu_l0"><a href="${basePath }/h/s002_init.ac">栏目管理</a></li>
				<li id="sys_sub_menu_l1_sub_menu_l1"><a href="${basePath }/h/s001_init.ac">资讯管理</a></li>
				<li id="sys_sub_menu_l1_sub_menu_l2"><a href="${basePath }/h/s001_recycle.ac">资讯回收站</a></li>
			</ul>
		</li>
		</security:permission>
		<security:permission id="" name="/sys4">
		<li id="sys4" class="">
			<a class="active" href="javascript:;">
			<i class="fa fa-coffee"></i> 
			<span class="title">合作机构</span>
			<span id="sys4_arrow" class="arrow"></span>
			</a>
			<ul id="sys4_sub_menu" style="display: none;" class="sub-menu">
				<li id="sys4_sub_menu_l1_sub_menu_l1"><a href="${basePath }/h/s004_init.ac">信息管理</a></li>
				<li id="sys4_sub_menu_l1_sub_menu_l2"><a href="${basePath }/h/s004_recycle.ac">信息回收站</a></li>
			</ul>
		</li>
		</security:permission>
		<security:permission id="" name="/sys3">
		<li id="sys3" class="">
			<a class="active" href="javascript:;">
			<i class="fa fa-bullhorn"></i> 
			<span class="title">友情链接</span>
			<span id="sys3_arrow" class="arrow"></span>
			</a>
			<ul id="sys3_sub_menu" style="display: none;" class="sub-menu">
				<li id="sys3_sub_menu_l1_sub_menu_l1"><a href="${basePath }/h/s003_init.ac">信息管理</a></li>
				<li id="sys3_sub_menu_l1_sub_menu_l2"><a href="${basePath }/h/s003_recycle.ac">信息回收站</a></li>
			</ul>
		</li>
		</security:permission>
		<security:permission id="" name="/sys9">
		<li id="sys9" class="">
			<a class="active" href="javascript:;">
			<i class="fa  fa-check-square-o"></i> 
			<span class="title">系统管理</span>
			<span id="sys9_arrow" class="arrow"></span>
			</a>
			<ul id="sys9_sub_menu" style="display: none;" class="sub-menu">
				<li id="sys9_sub_menu_l1"><a href="${basePath }/h/u001_init.ac">用户管理</a></li>
				<li id="sys9_sub_menu_l2"><a href="${basePath }/h/u002_init.ac">角色管理</a></li>
			</ul>
		</li>
		</security:permission>
	</ul>
	<!-- END SIDEBAR MENU -->
</div>
