<%--
/*
 * 会员名单--会员详情 (页面)
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
<%-- <a href="javascript:void(0);" onclick="getDataHi(0,'j004_','list1','search_div_list','type=${bean.type}')"> </a> --%>
<c:if test="${bean.type=='0' }">
       <div style="clear:both;"></div>
      <div class="fxs_info">
<div class="left_yuan"><img src="images/left_yuan.png" /></div>
      <div class="fxs_info_title">${bean.name}</div>
 <div class="left_yuan"><img src="images/right_yuan.png"  /></div>
      <div style="clear:both"></div>
      <div class="xikezheng">
        <img src="${bean.pic_url}"/>
         <div class="text_show">
        <p><b>许可证号:</b>${bean.certificate_no}</p>
        <p><b>地址:</b>${bean.addres}</p>
        </div>
        </div>
        <p class="gongsijianjie">
        <b>公司简介：</b> ${bean.detail_info}
</p>

      </div> </c:if>
 <c:if test="${bean.type=='1' }">
<div style="clear:both;"></div>
      <div class="fxs_info">
<div class="left_yuan"><img src="images/left_yuan.png" /></div>
      <div class="fxs_info_title">${bean.name}</div>
 <div class="left_yuan"><img src="images/right_yuan.png"  /></div>
      <div style="clear:both"></div>
<div class="xikezheng">
        <img src="${bean.pic_url}"/>
         <div class="text_show">
        <p><b>许可证号:</b>${bean.certificate_no}</p>
        <p><b>地址:</b>${bean.addres}</p>
        </div>
        </div>
        <p class="gongsijianjie">
        公司简介： ${bean.detail_info}
</p>

	<ul class="lianxi">
    	<li><b>负责区域:</b><c:choose>
			<c:when test="${bean.province_name!=null}">${bean.province_name}.${bean.city_name}</c:when>
			<c:otherwise>
				全国
			</c:otherwise>
		</c:choose></li>
        <li><b>联系人:</b>${bean.contact_name }</li>
        <li><b>联系电话:</b>${bean.tel}</li>
        <li><b>下属机构或个人:</b>${bean.parent_org}</li>
	</ul>
    
    <div style="clear:both"></div>

<div class="zhengshu">
<p><b>营业执照：</b></p>
<c:choose>
			<c:when test="${bean.certificate_pic_url!=null}"><img src="${bean.certificate_pic_url}"/></c:when>
		</c:choose>
<p><b>组织机构代码：</b></p>
<c:choose>
			<c:when test="${bean.certificate_pic_url!=null}"><img src="${bean.certificate_pic_url}"/></c:when>
		</c:choose>
</div> 
</c:if>

 <c:if test="${bean.type=='2' }">
      <div style="clear:both;"></div>
      <div class="fxs_info">
<div class="left_yuan"><img src="images/left_yuan.png" /></div>
      <div class="fxs_info_title">${bean.name}</div>
 <div class="left_yuan"><img src="images/right_yuan.png"  /></div>
      <div style="clear:both"></div>
      <div class="yinxiaoguwen">
        <img src="${bean.pic_url}"/>
        <p><b>从业资格证书编号:</b>${bean.certificate_no}</p>
        </div>

	<ul class="lianxi">
    	<li><b>姓名：</b>${bean.name}</li>
        <li><b>负责区域：</b><c:choose><c:when test="${bean.province_name!=null}">${bean.province_name}.${bean.city_name}</c:when>
			<c:otherwise>
				全国
			</c:otherwise></c:choose></li>
        <li><b>挂靠单位：</b>${bean.parent_org}</li>
        <li><b>行业：</b>${bean.industry}</li>
	</ul>
    <div style="clear:both"></div>
      </div> 
</c:if>

 <c:if test="${bean.type=='6' }">
     <div style="clear:both;"></div>
      <div class="fxs_info">
<div class="left_yuan"><img src="images/left_yuan.png" /></div>
      <div class="fxs_info_title">${bean.name}</div>
 <div class="left_yuan"><img src="images/right_yuan.png"  /></div>
      <div style="clear:both"></div>
      <div class="xikezheng">
        <img src="${bean.pic_url}"/>
        <div class="text_show">
        <p><b>编号:</b>${bean.code}</p>
        <p><b>地址:</b>${bean.addres}</p>
        </div>
        </div>
        <p class="gongsijianjie">
        ${bean.detail_info}
</p>
</div>
 </c:if>