<%--
/*
 * 会员名单--会员列表 (页面)
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
<%@ taglib prefix="customtag" uri="/custom-tags"%>
<div class="biaoge">
	<c:if test="${type=='0'}">
		<table cellspacing="0">
  <tr class="tb_title">
    <td width="150px">编号</td>
    <td width="320px" >公司名称</td>
    <td width="120px">行业</td>
    <td>详情</td>
  </tr>
			<c:forEach items="${beans}" var="bean">
		<tr>
    <td>${bean.code}</td>
    <td>${bean.name}</td>
    <td>${bean.industry}</td>
    <td><a href="javascript:void(0);"
								onclick="getDataHi(0,'j004_','detail','search_div_list','id=${bean.id}')">
								查看</a></td>
  </tr>
			</c:forEach>
			</table>
			</c:if>
			<c:if test="${type=='1'}">
				<table cellspacing="0">
					<tr class="tb_title">
						<td >
							许可证号
						</td>
						<td  >
							公司名称
						</td>
						<td >
							负责区域
						</td>
						<td >
							详情
						</td>
					</tr>
					<c:forEach items="${beans}" var="bean">
						<tr>
							<td>
								${bean.code}
							</td>
							<td >
								${bean.name}
							</td>
							<td>
					${bean.province_name}
							</td>
							<td>
								<a href="javascript:void(0);" onclick="getDataHi(0,'j004_','detail','search_div_list','id=${bean.id}')">查看</a>
							</td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
			<c:if test="${type=='2'}">
				 <table cellspacing="0">
  <tr class="tb_title">
    <td width="162">编号</td>
    <td width="114" >姓名</td>
    <td width="318" >挂靠单位</td>
    <td width="88">详情</td>
  </tr>
					<c:forEach items="${beans}" var="bean">
					 <tr>
    <td>${bean.code}</td>
    <td >${bean.name}</td>
    <td >${bean.parent_org}</td>
    <td width="88"><a href="javascript:void(0);"
										onclick="getDataHi(0,'j004_','detail','search_div_list','id=${bean.id}')">查看</a></td>
  </tr>
					</c:forEach>
					</table>
			</c:if>
			<c:if test="${type=='6'}">
				<table cellspacing="0">
  <tr class="tb_title">
    <td>编号</td>
    <td >公司名称</td>
    <td>详情</td>
  </tr>
					<c:forEach items="${beans}" var="bean">
					<tr>
    <td>${bean.code}</td>
    <td >${bean.name}</td>
    <td><a href="javascript:void(0);"
										onclick="getDataHi(0,'j004_','detail','search_div_list','id=${bean.id}')">查看</a></td>
  </tr>
					</c:forEach>
					</table>
			</c:if>
			<div style="clear: both"></div>
			</div>
			
					<br />
			<customtag:pagingext func="getDataHi"
				params="'j004_','list1','search_div_list','type=${type}'" />
			<br />