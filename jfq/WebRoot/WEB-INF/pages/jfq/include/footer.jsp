<%--
/*
 * 底部共通部分画面
 *
 * VERSION  DATE        BY           REASON
 * -------- ----------- ------------ ------------------------------------------
 * 1.00     2014-03-25  wuxiaogang        程序・发布
 * -------- ----------- ------------ ------------------------------------------
 * Copyright 2014 jfq System. - All Rights Reserved.
 *
 */
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false"%>
<div style="clear:both"></div>
<div id="bottom_nav">
  <ul>
    <li><a href="${basePath}/j002_init.ac?tid=c7bfa8bd43204ef6bdf4a63a3e55d90e&pid=c7bfa8bd43204ef6bdf4a63a3e55d90e">关于我们</a></li>
    <li><a href="${basePath}/j002_init.ac?tid=c4920799b46746f4a33a78e3c1f6ff33&pid=c7bfa8bd43204ef6bdf4a63a3e55d90e">联系我们</a></li>
    <li><a href="${basePath}/j003_init.ac?id=78db3df122a749e4b650d4f3890abb3c&tid=bdd2a6ea5ce949f09ee5ab180a4149ea&pid=bdd2a6ea5ce949f09ee5ab180a4149ea">网站地图</a></li>
    <li><a href="${basePath}/j005_init.ac">友情链接</a></li>
    <li><a href="${basePath}/j003_init.ac?id=ab3e1a506a904489815ff36e6ce34a22&tid=bdd2a6ea5ce949f09ee5ab180a4149ea&pid=bdd2a6ea5ce949f09ee5ab180a4149ea">法律声明</a></li>
    <li style="border:0"><a href="${basePath}/j003_init.ac?id=cb50c66ba40743da9a1b622faa08f762&tid=bdd2a6ea5ce949f09ee5ab180a4149ea&pid=bdd2a6ea5ce949f09ee5ab180a4149ea">注册商标</a></li>
  </ul>
</div>
<div id="bottom">
  <p>© 2013-2014上海联合产权交易所积分交易中心 保留一切权利 沪ICP备案 ICP13037905号</p>
  
</div>
<script language=Javascript>
	function time() {
		//获得显示时间的div
		t_div = document.getElementById('showtime');
		var now = new Date()
		//替换div内容 
		t_div.innerHTML = "欢迎光临积分交易中心" + now.getFullYear() + "年"
				+ (now.getMonth() + 1) + "月" + now.getDate() + "日"
				+ now.getHours() + "时" + now.getMinutes() + "分"
				+ now.getSeconds() + "秒";
	}
	function AutoScroll(obj) {
		$(obj).find("ul:first").animate({
			marginTop : "-25px"
		}, 500, function() {
			$(this).css({
				marginTop : "0px"
			}).find("li:first").appendTo(this);
		});
	}
	$(document).ready(function() {
		setInterval('AutoScroll("#scrollDiv_keleyi_com")', 3000);
		//等待一秒钟后调用time方法
		setInterval('time()', 1000);
		
		loadUrlListScrollDiv();//滚动
		try{
			var url=location.href;
			var array=url.split('pid=');
			if(array!=null && array.length>1){
				$('.m').removeClass('on');
				$('.'+array[1]).addClass('on');
			}
		}catch(e){}
		
	});
	//列表查询
	function loadUrlListScrollDiv() {
		jQuery.ajax({
			url : '${basePath}/j002_roll.ac',
			success : function(req) {
				jQuery("#scrollDiv_keleyi_com").html(req);
			},
			error : function() {
				//--异常--
			}
		});
	}
</script>

