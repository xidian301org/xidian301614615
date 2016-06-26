<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>社长列表</title>
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
	.STYLE1 {
	color: #FFFFFF;
	font-weight: bold;
}
.STYLE5 {font-size: 10pt}
    </style>
	</head>

	<body>
	<table width="960" border="0" align="center"  height="400" scellpadding="0" cellspacing="0">
  <tr>
    <td height="31" valign="top"><%
			if (session.getAttribute("user") == null) {
				session.setAttribute("authority", 1);
				session.setAttribute("user", "未登录");
			}
		%>

		<strong><font size="2"><%=session.getAttribute("user")%></font></strong></td>
  </tr>
  <tr>
    <td valign="top"><table width="499" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#00CCFF">
      <tr align="center" bgcolor="#CDCDCD">
        <td width="108" height="25" bgcolor="#0033FF"><span class="STYLE1"> 用户名 </span></td>
        <td width="282" bgcolor="#0033FF"><span class="STYLE1"> 电子邮件 </span></td>
        <td width="101" bgcolor="#0033FF"><span class="STYLE1"> 操作 </span></td>
      </tr>
      <s:iterator value="list">
        <s:hidden value="id"></s:hidden>
        <tr align="center">
          <td><s:property value="username" />          </td>
          <td><s:property value="email" />          </td>
          <td><span class="STYLE5">
            <s:a href="deleteUser.action?user.id=%{id}"
							onclick="return del();">delete</s:a>
          </span> </td>
        </tr>
      </s:iterator>
    </table></td>
  </tr>
</table>
		
	</body>
</html>
