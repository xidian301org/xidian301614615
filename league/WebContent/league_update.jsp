<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<script src="js/nicEdit.js" type="text/javascript"></script>
		<script type="text/javascript">
	bkLib.onDomLoaded(function() {
		new nicEditor( {
			iconsPath : 'js/nicEditorIcons.gif'
		}).panelInstance('area3');

	});
</script>
		<%--验证输入合法--%>
		<script language="JavaScript" type="text/javascript">
	
</script>
		<title>修改社团</title>
		<style TYPE="text/css">
		A:link{text-decoration:none}
		A:visited{text-decoration:none}
		A:hover {color: #ff00ff;text-decoration:underline}
	</style>
	</head>

	<body>
	<table width="960" border="0"  height="386" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="39"><%
			if (session.getAttribute("user") == null) {
				session.setAttribute("authority", 1);
				session.setAttribute("user", "未登录");
			}
		%>

		<strong><font size="2"><%=session.getAttribute("user")%></font></strong>
		<p><img src="img/line.jpg" width="960" height="2"></p>
	</td>
  </tr>
  <tr>
    <td valign="top"><s:form action="updateLeague.action">
			<table border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#00CCFF">
				
				<tr>
					<%--					<s:textfield name="league.lname" value="%{league.lname}" label="社团名"></s:textfield>--%>
					<td width="150" height="29">
						社团名					</td>
					<td>
						<input type="text" name="league.lname" value="${league.lname }" />					</td>
				</tr>
				<tr>
					<%--					<s:textfield name="league.day" value="%{league.day}" ></s:textfield>--%>
					<td height="25">
						成立日期					</td>
					<td>
						<input type="text" name="league.day" value="${league.day }" />					</td>
				</tr>
				<tr>
					
					<td height="26">
						社长					</td>
					<td>
						<input type="text" name="league.master" value="${league.master}" />					</td>
				</tr>
				<tr>
					
					<td height="29">
						社团邮箱					</td>
					<td>
						<input type="text" name="league.email" value="${league.email}" />					</td>
				</tr>
				<tr>
					<td height="143">
						简介					</td>
					<td>
						<textarea cols="60" rows="10" id="area3" name="league.introduce">${league.introduce}</textarea>					</td>
				</tr>
				<tr>
					<td colspan="2" align="right">
						<input type="submit" value="submit" />					</td>
				</tr>
			</table>
	</s:form></td>
  </tr>
</table>
		
	</body>
</html>
