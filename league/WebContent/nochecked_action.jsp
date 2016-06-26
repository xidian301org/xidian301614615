<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>带审核的活动</title>
		<script type="text/javascript">
	function del() {
		if (confirm("是否确定删除该记录")) {
			return true;
		}
		return false;
	}
</script>
		<%--验证输入合法--%>
<style TYPE="text/css">
		A:link{text-decoration:none}
		A:visited{text-decoration:none}
		A:hover {color: #ff00ff;text-decoration:underline}
.STYLE4 {color: #FFFFFF; font-weight: bold; }
.STYLE7 {font-size: 10pt}
</style>
	</head>

	<body>
	<table width="960" border="0" align="center"  height="400" cellpadding="0" cellspacing="0">
  <tr>
    <td height="21" valign="top"><p>
      <%
			if (session.getAttribute("user") == null) {
				session.setAttribute("authority", 1);
				session.setAttribute("user", "未登录");
			}
		%>
      
      <strong><font size="2"><%=session.getAttribute("user")%></font></strong></p>
      <p><strong><font size="2"><img src="img/line.jpg" width="960" height="2"></font></strong></p></td>
  </tr>
  <tr>
    <td height="19" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td valign="top"><table border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#00CCFF">
      <tr bgcolor="#CDCDCD" align="center">
        <td width="150" height="28" bgcolor="#0033FF"><span class="STYLE4"> 活动标题 </span></td>
        <td width="150" bgcolor="#0033FF"><span class="STYLE4"> 所属社团 </span></td>
        <td width="150" bgcolor="#0033FF"><span class="STYLE4"> 发起人 </span></td>
        <td width="150" bgcolor="#0033FF"><span class="STYLE4"> 活动时间 </span></td>
        <td width="150" bgcolor="#0033FF"><span class="STYLE4"> 备注 </span></td>
        <td width="150" bgcolor="#0033FF"><span class="STYLE4"> 操作 </span></td>
      </tr>
      <s:iterator value="list">
        <tr>
          <s:hidden value="id" />
          <td><s:property value="actionname" />          </td>
          <td><s:property value="league" />          </td>
          <td><s:property value="sponsor" />          </td>
          <td><s:property value="time" />          </td>
          <%--					<td><s:property value="actioncontext" /></td>--%>
          <td><s:property value="btext" />          </td>
          <%--					<td><s:a href="updatepAction.action?action.id=%{id}">update</s:a></td>--%>
          <%--					<td><s:a href="deleteAction.action?action.id=%{id}"--%>
          <%--							onclick="return del();">delete</s:a></td>--%>
          <td><span class="STYLE7">
            <s:a href="checkAction.action?action.id=%{id}">同意</s:a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <s:a href="actionInfo.action?action.id=%{id}">查看详情</s:a>
          </span></td>
        </tr>
      </s:iterator>
    </table></td>
  </tr>
</table>
		
	</body>
</html>
