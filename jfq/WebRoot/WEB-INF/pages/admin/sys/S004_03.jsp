<%--
/*
 * 合作机构管理  (页面)
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
<!DOCTYPE html>
<html lang="zh-CN" class="no-js">
<head>
	<meta charset="utf-8" />
	<%@include file="../include/admin_title.jsp" %>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<%@ include file="../include/public_js_css.jsp"%>
<link href="${basePath}/css/messages.css" media="all" rel="stylesheet"
	type="text/css" />

<link href="${basePath}/css/font-awesome/css/font-awesome.css"
	rel="stylesheet">
<link href="${basePath}/css/font-awesome/css/font-awesome-ie7.css"
	rel="stylesheet">
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed">
	<!-- BEGIN HEADER -->
	<%@ include file="../include/header.jsp"%>
	<!-- END HEADER -->
	<div class="clearfix"></div>
	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		<!-- BEGIN SIDEBAR -->
		<%@ include file="../include/leftMenu.jsp"%>
		<script type="text/javascript">
			jQuery(document).ready(function() {
				$('#sys4,#sys4_sub_menu_l1_sub_menu_l2').addClass('active');
				$('#sys4_arrow,#sys4_sub_l1_arrow').addClass('open');
				$('#sys4_sub_menu,#sys4_sub_l1_sub_menu').show();
			});
			function loadUrlPage(offset, url, event) {
				location.href='${basePath}/' + url + event+'.ac?offset=' + offset;
			}
		</script>
		<!-- END SIDEBAR -->
		<!-- BEGIN PAGE -->
		<div class="page-content">
			<!-- BEGIN STYLE CUSTOMIZER -->
			<%@ include file="../include/style_customizer.jsp"%>
			<!-- END BEGIN STYLE CUSTOMIZER -->
			<!-- BEGIN PAGE HEADER-->
			<div class="row">
				<div class="col-md-12">
					<!-- BEGIN PAGE TITLE & BREADCRUMB-->
					<h3 class="page-title">
						合作机构回收站  <small><span class="help-inline">展示所有</span></small>
					</h3>
					<ul class="page-breadcrumb breadcrumb">
						<li><i class="fa fa-home"></i> <a
							href="${basePath }/home_init.ac">Home</a> <i
							class="fa fa-angle-right"></i></li>
						<li><a href="#">合作机构管理 </a> <i class="fa fa-angle-right"></i></li>
						<li>回收站</a> </li>
					</ul>
					<!-- END PAGE TITLE & BREADCRUMB-->
				</div>
			</div>
			<!-- END PAGE HEADER-->
			<!-- BEGIN PAGE CONTENT-->
			<div class="row">
				<div class="col-md-12">
					<div class="matter">
						<div id="msg"></div>
						<table class="table table-condensed table-striped">
							<tbody>
								<tr>
									<th class="col-md-2">类型</th>
									<th class="col-md-1">名称</th>
									<th class="col-md-2">拼音</th>
									<th class="col-md-2">从业资格证</th>
									<th class="col-md-2">所属行业</th>
									<th class="col-md-1">状态</th>
									<th class="col-md-2"></th>
								</tr>
							<c:forEach items="${beans}" var="bean">
								<tr>
									<td>
									<c:if test="${bean.type=='0'}">积分发行商</c:if>
									<c:if test="${bean.type=='1'}">市场合作商 </c:if>
									<c:if test="${bean.type=='2'}">营销顾问</c:if>
									<c:if test="${bean.type=='3'}">品牌企业</c:if>
                                                                        <c:if test="${bean.type=='4'}">居间商</c:if>
                                                                        <c:if test="${bean.type=='5'}">战略商户</c:if>
                                                                        <c:if test="${bean.type=='6'}">应用服务商</c:if>
									</td>
									<td>
									${bean.name}
									</td>
									<td>
									${bean.pinyin}
									</td>
									<td>
									${bean.certificate_no}
									</td>
									<td>
									${bean.industry}
									</td>
									<td>
									<c:if test="${bean.state=='0'}"> 审核中  </c:if>
									<c:if test="${bean.state=='1'}"> 审核通过    </c:if>
									<c:if test="${bean.state=='2'}"> 审核不通过  </c:if>
									</td>
									<td>
										<a href="${basePath}/h/s004_recovery.ac?id=${bean.id}" class="btn  edit green"
										data-confirm="确定恢复吗?" data-method="delete" rel="nofollow">恢复</a>
										<a href="javascript:void(0)"   class="btn btn-danger" 
											onclick="if(confirm('此操作不可恢复!确认删除吗?')){location.href='${basePath}/h/s004_delxx.ac?id=${bean.id}'};"
											rel="nofollow">删除</a>
									</td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
						<customtag:pagingext func="loadUrlPage" params="'h/s004_','recycle'" />
					</div>
				</div>
			</div>
			<!-- END PAGE CONTENT-->
		</div>
		<!-- END PAGE -->
	</div>
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->
	<%@ include file="../include/footer.jsp"%>
	<!-- END FOOTER -->

</body>
<!-- END BODY -->
</html>
