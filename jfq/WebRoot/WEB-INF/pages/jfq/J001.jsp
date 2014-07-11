<%--
/*
 * 首页 (页面)
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
		<script type="text/javascript" src="${basePath}/js/ScrollPic.js">
</script>
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
			<div class="page-content">
				<div class="focusBox">
					<ul class="pic">
						<c:forEach items="${map.cfddb14569d449ad9c75968fc3f7b874}"
							var="bean">
							<li>
								<a
									href="${basePath}/j003_init.ac?id=${bean.id}&tid=${bean.type_id}&pid=cfddb14569d449ad9c75968fc3f7b874"
									target="_blank"><img src="${bean.pic_url }" /> </a>
							</li>
						</c:forEach>
					</ul>
					<a class="prev" href="javascript:void(0)"></a>
					<a class="next" href="javascript:void(0)"></a>
					<ul class="hd">
						<c:forEach items="${map.cfddb14569d449ad9c75968fc3f7b874}"
							var="bean">
							<li></li>
						</c:forEach>
					</ul>
				</div>
				<script type="text/javascript">
jQuery(document).ready(function() {
	/*鼠标移过，左右按钮显示*/
	jQuery(".focusBox").hover(function() {
		jQuery(this).find(".prev,.next").stop(true, true).fadeTo("show", 0.2)
	}, function() {
		jQuery(this).find(".prev,.next").fadeOut()
	});
	/*SuperSlide图片切换*/
	jQuery(".focusBox").slide( {
		mainCell : ".pic",
		effect : "left",
		autoPlay : true,
		delayTime : 600,
		trigger : "click"
	});
});

</script>
				<div id="content">
					<div id="left" style="margin-right: 10px; border: none;">
						<h2 class="h2">
							<img src="${basePath}/images/jifen_17.png" />
						</h2>
						<div class="part">
							<div>
								<h3 id="zhongxingonggao">
									<a
										href="${basePath}/j002_init.ac?tid=fc7b461b14dd4187b31aaf29e2c019fa&pid=04c4df422f4c4180a17d7858890a6477">更多>></a>
								</h3>
								<ul>
									<c:forEach items="${map}" var="m">
										<c:if test="${m.key=='fc7b461b14dd4187b31aaf29e2c019fa'}">
											<c:forEach items="${m.value}" var="bean">
												<li>
													<a
														href="${basePath}/j003_init.ac?id=${bean.id}&tid=${bean.type_id}&pid=04c4df422f4c4180a17d7858890a6477">
														<c:choose>
															<c:when test="${fn:length(bean.title) > 12}">
																<c:out value="${fn:substring(bean.title, 0, 12)}..." />
															</c:when>
															<c:otherwise>
																<c:out value="${bean.title}" />
															</c:otherwise>
														</c:choose> </a>
												</li>
											</c:forEach>
										</c:if>
									</c:forEach>
								</ul>
							</div>
							<div>
								<h3 id="hangyexinwen">
									<a
										href="${basePath}/j002_init.ac?tid=84cad3b56fbe4b1bac76f5d8975038cc&pid=04c4df422f4c4180a17d7858890a6477">更多>></a>
								</h3>
								<ul>
									<c:forEach items="${map}" var="m">
										<c:if test="${m.key=='84cad3b56fbe4b1bac76f5d8975038cc'}">
											<c:forEach items="${m.value}" var="bean">
												<li>
													<a
														href="${basePath}/j003_init.ac?id=${bean.id}&tid=${bean.type_id}&pid=04c4df422f4c4180a17d7858890a6477">
														<c:choose>
															<c:when test="${fn:length(bean.title) > 12}">
																<c:out value="${fn:substring(bean.title, 0, 12)}..." />
															</c:when>
															<c:otherwise>
																<c:out value="${bean.title}" />
															</c:otherwise>
														</c:choose> </a>
												</li>
											</c:forEach>
										</c:if>
									</c:forEach>
								</ul>
							</div>
							<div style="margin-right: 0px;">
								<h3 id="zhongxinyaowen">
									<a
										href="${basePath}/j002_init.ac?tid=30f1519b63284b9aa39c3257cca5b1a4&pid=04c4df422f4c4180a17d7858890a6477">更多>></a>
								</h3>
								<ul>
									<c:forEach items="${map}" var="m">
										<c:if test="${m.key=='30f1519b63284b9aa39c3257cca5b1a4'}">
											<c:forEach items="${m.value}" var="bean">
												<li>
													<a
														href="${basePath}/j003_init.ac?id=${bean.id}&tid=${bean.type_id}&pid=04c4df422f4c4180a17d7858890a6477">
														<c:choose>
															<c:when test="${fn:length(bean.title) > 12}">
																<c:out value="${fn:substring(bean.title, 0, 12)}..." />
															</c:when>
															<c:otherwise>
																<c:out value="${bean.title}" />
															</c:otherwise>
														</c:choose> </a>
												</li>
											</c:forEach>
										</c:if>
									</c:forEach>
								</ul>
							</div>
						</div>
						<div style="clear: both"></div>
						<div id="fuwu">
							<div class="bottomlist">
								<div class="list">
									<ul class="nav">
      <li id="subnav_show1">&nbsp;&nbsp;积分发行商</li>
      <li id="subnav_show2">&nbsp;&nbsp;市场服务商</li>
      <li id="subnav_show3">&nbsp;&nbsp;应用服务商</li>
      <li id="subnav_show4">&nbsp;战略商户</li>
      <li id="subnav_show5">品牌企业</li>
      </ul>
									<div>
										<div id="one_show" class="subnav subnav_show1">
	<div class="pic_top">
		<div class="pic_left" id="LeftArr" style="height: 77px; width: 20px;">
			<img src="images/youyi.png" width="20" height="77" />
		</div>

		<c:set var="divAcrollPic" value="0" />
		<c:forEach items="${memberMap}" var="map">
			<c:if test="${map.key=='0'}">


				<div class="pic_center" id="divAcrollPic1" style="overflow: hidden;">
					<div class="pic_yi">
						<ul>
							<c:forEach items="${map.value}" var="bean" varStatus="i">

								<li>
									<a
										href="${basePath}/j004_init.ac?id=${bean.id}&tid=72411a4ab2944dd283d9dbdbdb0c9096&pid=c7bfa8bd43204ef6bdf4a63a3e55d90e"><img
											src="${bean.pic_url}" /> <span
										style="text-overflow: ellipsis;">${bean.name}</span> </a>
								</li>

								<c:set var="divAcrollPic" value="${divAcrollPic+1}" />

								<c:if test="${divAcrollPic%8==0}">
						</ul>
					</div>
					<div class="pic_yi">
			</c:if>
		</c:forEach>
		</ul>
	</div>
