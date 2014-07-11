<%--
/*
 * 栏目页 (页面)
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
			  <div id="right" style="margin-right:10px;"><h2 class="h2">网站导航</h2>
			    <div class="menu1">
			      <ul class="zxgg">
			      </ul>
			    </div>
			    <div class="jiameng"><a href="#"><img src="${basePath}/images/das_07.jpg"></a> <a href="#"><img src="${basePath}/images/das_08.jpg"></a></div>
			  </div>
			  <div id="left">
				  <h2 class="h2">&nbsp;&nbsp;友情链接</h2>
				  <div class="container">
				  		<ul class="news">
					  		<c:forEach items="${beans}" var="bean">
						  	<li>
								<dd  class="subnav" >
									<a href="${bean.url}"><img src="${bean.pic_url}" />
											${bean.name}
									</a>
								</dd>
						  	</li>
						  	</c:forEach>
						  	<div class="clear"></div> 
							<customtag:pagingext func="loadUrlPage" params="'j005_','init'" />
						</ul>
				</div>
			  </div>
			</div>
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
	location.href='${basePath}/' + url + event+'.ac?offset=' + offset;
}
</script>
	
