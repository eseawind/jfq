<%@page pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="sctb"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName();
%>
<HTML><HEAD><TITLE>你访问的页面不存在或被删除！</TITLE>
<META http-equiv="Content-Type" content="text/html; charset=gb2312">
<META http-equiv="refresh" content="2;url=/" />
<STYLE type=text/css>.font14 {
	FONT-SIZE: 14px
}
.font12 {
	FONT-SIZE: 12px
}
.font12 a{
	FONT-SIZE: 12px; color: #CC0000; text-decoration:none;
}
</STYLE>

<META content="MSHTML 6.00.2900.3354" name=GENERATOR></HEAD>
<BODY>
<TABLE height=500 cellSpacing=0 cellPadding=0 width=500 align=center 
background=/home/error.gif border=0>
  <TBODY>
  <TR>
    <TD height=330>　</TD></TR>
  <TR>
    <TD vAlign=top>
      <DIV class=font14 align=center><STRONG>你访问的页面<FONT 
      color=#0099ff>不存在</FONT>或被<FONT color=#ff0000>删除！<BR></FONT></STRONG><SPAN 
      class=font12><FONT color=#666666>三秒后自动返回<A href="/">积分交易中心</A>首页........ 
    </FONT></SPAN></DIV></TD></TR></TBODY></TABLE></BODY></HTML>