</div>
</c:if>
</c:forEach>


<div class="pic_right" id="RightArr" style="height: 77px; width: 20px;">
	<img src="images/zuoyi.png" width="20" height="77" />
</div>
</div>
</div>

						<div id="two_show" class="subnav subnav_show2">
	<div class="pic_top">
		<div class="pic_left" id="LeftArr2" style="height: 77px; width: 20px;">
			<img src="images/youyi.png" width="20" height="77" />
		</div>
		<c:set var="divAcrollPic" value="0" />
		<c:forEach items="${memberMap}" var="map">
			<c:if test="${map.key=='1'}">
				<div class="pic_center" id="divAcrollPic2" style="overflow: hidden;">
					<div class="pic_yi">
						<ul>
							<c:forEach items="${map.value}" var="bean" varStatus="i">
								<li>
									<a
										href="${basePath}/j004_init.ac?id=${bean.id}&tid=72411a4ab2944dd283d9dbdbdb0c9096&pid=c7bfa8bd43204ef6bdf4a63a3e55d90e"><img
											src="${bean.pic_url}" /> <span
										style="text-overflow: ellipsis;">${bean.name}</span> </a>
								</li>
								<c:set var="divAcrollPic" value="${divAcrollPic+1}" />
								<c:if test="${divAcrollPic%8==0}">
						</ul>
					</div>
					<div class="pic_yi">
			</c:if>
		</c:forEach>
		</ul>
	</div>
</div>
</c:if>
</c:forEach>
<div class="pic_right" id="RightArr2" style="height: 77px; width: 20px;">
	<img src="images/zuoyi.png" width="20" height="77" />
