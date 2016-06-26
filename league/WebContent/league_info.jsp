<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>社团详情</title>
		<script type="text/javascript">
	function del() {
		if (confirm("是否确定删除该记录")) {
			return true;
		}
		return false;
	}
</script>
		<style type="text/css">
body { <%--
	font-size: 12pt; --%>
	line-height: 3pt
}
        </style>
<style TYPE="text/css">
		A:link{text-decoration:none}
		A:visited{text-decoration:none}
		A:hover {color: #ff00ff;text-decoration:underline}
	</style>
	</head>

	<body>
	<table width="960" border="0" height="350"  align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="40"><%
			if (session.getAttribute("user") == null) {
				session.setAttribute("authority", 1);
				session.setAttribute("user", "未登录");
			}
		%>

		<strong><font size="2"><%=session.getAttribute("user")%></font></strong>&nbsp;&nbsp;
		<p><img src="img/line.jpg" width="960" height="2"></p>
		
	</td>
  </tr>
  <tr>
    <td valign="top"><table border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#00CCFF" style="line-height: 16px">

			<s:iterator value="list">

				<s:hidden value="id" />
				<tr>
					<td width="84" height="23"><strong>
					  社团名称					</strong></td>
					<td width="579">
						<s:property value="lname" />					</td>
				</tr>
				<tr>
					<td height="24"><strong>
					  成立时间					</strong></td>
					<td>
						<s:property value="day" />					</td>
				</tr>
				<tr>

					<td height="23"><strong>
					  社长					</strong></td>
					<td>
						<s:property value="master" />					</td>
				</tr>
				<tr>

					<td height="23"><strong>
					  社团邮箱					</strong></td>
					<td>
						<s:property value="email" />					</td>
				</tr>
				<tr>
					<td height="136"><strong>
					  社团简介					</strong></td>

					<td valign="top">
				  <s:property value="introduce" escape="false" />					</td>
				</tr>
				<tr>
					<td height="25"><strong>
					  操作					</strong></td>
					<td>
						<s:a href="updatepLeague.action?league.id=%{id}">update</s:a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<s:a href="deleteLeague.action?league.id=%{id}"
							onclick="return del();">delete</s:a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<s:a href="joinLeague.action?league.id=%{id}">加入该社团</s:a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<s:a href="listUserByLeague.action?league.id=%{id}">查看该社团会员</s:a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<s:a href="applyExit.action?league.id=%{id}">申请退出该社团</s:a>					</td>
				</tr>
			</s:iterator>
	</table></td>
  </tr>
</table>
		
	</body>
</html>
