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
		<title>添加社团</title>
		<style TYPE="text/css">
		A:link{text-decoration:none}
		A:visited{text-decoration:none}
		A:hover {color: #ff00ff;text-decoration:underline}
	</style>
	</head>

	<body>
	<table width="960" border="0" align="center"  height="258" cellpadding="0" cellspacing="0">
  <tr>
    <td height="48"><%
			if (session.getAttribute("user") == null) {
				session.setAttribute("authority", 1);
				session.setAttribute("user", "未登录");
			}
		%>

		<strong><font size="2"><%=session.getAttribute("user")%></font></strong>
		
		<font color="red" size="5">${savemessage }</font>
		<p><img src="img/line.jpg" width="960" height="2"></p>
	</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="center" valign="top"><s:form action="saveLeague.action">
      <table width="500">
			<tr><td width="150"></td>
			<s:hidden name="league.id"></s:hidden></tr>
			<tr><s:textfield name="league.lname" label="社团名"></s:textfield></td></tr>
			<tr><s:textfield name="league.day" label="成立时间"></s:textfield></td></tr>
			<tr><s:textfield name="league.master" label="社长"></s:textfield></td></tr>
			<tr><s:textfield name="league.email" label="社团邮箱"></s:textfield></td></tr>
	</table>
			<table width="500">
				<tr>
					<td>
					<br>
					简介:
					<br>
						<textarea cols="60" rows="10" id="area3" name="league.introduce"> </textarea>
					</td>
				</tr>
				<tr>
					<td width="150" align="right">
				  <input type="submit" value="submit" />				  </td>
				</tr>
		</table>

	</s:form></td>
  </tr>
</table>
		
	</body>
</html>
