
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>用户登录</title>
		<%--验证输入合法--%>
		<script language="JavaScript" type="text/javascript">

</script>
	</head>

	<body>
		
			<table width="960" border="0" height="437" align="center"
				cellpadding="0" cellspacing="0">
				<tr>
					<td height="133" valign="top">
						<%
			if (session.getAttribute("user") == null) {
				session.setAttribute("authority", 1);
				session.setAttribute("user", "未登录");
			}
		%>

						<strong><font size="2"><%=session.getAttribute("user")%></font>
						</strong>
						<font color="red">${message }</font>
						<%
	if(session.getAttribute("messages")==null)
	{
		session.setAttribute("messages","");
	}
%>
						<font color="red"><%=session.getAttribute("messages") %></font>
						<%session.removeAttribute("messages"); %>

					</td>
				</tr>
				<tr>

					<td valign="top">
					<s:form action="loginUser">
						<table border="0" align="center" cellpadding="0" cellspacing="0">
							<tr>
								<td>
									<s:textfield label="用户名" name="user.username"></s:textfield>
								</td>
							</tr>
							<tr>
								<td>
									<s:password label="密    码" name="user.password"></s:password>
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center">
									<input name="submit" type="submit" value="登录" />
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input name="button" type="button"
										onClick="window.location.replace('register.jsp')" value="注册" />
								</td>
							</tr>
					  </table></s:form>
					</td>
				</tr>
			</table>
		

	</body>
</html>