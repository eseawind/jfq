<%--
/*
 * 会员 搜索页 (页面)
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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="include/title_meta.jsp"%>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<%@ include file="include/public_js_css.jsp"%>
<script type="text/javascript" src="${basePath}/js/jquery.form.js"></script>
<script type="text/javascript" src="${basePath}/js/area.js"></script>
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
			      	<li <c:if test="${tree.id==tid || kengdiedelianjie==1}">class="text1"</c:if>><a <c:if test="${tree.id=='91687669ced24ba0a5531fb206c266e7'}">id="kengdiedelianjie"</c:if> href="${basePath}/j00${center_member_flag}_init.ac?tid=${tree.id}&pid=<c:choose><c:when test='${tree.parent_id!=null && tree.parent_id!=""}'>${tree.parent_id}</c:when><c:otherwise>${tree.id}</c:otherwise></c:choose>" <c:if test="${tree.id==tid  || kengdiedelianjie==1}"><c:set var="kengdiedelianjie" value="0" />style="background:url(${basePath}/images/list_bg_11.png) no-repeat;"</c:if>>${tree.name}</a>
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
			    <div class="jiameng"><a href="#"><img src="${basePath}/images/das_07.jpg"></a> <a href="#"><img src="${basePath}/images/das_08.jpg"></a></div>
			  </div>
			  
			<div id="left" style="">
				<h2 class="h2">
					&nbsp;&nbsp;<a href="${basePath}">首页</a> > <a href="${basePath}/j002_init.ac?tid=c7bfa8bd43204ef6bdf4a63a3e55d90e&pid=c7bfa8bd43204ef6bdf4a63a3e55d90e">关于我们</a> > 中心会员
				</h2>
				<div class="center_merber">
					<div>
						<img src="${basePath}/images/merber_12.jpg" style="float: left">
						<div style="float: left;">
							<form method="post" action="" id="form_one" style="width: 550px;">
								<input type="hidden" name="tid" value="72411a4ab2944dd283d9dbdbdb0c9096" />
				        		<input type="hidden" name="pid" value="c7bfa8bd43204ef6bdf4a63a3e55d90e" />
								<select name="bean.type" id="select">
									<option <c:if test="${type=='0'}">selected="selected"</c:if> value="0">积分发行商</option>
									<option <c:if test="${type=='1'}">selected="selected"</c:if> value="1">市场服务商</option>

<option <c:if test="${type=='3'}">selected="selected"</c:if> value="6">应用服务商</option>			
						<option <c:if test="${type=='2'}">selected="selected"</c:if> value="2">营销顾问</option>
								</select> <input id="bean_keyword" name="bean.keyword" 
								<c:choose>
									<c:when test="${keyword!=null && keyword!='' }">
											value="${keyword}"
									</c:when>
									<c:otherwise>
											value="请输入名称，拼音或编号" onfocus="this.value='';"
											onblur="if(this.value.length < 1) this.value='请输入名称，拼音或编号';"
									</c:otherwise>
								</c:choose>
									style="width: 180px;" type="text"> 
								状态查询<select name="bean.state" id="select">
									<option value="">-全部-</option>
									<option value="0">-审核中-</option>
									<option value="1">-审核通过-</option>
									<option value="2">-审核不通过-</option>
								</select>
								<p style="margin: 10px auto;">
								 城市分类
								<select name="bean.province_id" id="area_a" onchange="areaB(this.value, null, null, null, 'area_b',null)">
									<option>-全部-</option>
								</select> 
								<select name="bean.city_id" id="area_b">
									<option>-全部-</option>
								</select> 
								<img style="vertical-align: middle;cursor: pointer;margin: -3px 0 0 71px" onclick="if($('#bean_keyword').val()=='请输入名称，拼音或编号'){$('#bean_keyword').val('')};submitFrom2('search_div_list','form_one','${basePath}/j004_list1.ac');"
									src="${basePath}/images/merber_07.jpg" >
									</p>
							</form>
						</div>

					</div>
				</div>
				<br>
				<div class="p2">
					<dl>
						<dt>
							<img 
								<c:choose>
<c:when test="${type=='0'}">
src="images/faxingshang.png"
</c:when>
<c:otherwise>
src="images/jifenfaxing1.png"
</c:otherwise>
</c:choose>
 class="jffx_img" onclick="getDataHi(0,'j004_','list1','search_div_list','type=0')" title="积分交易商" style="cursor:pointer;">
						</dt>

					</dl>
					<dl>
						<dt>
						<img
<c:choose>
<c:when test="${type=='1'||type==''||type==null}">
src="images/fuwushang.png"
</c:when>
<c:otherwise>
src="images/shichangfuwu1.png"
</c:otherwise>
</c:choose> class="scfw_img" onclick="getDataHi(0,'j004_','list1','search_div_list','type=1')" title="市场服务商" style="cursor:pointer;">
						</dt>

					</dl>
					<dl>
						<dt>
							<img
							<c:choose>
<c:when test="${type=='6'}">
src="images/jingjishang_gaoliang.png"
</c:when>
<c:otherwise>
src="images/jingjishang.png"
</c:otherwise>
</c:choose>
	class="jjs_img" onclick="getDataHi(0,'j004_','list1','search_div_list','type=6')"  title="应用服务商" style="cursor:pointer;">
						</dt>

					</dl>
					
					<dl>
						<dt>
							<img <c:choose>
<c:when test="${type=='2'}">
src="images/yinxiaoguwen_gaoliang.png"
</c:when>
<c:otherwise>
src="images/yingxiaoguwen1.png"
</c:otherwise>
</c:choose>  class="yxgw_img" onclick="getDataHi(0,'j004_','list1','search_div_list','type=2')" title="营销顾问" style="cursor:pointer;">
						</dt>

					</dl>
					<div style="clear: both"></div>
				</div>
				<div id="search_div_list">
					
				</div>
			</div>
		</div>
		<!-- END PAGE -->
	</div>
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->
	<%@ include file="include/footer.jsp"%>
	<!-- END FOOTER -->
	<script type="text/javascript">
	// 提交from
	function submitFrom2(divId,from_id,from_action) {
		var load = "<a class='loading' >信息努力加载中...</a>";
		jQuery("#"+divId).html(load);
		//改变提交地址
		if(from_action!=null){
			jQuery("#"+from_id).attr('action',from_action);
		}
		if($('#bean_keyword').val()=='请输入名称，拼音或编号'){
			$('#bean_keyword').val('');
		}
		//提交
		jQuery("#"+from_id).ajaxSubmit(function(data) {
			jQuery("#"+divId).html(data);
		});
	}
	function getDataHi(offset,url,event,divId,data){
	            $("#search_div_list").attr("innerHTML","");
                if(data=="type=0"){
                  $(".jffx_img").attr("src","../images/faxingshang.png");
                  $(".scfw_img").attr("src","../images/shichangfuwu1.png");
                  $(".jjs_img").attr("src","../images/jingjishang.png");
                  $(".yxgw_img").attr("src","../images/yingxiaoguwen1.png");
                }
                if(data=="type=1"){
                  $(".jffx_img").attr("src","../images/jifenfaxing1.png");
                  $(".scfw_img").attr("src","../images/fuwushang.png");
                  $(".jjs_img").attr("src","../images/jingjishang.png");
                  $(".yxgw_img").attr("src","../images/yingxiaoguwen1.png");
                }
                if(data=="type=2"){
                  $(".jffx_img").attr("src","../images/jifenfaxing1.png");
                  $(".scfw_img").attr("src","../images/shichangfuwu1.png");
                  $(".jjs_img").attr("src","../images/jingjishang.png");
                  $(".yxgw_img").attr("src","../images/yinxiaoguwen_gaoliang.png");
                }
                if(data=="type=6"){
                  $(".jffx_img").attr("src","../images/jifenfaxing1.png");
                  $(".scfw_img").attr("src","../images/shichangfuwu1.png");
                  $(".jjs_img").attr("src","../images/jingjishang_gaoliang.png");
                  $(".yxgw_img").attr("src","../images/yingxiaoguwen1.png");
                }
		jQuery.ajax({
			url : '/' + url + event+'.ac?offset='+offset+"&"+ data + '&time=' + new Date(),
			success : function(req) {
				jQuery("#"+divId).html(req);
			},
			error : function() {
				jQuery("#"+divId).html('信息加载失败!');
			}
		});
	}
	jQuery(document).ready(function() {
		//省
		areaA(null, null, 'area_a');
		//市
		areaB(null, null, null, null, 'area_b',null); 
		//
		<c:choose>
			<c:when test="${keyword!=null && keyword!='' || type!=null && type!=''}">
			submitFrom2('search_div_list','form_one','${basePath}/j004_list1.ac');
			</c:when>
			<c:otherwise>
			<c:choose>
				<c:when test="${id!=null && id!=''}">
					getDataHi(0,'j004_','detail','search_div_list','id=${id}');
				</c:when>
				<c:otherwise>
					getDataHi(0,'j004_','list1','search_div_list','bean.type=1');
				</c:otherwise>
				</c:choose>
			</c:otherwise>
		</c:choose>
	});
	</script>
</body>
<!-- END BODY -->
</html>
