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
<c:if test="${typeBean.parent_id=='91687669ced24ba0a5531fb206c266e7'}">
<style type="text/css">
.zxgg li .wenhua{display:block;}
</style>
</c:if>
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
			<img src="${basePath}/images/tiaofu_03.jpg" style="margin-bottom:5px;width:992px;">
			  <div id="right" style="margin-right:10px;"><h2 class="h2"><c:if test="${typeBeanP.name!=null}">${typeBeanP.name }</c:if><c:if test="${typeBeanP.name==null}">资讯栏目</c:if></h2>
			    <div class="menu1">
			      <ul class="zxgg">
			      <c:set var="kengdiedelianjie" value="0" />
			      <c:forEach items="${tree_array}" var="tree">
			      	<c:set var="center_member_flag" value="2"/>
			      	<c:forEach items="${tree.beans}" var="bean">
			      		<c:if test="${bean.id=='72411a4ab2944dd283d9dbdbdb0c9096'}"><c:set var="center_member_flag" value="4"/></c:if>
			      			<c:if test="${bean.parent_id=='91687669ced24ba0a5531fb206c266e7'}">
				      		     <c:if test="${bean.id==tid}">
					      		     <c:if test="${bean.parent_id=='91687669ced24ba0a5531fb206c266e7'}">
					      		     	<c:set var="kengdiedelianjie" value="1" />
					      		     </c:if>
				      		     </c:if>
			      			</c:if>
            		</c:forEach>
			      	<c:if test="${tree.id=='72411a4ab2944dd283d9dbdbdb0c9096'}"><c:set var="center_member_flag" value="4"/></c:if>
			      	<li <c:if test="${tree.id==tid || kengdiedelianjie==1}">class="text1"</c:if>><a <c:if test="${tree.id=='91687669ced24ba0a5531fb206c266e7'}">id="zxwh"</c:if> href="${basePath}/j00${center_member_flag}_init.ac?tid=${tree.id}&pid=<c:choose><c:when test='${tree.parent_id!=null && tree.parent_id!=""}'>${tree.parent_id}</c:when><c:otherwise>${tree.id}</c:otherwise></c:choose>" <c:if test="${tree.id==tid  || kengdiedelianjie==1}"><c:set var="kengdiedelianjie" value="0" />style="background:url(${basePath}/images/list_bg_11.png) no-repeat;"</c:if>>${tree.name}</a>
			      	<c:if test="${tree.beans!=null && fn:length(tree.beans)>0}">
			      	<ul class="wenhua">
			      		<c:forEach items="${tree.beans}" var="bean">
			      		<c:set var="center_member_flag" value="2"/>
			      		<c:if test="${bean.id=='72411a4ab2944dd283d9dbdbdb0c9096'}"><c:set var="center_member_flag" value="4"/></c:if>
			      		<c:choose>
			      			<c:when test="${bean.parent_id=='91687669ced24ba0a5531fb206c266e7'}">
			      		     <li <c:if test="${bean.id==tid}">class="wenhua_nav"</c:if>><a href="${basePath}/j00${center_member_flag}_init.ac?tid=${bean.id}&pid=c7bfa8bd43204ef6bdf4a63a3e55d90e">.${bean.name }</a></li>
			      			</c:when>
			      			<c:otherwise>
			      		     <li <c:if test="${bean.id==tid}">class="wenhua_nav"</c:if>><a href="${basePath}/j00${center_member_flag}_init.ac?tid=${bean.id}&pid=<c:choose><c:when test='${bean.parent_id!=null && bean.parent_id!=""}'>${bean.parent_id}</c:when><c:otherwise>${bean.id}</c:otherwise></c:choose>">.${bean.name }</a></li>
			      			</c:otherwise>
			      		</c:choose>
            			</c:forEach>
			      	</ul>
			      	</c:if>
			      	</li>
			      	</c:forEach>
			      </ul>
			    </div>

			  </div>
			  <div id="left1">
				  <h2 class="h2">&nbsp;&nbsp;<a href="/">首页</a>&nbsp;>&nbsp;<a href="${basePath}/j002_init.ac?tid=${pid}&pid=${pid}">${typeBeanP.name}</a><c:if test="${typeBeanP.name!=typeBean.name}">&nbsp;>&nbsp;${typeBean.name}</c:if></h2>
				  <div class="container">
				  <c:choose>
				  		<c:when test="${beans!=null && fn:length(beans)>0}">
				  		<ul class="news">
					  		<c:forEach items="${beans}" var="bean">
						  	<li><a href="${basePath}/j003_init.ac?id=${bean.id}&tid=${bean.type_id}&pid=${pid}">${bean.title}<span>${bean.date_created}</span></a></li>
						  	</c:forEach>
						  	<div class="clear"></div> 
							<customtag:pagingext func="loadUrlPage" params="'j002_','init'" />
							 </ul>
				  		</c:when>
				  		<c:otherwise>
				  			${typeBean.detail_info}
				  		</c:otherwise>
					</c:choose>
					</div>
					<div class="yuanjiao_bottom"></div>
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
	location.href='${basePath}/' + url + event+'.ac?offset=' + offset+'&tid=${tid}&pid=${pid}'
}
</script>
	
