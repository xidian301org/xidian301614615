<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>管理员</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<style TYPE="text/css">
A:link {
	text-decoration: none
}

A:visited {
	text-decoration: none
}

A:hover {
	color: #ff00ff;
	text-decoration: underline
}
</style>
	</head>

	<body>
		<table width="960" border="0"  height="400"  align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="39">
					<%
						if (session.getAttribute("user") == null) {
							session.setAttribute("authority", 1);
							session.setAttribute("user", "未登录");
						}
					%>

					<strong><font size="2"><%=session.getAttribute("user")%></font></strong>
					<p><img src="img/line.jpg" width="960" height="2"></p>					</td>
			</tr>
			<tr>
			  <td align="center" valign="top"><table>

                <tr align="center">
                  <td width="150"><a href="listNoCheck.action">待审核的人员</a> </td>
                  <td width="150"><a href="nocheckedAction.action">待审核的活动</a></td>
                </tr>
                <tr align="center"></tr>
                <tr align="center">
                  <td width="150"><a href="league_save.jsp">创建社团</a> </td>
                  <td width="150"><a href="notice_save.jsp">发布公告</a> </td>
                </tr>
                <tr align="center">
                  <td width="150"><a href="master_save.jsp">添加社长</a> </td>
                  <td width="150"><a href="listCheckedUser.action">管理会员</a> </td>
                </tr>
                <tr align="center">
                  <td width="150"><a href="listApply.action">退社申请</a> </td>
                  <td width="150"><a href=""> </a> </td>
                </tr>
              </table></td>
		  </tr>
		</table>

	</body>
</html>
