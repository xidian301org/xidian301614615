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
		<title>修改活动</title>
	<style TYPE="text/css">
		A:link{text-decoration:none}
		A:visited{text-decoration:none}
		A:hover {color: #ff00ff;text-decoration:underline}
	</style>
	</head>

	<body>
	<table width="960" border="0" align="center"  height="368" cellpadding="0" cellspacing="0">
  <tr>
    <td height="39">		<%
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
    <td height="19">&nbsp;</td>
  </tr>
  <tr>
    <td align="center"><s:form action="updateAction.action">
			<table width="500">
				<tr>
					<s:hidden name="action.id" value="%{action.id}"></s:hidden>
				</tr>
				<tr>
					<td><s:textfield name="action.actionname" value="%{action.actionname}"
						label="活动名"></s:textfield></td>
				</tr>
				<tr>
					<td><s:textfield name="action.league" value="%{action.league}"
						label="所属社团"></s:textfield></td>
				</tr>

				<tr>
					<td><s:textfield name="action.sponsor" value="%{action.sponsor}"
						label="发起人"></s:textfield></td>
				</tr>
				<tr>
					<td><s:textfield name="action.time" value="%{action.time}" label="活动时间"></s:textfield></td>
				</tr>
				<tr>
					<td><s:textfield name="action.btext" value="%{action.btext}" label="备注"></s:textfield></td>
				</tr>
				</table>
				<s:hidden name="action.checked" value="%{action.checked}"></s:hidden>
				<table width="500">
				<tr>
					<td>
						简介					
					<br>
						<textarea cols="60" id="area3" name="action.actioncontext">${action.actioncontext}</textarea>					</td>
				</tr>
				<tr>
					<td align="right">
				  <input type="submit" value="submit" /></td>
				</tr>
			</table>
	</s:form></td>
  </tr>
</table>

	</body>
</html>
