<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat"
	pageEncoding="utf-8"%>
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

		<title>修改公告</title>
		<style TYPE="text/css">
		A:link{text-decoration:none}
		A:visited{text-decoration:none}
		A:hover {color: #ff00ff;text-decoration:underline}
	</style>
	</head>
	<%
		String temp_str = "";
		Date dt = new Date();
		//最后的aa表示“上午”或“下午”    HH表示24小时制    如果换成1hhh表示12小时制
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		temp_str = sdf.format(dt);
	%>
	<body>
	<table width="960" border="0" align="center"  height="340" cellpadding="0" cellspacing="0">
  <tr>
    <td height="26"><p>
      <%
			if (session.getAttribute("user") == null) {
				session.setAttribute("authority", 1);
				session.setAttribute("user", "未登录");
			}
		%>
      
      <strong><font size="2"><%=session.getAttribute("user")%></font></strong>
    </p>
      <p><img src="img/line.jpg" width="960" height="2"></p></td>
  </tr>
  <tr>
    <td height="19">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" valign="top"><s:form action="updateNotice.action">
			<table>
				<tr>
					<s:hidden name="notice.id" value="%{notice.id}"></s:hidden>
				</tr>
				<tr>
					<td width="50">
						标题:&nbsp;&nbsp;				
						<input type="text" name="notice.title" value="${notice.title}" />					</td>
				</tr>
				<tr>
					<s:hidden name="notice.daytime" value="%{notice.daytime}"></s:hidden>
				</tr>
				<tr>
				<s:hidden name="notice.author" value="%{notice.author}"></s:hidden>
				</tr>

			<tr><td><textarea name="notice.context" rows="10" cols="60" id="area3">${notice.context}</textarea></td></tr>
			<tr><td align="right"><input type="submit" value="submit" /></td>
			</tr>
			</table>
	</s:form></td>
  </tr>
</table>
		
	</body>
</html>
