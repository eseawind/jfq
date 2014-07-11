<%--
/*
 * 滚动播报 (页面)
 *
 * VERSION  DATE        BY           REASON
 * -------- ----------- ------------ ------------------------------------------
 * 1.00     2014-03-26  wuxiaogang   程序・发布
 * -------- ----------- ------------ ------------------------------------------
 * Copyright 2014 jfq System. - All Rights Reserved.
 *
 */
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<ul style="margin-top: 0px;">
	<c:forEach items="${beans}" var="bean">
		<li><a href="${basePath}/j003_init.ac?id=${bean.id}&tid=${bean.type_id}&pid=f721e75b33bb4db6a484fa52ffdab341">${bean.title}</a></li>
	</c:forEach>
</ul>