<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>用户详情</title>
		<script type="text/javascript">
	function del()
	{
		if(confirm("是否确定删除该记录"))
		{
			return true;
		}
		return false;
	}
	</script>
	<style TYPE="text/css">
		A:link{text-decoration:none}
		A:visited{text-decoration:none}
		A:hover {color: #ff00ff;text-decoration:underline}
	</style>
	</head>

	<body>
		<table width="960" border="0" align="center" cellpadding="0"  height="395" 
			cellspacing="0">
			<tr>
			  <td height="21"><p>
			    <%
			if (session.getAttribute("user") == null) {
				session.setAttribute("authority", 1);
				session.setAttribute("user", "未登录");
			}
		%>
				  
			                <strong><font size="2"><%=session.getAttribute("user")%></font></strong>
				  
		      </p>
		      <p><img src="img/line.jpg" width="960" height="2"> </p></td>
			</tr>
			<tr>
			  <td valign="top"><table height="274" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#00CCFF">

			<s:iterator value="list">
				<tr>
					<td width="84" height="24">
						用户名					</td>
					<td width="353">
				  <s:property value="username" />				  </td>
				</tr>
				<tr>
					<td height="25">
						真实姓名					</td>
					<td>
						<s:property value="realname" />					</td>
				</tr>
				<tr>
					<td height="24">
						学号					</td>
					<td>
						<s:property value="sn" />					</td>
				</tr>
				<tr>
					<td height="25">
						性别					</td>
					<td>
						<s:property value="sex" />					</td>
				</tr>
				<tr>
					<td height="24">
						所在院系					</td>
					<td>
						<s:property value="college" />					</td>
				</tr>
				<tr>
					<td height="25">
						联系方式					</td>
					<td>
						<s:property value="phone" />					</td>
				</tr>
				<tr>
					<td height="25">
						电子邮件					</td>
					<td>
						<s:property value="email" />					</td>
				</tr>
				<tr>
					<td height="51">
						参加的社团					</td>
					<td>
						<s:property value="league" />					</td>
				</tr>
				<tr>
					<td height="25">
						权限等级					</td>
					<td>
						<s:property value="authority" />					</td>
				</tr>
				<tr>
					<td>
						操作					</td>
				  <td align="center">
						<s:a href="deleteUser.action?user.id=%{id}"
							onclick="return del();">delete</s:a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<s:a href="checkUser.action?user.id=%{id}">同意</s:a>					</td>
				</tr>
			</s:iterator>
		</table></td>
		  </tr>
		</table>
		
	</body>
</html>
