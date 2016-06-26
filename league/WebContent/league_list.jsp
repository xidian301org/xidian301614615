<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>社团列表</title>
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
.STYLE3 {color: #FFFFFF; font-weight: bold; }
.STYLE6 {font-size: 10pt}
</style>
	</head>

	<body>
	<table width="960" border="0"  height="401" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="11" colspan="2" bordercolor="#ECE9D8"><%
			if (session.getAttribute("user") == null) {
				session.setAttribute("authority", 1);
				session.setAttribute("user", "未登录");
			}
		%>

		<strong><font size="2"><%=session.getAttribute("user")%></font></strong>
  <tr>
    <td height="12" colspan="2">  
  <tr>
    <td width="618" height="21">&nbsp;</td>
    <td width="342"><form action="findLeague.action" method="post">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>按社团名查找 </td>
            <td><input type="text" name="league.lname" /></td>
            <td><input name="submit" type="submit" value="submit" /></td>
          </tr>
        </table>
    </form></td>
  </tr>
		<tr>
		<td colspan="2" valign="top"><p><img src="img/line.jpg" width="960" height="2"></p>
		<table border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#00CCFF">
			<tr align="center"  bgcolor="#CDCDCD">
				<td width="188" height="27" bordercolor="#00CCFF" bgcolor="#0033FF"><span class="STYLE3">
				  社团名				</span></td>
				<td width="212" bordercolor="#00CCFF" bgcolor="#0033FF"><span class="STYLE3">
				  成立日期				</span></td>
				<td width="104" bordercolor="#00CCFF" bgcolor="#0033FF"><span class="STYLE3">
				  社长				</span></td>
				<td width="219" bordercolor="#00CCFF" bgcolor="#0033FF"><span class="STYLE3">
				  社团邮箱				</span></td>
				<td width="149" bordercolor="#00CCFF" bgcolor="#0033FF"><span class="STYLE3">
				  操作数据				</span></td>
			</tr>
			<s:iterator value="list">
				<tr align="center">
					<s:hidden value="id" />
					<td bordercolor="#00CCFF">
						<s:property value="lname" />				  </td>
					<td bordercolor="#00CCFF">
						<s:property value="day" />				  </td>
					<td bordercolor="#00CCFF">
						<s:property value="master" />				  </td>
					<td bordercolor="#00CCFF">
						<s:property value="email" />				  </td>
					<td bordercolor="#00CCFF">
						<span class="STYLE6">
						<s:a href="leagueInfo.action?league.id=%{id}">查看详情</s:a>
						</span> </td>
				</tr>
			</s:iterator>
		</table></td>
  </tr>
</table>
		
	</body>
</html>
