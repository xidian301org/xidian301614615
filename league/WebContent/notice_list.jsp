<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>公告列表</title>
		<script type="text/javascript">
	function del() {
		if (confirm("是否确定删除该记录")) {
			return true;
		}
		return false;
	}
</script>
<style TYPE="text/css">
		A:link{text-decoration:none}
		A:visited{text-decoration:none}
		A:hover {color: #ff00ff;text-decoration:underline}
.STYLE5 {color: #FFFFFF; font-weight: bold; }
.STYLE17 {font-size: 10pt}
</style>

	</head>

	<body>
	<table width="960" border="0" align="center"  height="400" cellpadding="0" cellspacing="0">
  <tr>
    <td height="18" colspan="2"><%
			if (session.getAttribute("user") == null) {
				session.setAttribute("authority", 1);
				session.setAttribute("user", "未登录");
			}
		%>

		<strong><font size="2"><%=session.getAttribute("user")%></font></strong>
	</td>
	  </tr>
  <tr>
    <td height="19" colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td width="654" height="21">&nbsp;</td>
    <td width="306">		<form action="findNotice.action" method="post">
		  
			<table border="0" align="right" cellpadding="0" cellspacing="0">
				<tr>
				<td>按标题查找</td>
					<td>
						<input type="text" name="notice.title" />					</td>
					<td>
						<input type="submit" value="submit" />					</td>
				</tr>
		</table>
	</form></td>
  </tr>
		<tr>
		<td colspan="2" valign="top"><p><img src="img/line.jpg" width="960" height="2"></p>
		  <table border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#0099FF">
			<tr align="center" bgcolor="#CDCDCD">


				<td width="200" height="27" bordercolor="#0099FF" bgcolor="#0033FF"><span class="STYLE5">
				  标题				</span></td>
				<td width="200" bordercolor="#0099FF" bgcolor="#0033FF"><span class="STYLE5">
				  作者				</span></td>
				<td width="200" bordercolor="#0099FF" bgcolor="#0033FF"><span class="STYLE5">
				  写作日期				</span></td>
				<td width="200" bordercolor="#0099FF" bgcolor="#0033FF"><span class="STYLE5">
				  数据操作				</span></td>
			</tr>
			<s:iterator value="list">
				<tr align="center">
					<s:hidden value="id" />
					<td bordercolor="#0099FF" bgcolor="#FFFFFF">
				  <s:property value="title" /></td>
					<td bordercolor="#0099FF">
				  <s:property value="author" />					</td>

					<td bordercolor="#0099FF">
				  <s:property value="daytime" />					</td>
					<td bordercolor="#0099FF">
						<span class="STYLE17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<s:a href="noticeInfo.action?notice.id=%{id}">查看详情</s:a>
                  </span></td>
				</tr>
			</s:iterator>
		</table></td>
  </tr>
</table>
		
	</body>
</html>
