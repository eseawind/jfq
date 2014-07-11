<%--
/*
 * 栏目页  搜索结果 (页面)
 *
 * VERSION  DATE        BY           REASON
 * -------- ----------- ------------ ------------------------------------------
 * 1.00     2014-03-24  wuxiaogang   程序・发布
 * -------- ----------- ------------ ------------------------------------------
 * Copyright 2014 jfq System. - All Rights Reserved.
 *
 */
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" session="false"%>
<%@page import="cn.com.softvan.common.CommonConstant"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="customtag" uri="/custom-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="include/title_meta.jsp"%>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<%@ include file="include/public_js_css.jsp"%>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed">
	<!-- BEGIN HEADER -->
	<%@ include file="include/header.jsp"%>
	<!-- END HEADER -->
	<div class="clearfix"></div>
	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		<!-- BEGIN PAGE -->
		<div id="content">
			<img src="${basePath}/images/tiaofu_03.jpg" style="margin-bottom:5px;" width="1000">
			  <div id="right" style="margin-right:10px;"><h2 class="h2">新闻资讯</h2>
			    <div class="menu1">
			      <ul class="zxgg">
			      </ul>
			    </div>
			    <div class="jiameng"><a href="#"><img src="${basePath}/images/das_07.jpg"></a> <a href="#"><img src="${basePath}/images/das_08.jpg"></a></div>
			  </div>
			  <div id="left">
<div class="container">
				  <h2 class="h2"><a href="/">首页</a>->搜索结果</h2>
				  <c:choose>
				  		<c:when test="${beans!=null && fn:length(beans)>0}">
				  		<ul class="news">
					  		<c:forEach items="${beans}" var="bean">
						  	<li><a href="${basePath}/j003_init.ac?id=${bean.id}&tid=${bean.type_id}&pid=${pid}">${bean.title}<span>${bean.last_updated}</span></a></li>
						  	</c:forEach>
						  	<div class="clear"></div> 
							<customtag:pagingext func="loadUrlPage" params="'j002_','search'" />
							 </ul>
				  		</c:when>
				  		<c:otherwise>
				  			${typeBean.detail_info}
				  		</c:otherwise>
					</c:choose>
</div>
			  </div>
			</div>
			<form action="${basePath}/j002_search.ac" method="post" id="search_form_list">
				<input type="hidden" name="keyword" value="${keyword}" />
				<input type="hidden" name="offset" id="offset" value="0" />
			</form>
		<!-- END PAGE -->
	</div>
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->
	<%@ include file="include/footer.jsp"%>
	<!-- END FOOTER -->

</body>
<!-- END BODY -->
</html>
<script type="text/javascript">
function loadUrlPage(offset, url, event) {
	$('#offset').val(offset);
	document.getElementById("search_form_list").submit();
	return false;
}
</script>
	
