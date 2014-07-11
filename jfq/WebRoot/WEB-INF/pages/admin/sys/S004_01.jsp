<%--
/*
 * 合作机构管理_编辑 (页面)
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
<%@page import="cn.com.softvan.common.CommonConstant"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
<script type="text/javascript" src="${basePath}/js/area.js"></script>
	
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
				$('#sys4,#sys4_sub_menu_l1_sub_menu_l1').addClass('active');
				$('#sys4_arrow,#sys4_sub_l1_arrow').addClass('open');
				$('#sys4_sub_menu,#sys4_sub_l1_sub_menu').show();
			});
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
					<h3 class="page-name">
						合作机构管理 <small><span class="help-inline">这里编辑各种XX</span></small>
					</h3>
					<ul class="page-breadcrumb breadcrumb">
						<li><i class="fa fa-home"></i> <a
							href="${basePath }/home_init.ac">Home</a> <i
							class="fa fa-angle-right"></i></li>
						<li><a href="#">合作机构管理</a> <i class="fa fa-angle-right"></i></li>
						<li>编辑</li>
					</ul>
					<!-- END PAGE TITLE & BREADCRUMB-->
				</div>
			</div>
			<!-- END PAGE HEADER-->
			<!-- BEGIN PAGE CONTENT-->
			<div class="row">
				<div class="col-md-12">
					<form accept-charset="UTF-8"  action="${basePath}/h/s004_save.ac" class="edit_article" id="edit_article_13632" method="post">
						<s:token></s:token>
						<input name="bean.id" type="hidden" value="${bean.id}">
						<div class="well form-inline">
							<!-- <label title="是否展示">
							<input name="bean.is_show" value="1"
							<c:if test="${bean.is_show=='1'}">
							 	checked="checked"
							 </c:if>
							 type="checkbox">
							 是否展示</label> -->
							 &nbsp; &nbsp; &nbsp;
							审核状态:
							<label title="审核中">
							<input name="bean.state" value="0"
							<c:if test="${bean.state=='0'}">
							 	checked="checked"
							 </c:if>
							 type="radio">
							 审核中</label>
							 <label title="审核通过">
							<input name="bean.state" value="1"
							<c:if test="${bean.state=='1'}">
							 	checked="checked"
							 </c:if>
							 type="radio">
							 审核通过</label>
							 <label title="审核不通过">
							<input name="bean.state" value="2"
							<c:if test="${bean.state=='2'}">
							 	checked="checked"
							 </c:if>
							 type="radio">
							 审核不通过</label>
							  &nbsp; &nbsp; &nbsp;
							<label>合作关系
								<input class="upload-wrapper" id="message_is_org" name="bean.is_org" size="30" value="${bean.is_org }" placeholder="合作关系" title="合作关系" type="text">
							</label>
							 &nbsp; &nbsp; &nbsp;
							合作商类型:
							<label title="积分发行商">
							<input name="bean.type" value="0"
							<c:if test="${bean.type=='0'}">
							 	checked="checked"
							 </c:if>
							 type="radio">
							 积分发行商</label>
							 <label title="市场服务商">
							<input name="bean.type" value="1"
							<c:if test="${bean.type=='1'}">
							 	checked="checked"
							 </c:if>
							 type="radio">
							 市场服务商</label>
							 <label title="营销顾问">
							<input name="bean.type" value="2"
							<c:if test="${bean.type=='2'}">
							 	checked="checked"
							 </c:if>
							 type="radio">
							 营销顾问</label>
							 <label title="品牌企业">
							<input name="bean.type" value="3"
							<c:if test="${bean.type=='3'}">
							 	checked="checked"
							 </c:if>
							 type="radio">
							品牌企业</label>
                                                         <label title="居间商">
							<input name="bean.type" value="4"
							<c:if test="${bean.type=='4'}">
							 	checked="checked"
							 </c:if>
							 type="radio">
							居间商</label>
                                                        <label title="战略商户">
							<input name="bean.type" value="5"
							<c:if test="${bean.type=='5'}">
							 	checked="checked"
							 </c:if>
							 type="radio">
							战略商户</label>
							<label title="应用服务商">
							<input name="bean.type" value="6"
							<c:if test="${bean.type=='6'}">
							 	checked="checked"
							 </c:if>
							 type="radio">
							应用服务商</label>
						</div>
						<div  class="form-group">
							<label class="control-label">行政区划</label>
							<label class="control-label ">
								<select class="form-control" onchange="areaB(this.value, null,null, null, 'bean_city_id','bean_county_id');" name="bean.province_id" id="bean_province_id" style="width: 180px;">
									<option value="">请选择</option>
								</select>
							</label>
							<label class="control-label">
								<select class="form-control" onchange="areaC(this.value, null,null,null, 'bean_county_id');" name="bean.city_id" id="bean_city_id" style="width: 180px;">
									<option value="">请选择</option>
								</select>
							</label>
							<label class="control-label">
								<select class="form-control" name="bean.county_id" id="bean_county_id" style="width: 180px;">
									<option value="">请选择</option>
								</select>
							</label>
							<script type="text/javascript">
							jQuery(document).ready(function() {
								//省
								areaA('${bean.province_id}', '${bean.province_name}', 'bean_province_id');
								//市
								areaB('${bean.province_id}', '${bean.city_id}', '${bean.city_name}', 'true', 'bean_city_id','bean_county_id'); 
								//县
								areaC('${bean.city_id}', '${bean.county_id}', '${bean.county_name}','true', 'bean_county_id'); 
							});
							</script>
						</div>
						<div class="form-group">
							<label for="article_code">编号</label> <input class="form-control"
								id="article_code" name="bean.code" size="50" type="text" value="${bean.code}">
						</div>
						<div class="form-group">
							<label for="article_name">名称</label>
								<input class="form-control"
								id="article_name" name="bean.name" size="50" type="text" value="${bean.name}">
						</div>
						<div class="form-group">
							<label for="article_pinyin">拼音</label>
								<input class="form-control"
								id="article_pinyin" name="bean.pinyin" size="50" type="text" value="${bean.pinyin}">
						</div>
						<div class="form-group">
							<label for="article_industry">所属行业</label>
								<input class="form-control"
								id="article_industry" name="bean.industry" size="50" type="text" value="${bean.industry}">
						</div>
						<div class="form-group">
							<label for="article_name">联系人名称</label>
								<input class="form-control"
								id="article_contact_name" name="bean.contact_name" size="50" type="text" value="${bean.contact_name}">
						</div>
						<div class="form-group">
							<label for="article_tel">联系人电话</label>
								<input class="form-control"
								id="article_tel" name="bean.tel" size="50" type="text" value="${bean.tel}">
						</div>
						<div class="form-group">
							<label for="article_tel">联系人地址</label>
								<input class="form-control"
								id="article_addres" name="bean.addres"  type="text" value="${bean.addres}">
						</div>
						<div class="form-group">
							<label for="article_tel">挂靠经纪商</label>
								<input class="form-control"
								id="article_parent_org" name="bean.parent_org"  type="text" value="${bean.parent_org}">
						</div>
						<div class="portlet box btn default btn-block">
							<div class="portlet-title">
								<div class="caption"  id="select-image-modal"><i class="fa fa-anchor"></i><font color="#000">点击上传[照片或营业执照]</font></div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a>
									<a href="javascript:;" class="remove"></a>
								</div>
							</div>
							<div class="portlet-body" style="display: block; ">
								<input id="input_pic_url"  name="bean.pic_url" size="30" type="hidden" value="${bean.pic_url}">
								<img id="img_pic_url" alt="" src="${bean.pic_url}">
							</div>
						</div>
						<div class="form-group">
							<label for="article_dcertificate_no">从业资格证</label>
								<input class="form-control"
								id="article_certificate_no" name="bean.certificate_no" size="50" type="text" value="${bean.certificate_no}">
						</div>
						<div class="portlet box btn default btn-block">
							<div class="portlet-title">
								<div class="caption"  id="select-image-modal2"><i class="fa fa-anchor"></i><font color="#000">点击上传[从业资格证照片]</font></div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a>
									<a href="javascript:;" class="remove"></a>
								</div>
							</div>
							<div class="portlet-body" style="display: block; ">
								<input id="input_certificate_pic_url"  name="bean.certificate_pic_url" size="30" type="hidden" value="${bean.certificate_pic_url}">
								<img id="img_certificate_pic_url" alt="" src="${bean.certificate_pic_url}">
							</div>
						</div>
						<div class="form-group">
							<label for="article_description">详情</label>
							<div class="qeditor_border">
							<textarea name="bean.detail_info" style="height: 300px;width: 100%;" id="article_description" >
								${bean.detail_info}
							</textarea>
							</div>
						</div>
						<div class="form-actions">
							<input class="btn btn-primary" name="commit" type="submit"
								value="保存"> | <a
								href="${basePath}/h/s004_init.ac">返回</a>
						</div>
					</form>
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
<script type="text/javascript">
jQuery(document).ready(function() {
	KindEditor.ready(function(K) {
		K.create('#article_description', {
			 resizeType : 2,
	         uploadJson : '${basePath}/uploadFile?isrich=1',
	         fileManagerJson : '${basePath}/plugins/editor/jsp/file_manager_json.jsp',
			 allowFileManager : true
		});
		//--图片
		var editor = K.editor({
			resizeType : 2,
			uploadJson : '${basePath}/uploadFile?isrich=1',
			fileManagerJson : '${basePath}/plugins/editor/jsp/file_manager_json.jsp',
			allowFileManager : true
		});
		//--
		K('#select-image-modal').click(function() {
			editor.loadPlugin('image',function() {
				editor.plugin.imageDialog({
					imageUrl : $('#img_pic_url').attr('src'),clickFn : function(
						url,title,width,height,border,align) {
							$('#img_pic_url').attr('src',url);
							$('#input_pic_url').val(url);
							editor.hideDialog();
						}
				});
			});
		});
		//--
		K('#select-image-modal2').click(function() {
			editor.loadPlugin('image',function() {
				editor.plugin.imageDialog({
					imageUrl : $('#img_certificate_pic_url').attr('src'),clickFn : function(
						url,title,width,height,border,align) {
							$('#img_certificate_pic_url').attr('src',url);
							$('#input_certificate_pic_url').val(url);
							editor.hideDialog();
						}
				});
			});
		});
	});
});
</script>
