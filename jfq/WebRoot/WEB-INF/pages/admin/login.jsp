<%--
/*
 * 登陆页面
 *
 * VERSION  DATE        BY           REASON
 * -------- ----------- ------------ ------------------------------------------
 * 1.00     2014-02-28  wuxiaogang   程序・发布
 * -------- ----------- ------------ ------------------------------------------
 * Copyright 2014 童励 System. - All Rights Reserved.
 *
 */
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" session="false"%>
<%@page import="cn.com.softvan.common.CommonConstant"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = null;
if (request.getServerPort() != 80) {
	basePath = request.getScheme() + "://" + request.getServerName() 
			+ ":" + request.getServerPort() + path;	
} else {
	basePath = request.getScheme() + "://" + request.getServerName() + path;
}
request.setAttribute("path", path);
request.setAttribute("basePath", basePath);
%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="zh-CN" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="zh-CN" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!--> <html lang="zh-CN" class="no-js"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8" />
	<title>用户登录</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<meta name="MobileOptimized" content="320">
	<!-- BEGIN GLOBAL MANDATORY STYLES -->          
	<link href="${basePath}/plugins/bootstrap.admin.theme/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
	<link href="${basePath}/plugins/bootstrap.admin.theme/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="${basePath}/plugins/bootstrap.admin.theme/assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
	<!-- END GLOBAL MANDATORY STYLES -->
	<!-- BEGIN PAGE LEVEL STYLES --> 
	<link rel="stylesheet" type="text/css" href="${basePath}/plugins/bootstrap.admin.theme/assets/plugins/select2/select2_metro.css" />
	<!-- END PAGE LEVEL SCRIPTS -->
	<!-- BEGIN THEME STYLES --> 
	<link href="${basePath}/plugins/bootstrap.admin.theme/assets/css/style-metronic.css" rel="stylesheet" type="text/css"/>
	<link href="${basePath}/plugins/bootstrap.admin.theme/assets/css/style.css" rel="stylesheet" type="text/css"/>
	<link href="${basePath}/plugins/bootstrap.admin.theme/assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
	<link href="${basePath}/plugins/bootstrap.admin.theme/assets/css/plugins.css" rel="stylesheet" type="text/css"/>
	<link href="${basePath}/plugins/bootstrap.admin.theme/assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
	<link href="${basePath}/plugins/bootstrap.admin.theme/assets/css/pages/login-soft.css" rel="stylesheet" type="text/css"/>
	<link href="${basePath}/plugins/bootstrap.admin.theme/assets/css/custom.css" rel="stylesheet" type="text/css"/>
	<!-- END THEME STYLES -->
	<link rel="shortcut icon" href="favicon.ico" />
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="login">
	<div class="logo"></div>
	<!-- BEGIN LOGIN -->
	<div class="content">
		<!-- BEGIN LOGIN FORM -->
		<form class="login-form" action="${basePath}/home_login.ac" method="post">
			<h3 class="form-title">用户登录</h3>
			<c:if test="${msg!=null}">
	            <div class="alert alert-danger">
	                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
	                <span class="glyphicon glyphicon-record"></span> <strong>${msg }</strong>
	            </div>
			</c:if>
			<div class="form-group">
				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
				<label class="control-label visible-ie8 visible-ie9">Username</label>
				<div class="input-icon">
					<i class="fa fa-user"></i>
					<input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="用户名" name="username"/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label visible-ie8 visible-ie9">Password</label>
				<div class="input-icon">
					<i class="fa fa-lock"></i>
					<input class="form-control placeholder-no-fix" type="password" autocomplete="off" placeholder="密码" name="password"/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label visible-ie8 visible-ie9">Password</label>
				<div class="input-icon">
					<i class="fa fa-lock"></i>
					<input class="form-control" name="authCode" type="text" id="authCode" style="width:200px;float: left;" placeholder="验证码"  >
					<img id="verifyCode" src="${basePath}/verifyImage.ac" style="margin:8px 0 0 20px;"
					onclick="this.src='${basePath}/verifyImage.ac?&ymd='+new Date().getTime()"
					style="cursor: pointer;" alt="点击换一张" align="top" />
				</div>
			</div>
			<div class="form-actions">
				<!-- <label class="checkbox">
				<input type="checkbox" name="remember" value="1"/> 自动登陆
				</label> -->
				<button type="submit" class="btn blue pull-right">
				登陆 <i class="m-icon-swapright m-icon-white"></i>
				</button>            
			</div>
		</form>
		<!-- END LOGIN FORM -->        
	</div>
	<!-- END LOGIN -->
	<!-- BEGIN COPYRIGHT -->
	<div class="copyright">
		Copyright 2014 jfq System. - All Rights Reserved.
	</div>
	<!-- END COPYRIGHT -->
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->   
	<!--[if lt IE 9]>
	<script src="${basePath}/plugins/bootstrap.admin.theme/assets/plugins/respond.min.js"></script>
	<script src="${basePath}/plugins/bootstrap.admin.theme/assets/plugins/excanvas.min.js"></script> 
	<![endif]-->   
	<script src="${basePath}/plugins/bootstrap.admin.theme/assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script src="${basePath}/plugins/bootstrap.admin.theme/assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
	<script src="${basePath}/plugins/bootstrap.admin.theme/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="${basePath}/plugins/bootstrap.admin.theme/assets/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript" ></script>
	<script src="${basePath}/plugins/bootstrap.admin.theme/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="${basePath}/plugins/bootstrap.admin.theme/assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>  
	<script src="${basePath}/plugins/bootstrap.admin.theme/assets/plugins/jquery.cookie.min.js" type="text/javascript"></script>
	<script src="${basePath}/plugins/bootstrap.admin.theme/assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript" ></script>
	<!-- END CORE PLUGINS -->
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script src="${basePath}/plugins/bootstrap.admin.theme/assets/plugins/jquery-validation/dist/jquery.validate.min.js" type="text/javascript"></script>
	<script src="${basePath}/plugins/bootstrap.admin.theme/assets/plugins/backstretch/jquery.backstretch.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="${basePath}/plugins/bootstrap.admin.theme/assets/plugins/select2/select2.min.js"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="${basePath}/plugins/bootstrap.admin.theme/assets/scripts/app.js" type="text/javascript"></script>
	<script src="${basePath}/plugins/bootstrap.admin.theme/assets/scripts/login-soft.js" type="text/javascript"></script>      
	<!-- END PAGE LEVEL SCRIPTS --> 
	<script>
		jQuery(document).ready(function() {     
		  App.init();
		  Login.init();
		});
		if (window != top) {
			top.location.href = location.href;
		}
	</script>
	<!-- END JAVASCRIPTS -->
</body>
</html>
