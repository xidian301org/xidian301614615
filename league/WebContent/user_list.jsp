<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>用户列表</title>
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
.STYLE3 {font-size: 10pt}
.STYLE6 {color: #FFFFFF; font-weight: bold; }
.STYLE7 {font-size: 16px}
</style>
	</head>

	<body>
		<table width="960" border="0" align="center" cellpadding="0"  height="400" 
			cellspacing="0">
			<tr>
				<td height="19" colspan="2"><%
			if (session.getAttribute("user") == null) {
				session.setAttribute("authority", 1);
				session.setAttribute("user", "未登录");
			}
		%>

		<strong><font size="2"><%=session.getAttribute("user")%></font></strong>&nbsp;&nbsp;${ usermessage }		
	</td></tr>
			<tr>
			  <td height="19" colspan="2">&nbsp;</td>
		  </tr>
			<tr>
			  <td width="626" height="21">&nbsp;</td>
		      <td width="334">		<form action="findUser.action" method="post">
			<table border="0" align="right" cellpadding="0" cellspacing="0">
				<tr>
					<td>
						按用户名查询&nbsp;					</td>
					<td>
						<input type="text" name="user.username" />					</td>
					<td>
						<input type="submit" value="submit" />					</td>
				</tr>
			</table>
		</form>	</td>
		  </tr>
		<tr><td colspan="2" valign="top">
		<table width="900" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#00CCFF">
			<tr align="center" bgcolor="#CDCDCD">

				<td width="130" height="27" bgcolor="#0033FF"><span class="STYLE6">
				  用户名				</span></td>
				<td width="130" bgcolor="#0033FF"><span class="STYLE6">
				  真实姓名				</span></td>
				<td width="130" bgcolor="#0033FF"><span class="STYLE6">
				  学号				</span></td>
				<td width="49" bgcolor="#0033FF"><span class="STYLE6">
				  性别				</span></td>
				<td width="108" bgcolor="#0033FF"><span class="STYLE6">
				  所在院系				</span></td>

				<td width="130" bgcolor="#0033FF"><span class="STYLE6">
				  参加的社团				</span></td>
				<td width="40" bgcolor="#0033FF"><span class="STYLE6">
				  权限				</span></td>
				<td width="131" bgcolor="#0033FF"><span class="STYLE6">
				  操作				</span></td>
			</tr>
			<s:iterator value="list">
				<s:hidden value="id"></s:hidden>
				<tr align="center">

					<td>
						<s:property value="username" />					</td>
					<td>
						<s:property value="realname" />					</td>
					<td>
						<s:property value="sn" />					</td>
					<td>
						<s:property value="sex" />					</td>
					<td>
						<s:property value="college" />					</td>

					<td>
						<s:property value="league" />					</td>
					<td>
						<s:property value="authority" />					</td>
					<td><span class="STYLE3">
					  <s:a href="userInfo.action?user.id=%{id}">查看详情</s:a>
					  </span> </td>
				</tr>
			</s:iterator>
		</table></td>
			</tr>
		</table>

		
	</body>
</html>