</div>
</div>
</div>
						<div id="three_show" class="subnav subnav_show3">
	<div class="pic_top">
		<div class="pic_left" id="LeftArr3" style="height: 77px; width: 20px;">
			<img src="images/youyi.png" width="20" height="77" />
		</div>
		<c:set var="divAcrollPic" value="0" />
		<c:forEach items="${memberMap}" var="map">
			<c:if test="${map.key=='6'}">
				<div class="pic_center" id="divAcrollPic3" style="overflow: hidden;">
					<div class="pic_yi">
						<ul>
							<c:forEach items="${map.value}" var="bean" varStatus="i">
								<li>
									<a
										href="${basePath}/j004_init.ac?id=${bean.id}&tid=72411a4ab2944dd283d9dbdbdb0c9096&pid=c7bfa8bd43204ef6bdf4a63a3e55d90e"><img
											src="${bean.pic_url}" /> <span
										style="text-overflow: ellipsis;">${bean.name}</span> </a>
								</li>
								<c:set var="divAcrollPic" value="${divAcrollPic+1}" />
								<c:if test="${divAcrollPic%8==0}">
						</ul>
					</div>
					<div class="pic_yi">
			</c:if>
		</c:forEach>
		</ul>
	</div>
</div>
</c:if>
</c:forEach>
<div class="pic_right" id="RightArr3" style="height: 77px; width: 20px;">
	<img src="images/zuoyi.png" width="20" height="77" />
</div>
</div>
</div>
						<div id="four_show" class="subnav subnav_show4">
	<div class="pic_top">
		<div class="pic_left" id="LeftArr4" style="height: 77px; width: 20px;">
			<img src="images/youyi.png" width="20" height="77" />
		</div>
		<c:set var="divAcrollPic" value="0" />
		<c:forEach items="${memberMap}" var="map">
			<c:if test="${map.key=='5'}">
				<div class="pic_center" id="divAcrollPic4" style="overflow: hidden;">
					<div class="pic_yi">
						<ul>
							<c:forEach items="${map.value}" var="bean" varStatus="i">
								<li>
									<a
										href="${basePath}/j004_init.ac?id=${bean.id}&tid=72411a4ab2944dd283d9dbdbdb0c9096&pid=c7bfa8bd43204ef6bdf4a63a3e55d90e"><img
											src="${bean.pic_url}" /> <span
										style="text-overflow: ellipsis;">${bean.name}</span> </a>
								</li>
								<c:set var="divAcrollPic" value="${divAcrollPic+1}" />
								<c:if test="${divAcrollPic%8==0}">
						</ul>
					</div>
					<div class="pic_yi">
			</c:if>
		</c:forEach>
		</ul>
	</div>
</div>
</c:if>
</c:forEach>
<div class="pic_right" id="RightArr4" style="height: 77px; width: 20px;">
	<img src="images/zuoyi.png" width="20" height="77" />
</div>
</div>
</div>
						<div id="five_show" class="subnav subnav_show5">
	<div class="pic_top">
		<div class="pic_left" id="LeftArr5" style="height: 77px; width: 20px;">
			<img src="images/youyi.png" width="20" height="77" />
		</div>
		<c:set var="divAcrollPic" value="0" />
		<c:forEach items="${memberMap}" var="map">
			<c:if test="${map.key=='3'}">
				<div class="pic_center" id="divAcrollPic5" style="overflow: hidden;">
					<div class="pic_yi">
						<ul>
							<c:forEach items="${map.value}" var="bean" varStatus="i">
								<li>
									<a
										href="${basePath}/j004_init.ac?id=${bean.id}&tid=72411a4ab2944dd283d9dbdbdb0c9096&pid=c7bfa8bd43204ef6bdf4a63a3e55d90e"><img
											src="${bean.pic_url}" /> <span
										style="text-overflow: ellipsis;">${bean.name}</span> </a>
								</li>
								<c:set var="divAcrollPic" value="${divAcrollPic+1}" />
								<c:if test="${divAcrollPic%8==0}">
						</ul>
					</div>
					<div class="pic_yi">
			</c:if>
		</c:forEach>
		</ul>
	</div>
</div>
</c:if>
</c:forEach>
<div class="pic_right" id="RightArr5" style="height: 77px; width: 20px;">
	<img src="images/zuoyi.png" width="20" height="77" />
</div>
</div>
</div>
					</div>
				</div>
