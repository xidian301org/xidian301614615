<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>Register</title>
<style TYPE="text/css">
		A:link{text-decoration:none}
		A:visited{text-decoration:none}
		A:hover {color: #ff00ff;text-decoration:underline}
	</style>
	</head>

	<body>
		<table width="960" border="0" align="center"  height="386" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="27">
					<p>
					  <%
						if (session.getAttribute("user") == null) {
							session.setAttribute("authority", 1);
							session.setAttribute("user", "未登录");
						}
					%>
					  
					    <strong><font size="2"><%=session.getAttribute("user")%></font></strong>
					    <font color="red" size="5">${savemessage }</font>			    </p>
				<p><img src="img/line.jpg" width="960" height="2"> </p></td>
			</tr>
			<tr>
			  <td align="center" valign="top"><s:form name="form1" action="saveUser.action">
			  		<table width="500">
						<tr><s:hidden name="user.id"></s:hidden></tr>
						<tr><td><s:textfield name="user.username" label="用户名" id="username"></s:textfield></td></tr>
						<tr><td><s:password name="user.password" label="密码" id="password"></s:password></td></tr>
						<tr><td><s:password name="password1" label="确认密码"></s:password></td></tr>
						<tr><td><s:textfield name="user.realname" label="真实姓名" id="realname"></s:textfield></td></tr>
						<tr><td><s:textfield name="user.sn" label="学号" id="sn"></s:textfield></td></tr>
						<tr><td><s:textfield name="user.sex" label="性别" id="sex"></s:textfield></td></tr>
						<tr><td><s:textfield name="user.college" label="院系" id="college"></s:textfield></td></tr>
						<tr><td><s:textfield name="user.phone" label="联系电话" id="phone"></s:textfield></td></tr>
						<tr><td><s:textfield name="user.email" label="电子邮箱" id="email"></s:textfield></td></tr>
						<tr><s:hidden name="user.league" value=""></s:hidden></tr>
						<tr><s:hidden name="user.authority" value="1"></s:hidden></tr>
					<tr><td><s:submit></s:submit></td></tr></table>
					</s:form></td>
		  </tr>
	</table>
	</body>
</html>
