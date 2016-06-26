<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>带审核的用户</title>
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
.STYLE2 {font-size: 10pt}
    .STYLE3 {
	color: #FFFFFF;
	font-weight: bold;
}
    </style>
	</head>

	<body>
	<table width="960" border="0" align="center"  height="396" cellpadding="0" cellspacing="0">
  <tr>
    <td height="19" valign="top"><p>
      <%
			if (session.getAttribute("user") == null) {
				session.setAttribute("authority", 1);
				session.setAttribute("user", "未登录");
			}
		%>
      
      <strong><font size="2"><%=session.getAttribute("user")%></font></strong>&nbsp;&nbsp;</p>
      <p><img src="img/line.jpg" width="960" height="2"></p></td>
  </tr>
  <tr>
    <td height="19" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td valign="top"><table border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#00CCFF">
      <tr align="center" bgcolor="#CDCDCD">
        <td width="125" height="27" bgcolor="#0033FF"><span class="STYLE3"> 用户名 </span></td>
        <td width="125" bgcolor="#0033FF"><span class="STYLE3"> 真实姓名 </span></td>
        <td width="157" bgcolor="#0033FF"><span class="STYLE3"> 学号 </span></td>
        <td width="51" bgcolor="#0033FF"><span class="STYLE3"> 性别 </span></td>
        <td width="167" bgcolor="#0033FF"><span class="STYLE3"> 所在院系 </span></td>
        <td width="52" bgcolor="#0033FF"><span class="STYLE3"> 权限</span></td>
        <td width="237" bgcolor="#0033FF"><span class="STYLE3"> 操作 </span></td>
      </tr>
      <s:iterator value="list">
        <s:hidden value="id"></s:hidden>
        <tr align="center">
          <td><s:property value="username" />          </td>
          <td><s:property value="realname" />          </td>
          <td><s:property value="sn" />          </td>
          <td><s:property value="sex" />          </td>
          <td><s:property value="college" />          </td>
          <td><s:property value="authority" />          </td>
          <td><s:a href="deleteUser.action?user.id=%{id}"
							onclick="return del();"><span class="STYLE2">delete</span></s:a>
              <span class="STYLE2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <s:a href="userInfo.action?user.id=%{id}">查看详情</s:a>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <s:a href="checkUser.action?user.id=%{id}">同意</s:a>
            </span></td>
        </tr>
      </s:iterator>
    </table></td>
  </tr>
</table>
		
	</body>
</html>