<script type="text/javascript">
						$(function(){
	$(".subnav:first").show();
	$(".list").removeClass("on1")
		$(this).addClass("on1")
	$(".list ul.nav #subnav_show2").click(function(){
		$(".list").removeClass("on")
		$(this).addClass("on")
		});
	$(".list ul.nav li").click(function(){
		$(".subnav").hide();
		
		var subanv_show= $(this).attr("id")
		$("."+subanv_show).show();
		
		});	
	
})
// 左右点击滚动开始
var scrollPic1 = new ScrollPic();
scrollPic1.scrollContId   = "divAcrollPic1"; //内容容器ID
scrollPic1.arrLeftId      = "LeftArr";//左箭头ID
scrollPic1.arrRightId     = "RightArr"; //右箭头ID

scrollPic1.frameWidth     = 736;//显示框宽度
scrollPic1.pageWidth      = 736; //翻页宽度

scrollPic1.speed          = 10; //移动速度(单位毫秒，越小越快)
scrollPic1.space          = 10; //每次移动像素(单位px，越大越快)
scrollPic1.autoPlay       = true; //自动播放
scrollPic1.autoPlayTime   = 3; //自动播放间隔时间(秒)

scrollPic1.initialize(); //初始化
// 左右点击滚动结束

// 左右点击滚动开始
var scrollPic2 = new ScrollPic();
scrollPic2.scrollContId   = "divAcrollPic2"; //内容容器ID
scrollPic2.arrLeftId      = "LeftArr2";//左箭头ID
scrollPic2.arrRightId     = "RightArr2"; //右箭头ID

scrollPic2.frameWidth     = 736;//显示框宽度
scrollPic2.pageWidth      = 736; //翻页宽度

scrollPic2.speed          = 10; //移动速度(单位毫秒，越小越快)
scrollPic2.space          = 10; //每次移动像素(单位px，越大越快)
scrollPic2.autoPlay       = true; //自动播放
scrollPic2.autoPlayTime   = 3; //自动播放间隔时间(秒)

scrollPic2.initialize(); //初始化
// 左右点击滚动结束

// 左右点击滚动开始
var scrollPic3 = new ScrollPic();
scrollPic3.scrollContId   = "divAcrollPic3"; //内容容器ID
scrollPic3.arrLeftId      = "LeftArr3";//左箭头ID
scrollPic3.arrRightId     = "RightArr3"; //右箭头ID

scrollPic3.frameWidth     = 736;//显示框宽度
scrollPic3.pageWidth      = 736; //翻页宽度

scrollPic3.speed          = 10; //移动速度(单位毫秒，越小越快)
scrollPic3.space          = 10; //每次移动像素(单位px，越大越快)
scrollPic3.autoPlay       = true; //自动播放
scrollPic3.autoPlayTime   = 3; //自动播放间隔时间(秒)

scrollPic3.initialize(); //初始化
// 左右点击滚动结束

// 左右点击滚动开始
var scrollPic4 = new ScrollPic();
scrollPic4.scrollContId   = "divAcrollPic4"; //内容容器ID
scrollPic4.arrLeftId      = "LeftArr4";//左箭头ID
scrollPic4.arrRightId     = "RightArr4"; //右箭头ID

scrollPic4.frameWidth     = 736;//显示框宽度
scrollPic4.pageWidth      = 736; //翻页宽度

scrollPic4.speed          = 10; //移动速度(单位毫秒，越小越快)
scrollPic4.space          = 10; //每次移动像素(单位px，越大越快)
scrollPic4.autoPlay       = true; //自动播放
scrollPic4.autoPlayTime   = 3; //自动播放间隔时间(秒)

scrollPic4.initialize(); //初始化
// 左右点击滚动结束

// 左右点击滚动开始
var scrollPic5 = new ScrollPic();
scrollPic5.scrollContId   = "divAcrollPic5"; //内容容器ID
scrollPic5.arrLeftId      = "LeftArr5";//左箭头ID
scrollPic5.arrRightId     = "RightArr5"; //右箭头ID

scrollPic5.frameWidth     = 736;//显示框宽度
scrollPic5.pageWidth      = 736; //翻页宽度

scrollPic5.speed          = 10; //移动速度(单位毫秒，越小越快)
scrollPic5.space          = 10; //每次移动像素(单位px，越大越快)
scrollPic5.autoPlay       = true; //自动播放
scrollPic5.autoPlayTime   = 3; //自动播放间隔时间(秒)

