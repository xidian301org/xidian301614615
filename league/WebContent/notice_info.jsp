<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>公告详情</title>
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
	.STYLE1 {color: #FFFFFF}
.STYLE4 {color: #0033FF}
</style>
	</head>

	<body>
	<table width="960" border="0" align="center"  height="407" cellpadding="0" cellspacing="1">
  <tr>
    <td height="18" valign="top"><%
			if (session.getAttribute("user") == null) {
				session.setAttribute("authority", 1);
				session.setAttribute("user", "未登录");
			}
		%>

	  <strong><font size="2"><%=session.getAttribute("user")%></font></strong></td>
</tr>
			<s:iterator value="list">
				<s:hidden value="id" />
				<tr align="center">
					<td height="31" bgcolor="#0033FF">
						<span class="STYLE1"><strong><FONT size="5">
				        <s:property value="title" /> 
		                </FONT></strong> </span></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td height="23"  align="center" bgcolor="#00CCFF">
						<span class="STYLE1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 作者 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<s:property value="author" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 发布时间 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<s:property value="daytime" />
				        </span></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td height="299" valign="top" >
						<s:property value="context" escape="false" />
				  <br />				  </td>
				</tr>

				<tr>

					<td align="center" bgcolor="#CCFFFF">
						<span class="STYLE1"><strong>
<s:a href="updatepNotice.action?notice.id=%{id}"><span class="STYLE4">update</span></s:a>
<span class="STYLE4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<s:a href="deleteNotice.action?notice.id=%{id}"
							onclick="return del();">delete</s:a>
        </span></strong></span></td>
				</tr>
			</s:iterator>
    </table>
	<td height="2"></td>
  </tr>
</table>
		
	</body>
</html>
