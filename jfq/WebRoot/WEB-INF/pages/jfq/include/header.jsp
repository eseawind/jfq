<%--
/*
 * 头部共通部分画面
 *
 * VERSION  DATE        BY           REASON
 * -------- ----------- ------------ ------------------------------------------
 * 1.00     2014-03-25  wuxiaogang   程序・发布
 * -------- ----------- ------------ ------------------------------------------
 * Copyright 2014 jfq System. - All Rights Reserved.
 *
 */
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" session="false"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path;
	request.setAttribute("path", path);
	request.setAttribute("basePath", basePath);
%>
<div id="top">
	<div class="up">
		<div id="showtime">
		</div>
		<div id="little">
			<ul>
				<li>
					<a href="${basePath}">首页</a>
				</li>
				<li>
					<a href="http://www.tradefine.net" target="_blank">服务支持</a>
				</li>
				<li style="border: 0">
					<a
						href="${basePath}/j002_init.ac?tid=c4920799b46746f4a33a78e3c1f6ff33&pid=c7bfa8bd43204ef6bdf4a63a3e55d90e">联系我们</a>
				</li>
			</ul>
		</div>
	</div>
</div>
<div id="logo">
	<a href="${basePath}"><img src="${basePath}/images/logo.png"
			style="margin-right: 200px;" />
	</a>
</div>
<%@ include file="menu.jsp"%>
<script type="text/javascript">
jQuery(".nav").slide( {
	type : "menu",
	titCell : ".m",
	targetCell : ".sub",
	effect : "slideDown",
	delayTime : 300,
	triggerTime : 100
});</script>
<div id="laba">
	<img src="${basePath}/images/jiaoyi_13.png" style="float: left">
	<div id="scrollDiv_keleyi_com" class="scrollDiv">
	</div>
</div>