scrollPic5.initialize(); //初始化
// 左右点击滚动结束
</script>
			</div>
		</div>
		<div style="clear: both;"></div>
		<div id="lianxi">
			<h2>
				<img src="${basePath}/images/two_41.png" />
			</h2>
			<ul>
				<li>
					业务合作热线
					<br />
					021-68860598
				</li>
				<li>
					积分交易中心热线
					<br />
					021-60610988
				</li>
				<li>
					建议与投诉
					<br />
					huiyuanbu@jifenqiao.cn
				</li>
				<li style="display: none">
					总经理直通车
					<br />
					ceo@jifenqiao.com
				</li>
			</ul>
		</div>
		</div>
		<div id="right">
			<img src="${basePath}/images/shangwu.png" />
			<div class="menu">
				<ul>
			<li><a href="${basePath}/j003_init.ac?id=febc75a6a6e54ee4ba641771bd67df9e&tid=fe74600b95be418a9d0b82700f8e3786&pid=7489507dd9cd46adbb983d6969a1cc52"><img src="${basePath}/images/jffxs.png" /> </a></li>
			<li><a href="${basePath}/j003_init.ac?id=277fc22253444f999f92f7b791d79193&tid=fe74600b95be418a9d0b82700f8e3786&pid=7489507dd9cd46adbb983d6969a1cc52"><img src="${basePath}/images/scfws.png" /> </a></li>
			<li><a href="${basePath}/j003_init.ac?id=9f44ba777325463cbec754e2b4571c88&tid=fe74600b95be418a9d0b82700f8e3786&pid=7489507dd9cd46adbb983d6969a1cc52"><img src="${basePath}/images/yyhzs.png" /> </a></li>
			<li><a href="${basePath}/j003_init.ac?id=ed1bb36f3e72442fa0a36a88d1a6bc80&tid=fe74600b95be418a9d0b82700f8e3786&pid=7489507dd9cd46adbb983d6969a1cc52"><img src="${basePath}/images/yxgw.png" /> </a></li>
			<li><a href="${basePath}/j003_init.ac?id=e2efb8428ecc40cd8b46fbc089eec672&tid=fe74600b95be418a9d0b82700f8e3786&pid=7489507dd9cd46adbb983d6969a1cc52"><img src="${basePath}/images/hezuo.png" /> </a></li>
				</ul>
			</div>
			<img src="${basePath}/images/xinxichaxun.jpg" />
			<div class="chaxun">
				<div id="search">
					<form action="${basePath}/j004_init.ac" method="post">
						<input type="hidden" name="tid"
							value="72411a4ab2944dd283d9dbdbdb0c9096" />
						<input type="hidden" name="pid"
							value="c7bfa8bd43204ef6bdf4a63a3e55d90e" />
						资质查询：
						<select name="type" id="sel" style="width: 107px;">
							<option value="0">
								积分发行商
							</option>
							<option value="1">
								市场服务商
							</option>
							<option value="6">
								应用服务商
							</option>
							<option value="2">
								营销顾问
							</option>
						</select>
						<input type="text" id="zizhi" name="keyword" value="请输入公司或姓名"
							onfocus="this.value='';"
							onblur="if(this.value.length < 1) this.value='请输入公司或姓名';" />
						<span> <input type="image"
								src="${basePath}/images/two_35.png"
								onclick="if($('#zizhi').val()=='请输入公司或姓名'){$('#zizhi').val('')}"
								alt="Search" /> </span>
					</form>
				</div>
				<div id="search2">
					<form action="${basePath}/j002_search.ac" method="post">
						信息查询：
						<input type="text" id="gonggao" name="keyword" value="请输入资讯标题"
							onfocus="this.value='';"
							onblur="if(this.value.length < 1) this.value='请输入资讯标题';" />
						<span> <input type="image"
								src="${basePath}/images/two_35.png"
								onclick="if($('#gonggao').val()=='请输入资讯标题'){$('#gonggao').val('')}"
								alt="Search" /> </span>
					</form>
				</div>
			</div>
		</div>
		</div
		</div>
		<!-- END PAGE CONTENT-->
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
window.onload = function() {
	var oTab = document.getElementById("tab");
	var aH3 = oTab.getElementsByTagName("li");
	var aDiv = oTab.getElementsByTagName("div");
	for ( var i = 0; i < aH3.length; i++) {
		aH3[i].index = i;
		aH3[i].onclick = function() {
			for ( var i = 0; i < aH3.length; i++) {
				aH3[i].className = "";
				aDiv[i].style.display = "none";
			}
			this.className = "active";
			aDiv[this.index].style.display = "block";

		}

	}
}
</script>

