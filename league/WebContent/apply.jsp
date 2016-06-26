<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>退社申请</title>
		<script type="text/javascript">
	function del()
	{
		if(confirm("是否确定忽略该记录"))
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
	.STYLE1 {font-size: 16px}
.STYLE4 {font-size: 10pt}
    .STYLE5 {
	color: #FFFFFF;
	font-weight: bold;
}
    </style>
	</head>

	<body>
	<table width="960" border="0" height="400" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="40"><%
			if (session.getAttribute("user") == null) {
				session.setAttribute("authority", 1);
				session.setAttribute("user", "未登录");
			}
		%>

	  <strong><font size="2"><%=session.getAttribute("user")%></font></strong>&nbsp;&nbsp;${ usermessage }		
	  <p><img src="img/line.jpg" width="960" height="2"></p>
    </td>
  </tr>
  <tr>
    <td height="19">&nbsp;</td>
  </tr>
  <tr>
    <td valign="top"><table border="1" align="center"  height="50"  cellpadding="0" cellspacing="0" bordercolor="#00CCFF">
			<tr align="center" bgcolor="#CDCDCD">

				<td width="100" height="26" bgcolor="#0033FF"><span class="STYLE5">
				  用户名				</span></td>
				<td width="100" bgcolor="#0033FF"><span class="STYLE5">
				  真实姓名				</span></td>
				<td width="121" bgcolor="#0033FF"><span class="STYLE5">
				  学号				</span></td>
				<td width="42" bgcolor="#0033FF"><span class="STYLE5">
				  性别				</span></td>
				<td width="137" bgcolor="#0033FF"><span class="STYLE5">
				  所在院系				</span></td>
				<td width="100" bgcolor="#0033FF"><span class="STYLE5">
				  请求退社				</span></td>

				<td width="100" bgcolor="#0033FF"><span class="STYLE5">
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
						<s:property value="exitleague" />					</td>
					<td>
						<span class="STYLE4">
						<s:a href="deleteApply.action?user.id=%{id}"
							onclick="return del();">忽略</s:a>

						<s:a href="exitLeague.action?user.id=%{id}">同意</s:a>
					    </span></td>
				</tr>
			</s:iterator>
    </table></td>
  </tr>
</table>
		
	</body>
</html>
