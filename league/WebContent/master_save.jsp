<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>添加社长</title>
<style TYPE="text/css">
		A:link{text-decoration:none}
		A:visited{text-decoration:none}
		A:hover {color: #ff00ff;text-decoration:underline}
	</style>
	</head>

	<body>
	<table width="960" border="0" align="center"  height="318" cellpadding="0" cellspacing="0">
  <tr>
    <td height="45"><p>
      <%
			if (session.getAttribute("user") == null) {
				session.setAttribute("authority", 1);
				session.setAttribute("user", "未登录");
			}
		%>
      <strong><font size="2"><%=session.getAttribute("user")%></font></strong>
      <font color="red" size="5">${savemessage }</font>
      
    </p>
    <p><img src="img/line.jpg" width="960" height="2"></p></td>
  </tr>
  <tr>
    <td align="center"><s:form name="form1" action="saveAdmin.action">
		<table width="541" height="110">
		<tr><s:hidden name="user.id"></s:hidden></tr>
			<tr><td><s:textfield name="user.username" label="用户名" id="username"></s:textfield></td></tr>
			<tr><td><s:textfield name="user.password" label="密码" id="password"></s:textfield></td></tr>
			<tr><s:hidden name="user.realname" value="master"></s:hidden></tr>
			<tr><s:hidden name="user.sn" value="master"></s:hidden></tr>
			<tr><s:hidden name="user.sex" value="1"></s:hidden></tr>
			<tr><s:hidden name="user.college" value="master"></s:hidden></tr>
			<tr><s:hidden name="user.phone" value="1"></s:hidden></tr>
			<tr><td><s:textfield name="user.email" label="电子邮件" ></s:textfield></td></tr>
			<tr><s:hidden name="user.league" value="master"></s:hidden></tr>
			<tr><s:hidden name="user.authority" value="5"></s:hidden></tr>
			<tr><td><s:submit></s:submit></td></tr>
		</table>
	</s:form></td>
  </tr>
</table>
<s:fielderror/>
	</body>
</html>
