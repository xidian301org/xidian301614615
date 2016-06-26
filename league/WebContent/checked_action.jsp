<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>已审核的活动</title>
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
	<table width="960" border="0"  height="400" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="19" colspan="2"><%
			if (session.getAttribute("user") == null) {
				session.setAttribute("authority", 1);
				session.setAttribute("user", "未登录");
			}
		%>

		<strong><font size="2"><%=session.getAttribute("user")%></font></strong>&nbsp;&nbsp;${message }	</td>
	  </tr>
  <tr>
    <td height="19" colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td width="633" height="23">&nbsp;</td>
    <td width="327">		<form action="findAction.action" method="post">
		
			<table align="right" cellpadding="0" cellspacing="0">
				<tr>
				<td>按活动名查找</td>
					<td>
						<input type="text" name="action.actionname" />					</td>
					<td>
						<input type="submit" value="submit" />					</td>
				</tr>
		</table>
	</form></td>
  </tr>
		<tr>
		<td colspan="2" valign="top"><p><img src="img/line.jpg" width="960" height="2"></p>
		<table width="900" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#00CCFF">
			<tr align="center" bgcolor="#CDCDCD">


				<td width="150" height="28" bgcolor="#0033FF" ><span class="STYLE3">
				  活动标题				</span></td>
				<td width="150" bgcolor="#0033FF"><span class="STYLE3">
				  所属社团
				</span></td>

				<td width="150" bgcolor="#0033FF"><span class="STYLE3">
				  发起人
				</span></td>
				<td width="150" bgcolor="#0033FF"><span class="STYLE3">
				  活动时间
				</span></td>
				<td width="150" bgcolor="#0033FF"><span class="STYLE3">
				  备注
				</span></td>
				<td width="150" bgcolor="#0033FF"><span class="STYLE3">
				  操作
				</span></td>
			</tr>
			<s:iterator value="list">
				<tr align="center">
					<s:hidden value="id" />
					<td>
						<s:property value="actionname" />					</td>
					<td>
						<s:property value="league" />					</td>
					<td>
						<s:property value="sponsor" />					</td>
					<td>
						<s:property value="time" />					</td>
					<td>
						<s:property value="btext" />					</td>

					<td>
						<span class="STYLE6">
						<s:if test="userCheck==1">						</s:if>
						<s:a href="actionInfo.action?action.id=%{id}">查看详情</s:a>
                        </span></td>
				</tr>
			</s:iterator>
		</table>
		<p><br/></p>
		</td>
		</tr>
		<tr>
		  <td colspan="2" align="right"><a href="action_save.jsp">申请活动</a></td>
	  </tr>
</table>
		
	</body>
</html>
