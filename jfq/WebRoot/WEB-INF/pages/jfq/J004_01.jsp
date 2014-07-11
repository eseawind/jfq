<%--
/*
 * 会员名单--会员列表 (默认加载页面)
 *
 * VERSION  DATE        BY           REASON
 * -------- ----------- ------------ ------------------------------------------
 * 1.00     2014-03-26  wuxiaogang   程序・发布
 * 1.01     2014-04-16  wuxiaogang   程序・废弃
 * -------- ----------- ------------ ------------------------------------------
 * Copyright 2014 jfq System. - All Rights Reserved.
 *
 */
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<dl>
	<dt>
		<a href="javascript:void(0);" onclick="getDataHi(0,'j004_','list1','search_div_list','type=0')"><img
			src="${basePath}/images/jifenfaxing.png"></a>
	</dt>
	<dd>
		<ul>
			<c:if test="${map!=null}">
				<c:forEach items="${map}" var="m">
					<c:if test="${m.key=='0'}">
						<c:forEach items="${m.value}" var="bean">
							<li><a href="javascript:void(0);" onclick="getDataHi(0,'j004_','detail','search_div_list','id=${bean.id}')">${bean.name}</a></li>
						</c:forEach>
					</c:if>
				</c:forEach>
				<li><a href="javascript:void(0);" onclick="getDataHi(0,'j004_','list1','search_div_list','type=0')">更多&gt;&gt;</a></li>
			</c:if>
		</ul>
	</dd>
</dl>
<dl>
	<dt>
		<a href="javascript:void(0);" onclick="getDataHi(0,'j004_','list1','search_div_list','type=1')"><img
			src="${basePath}/images/merber_20.jpg"></a>
	</dt>
	<dd>
		<ul>
			<c:if test="${map!=null}">
				<c:forEach items="${map}" var="m">
					<c:if test="${m.key=='1'}">
						<c:forEach items="${m.value}" var="bean">
							<li><a href="javascript:void(0);" onclick="getDataHi(0,'j004_','detail','search_div_list','id=${bean.id}')">${bean.name}</a></li>
						</c:forEach>
					</c:if>
				</c:forEach>
				<li><a href="javascript:void(0);" onclick="getDataHi(0,'j004_','list1','search_div_list','type=1')">更多&gt;&gt;</a></li>
			</c:if>
		</ul>
	</dd>
</dl>

<dl>
	<dt>
		<a href="javascript:void(0);" onclick="getDataHi(0,'j004_','list1','search_div_list','type=2')"><img
			src="${basePath}/images/yingxiaoguwen.png"></a>
	</dt>
	<dd>
		<ul>
			<c:if test="${map!=null}">
				<c:forEach items="${map}" var="m">
					<c:if test="${m.key=='2'}">
						<c:forEach items="${m.value}" var="bean">
							<li><a href="javascript:void(0);" onclick="getDataHi(0,'j004_','detail','search_div_list','id=${bean.id}')">${bean.name}</a></li>
						</c:forEach>
					</c:if>
				</c:forEach>
				<li><a href="javascript:void(0);" onclick="getDataHi(0,'j004_','list1','search_div_list','type=2')">更多&gt;&gt;</a></li>
			</c:if>
		</ul>
	</dd>
</dl>
