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
		<title>发布公告</title>
		<style TYPE="text/css">
		A:link{text-decoration:none}
		A:visited{text-decoration:none}
		A:hover {color: #ff00ff;text-decoration:underline}
.STYLE3 {
	font-size: 16pt;
	font-weight: bold;
}
        </style>
	</head>

	<body>
		<table width="960" border="0" align="center"  height="443" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="48">
					<p>
					  <%
						if (session.getAttribute("user") == null) {
							session.setAttribute("authority", 1);
							session.setAttribute("user", "未登录");
						}
					%>
					  
					    <strong><font size="2"><%=session.getAttribute("user")%></font></strong>
					    <font color="red" size="3">${savemessage }</font>			    </p>
				<p><img src="img/line.jpg" width="960" height="2"> </p></td>
			</tr>
			<tr>
			  <td height="19">&nbsp;
			    <div align="center"><span class="STYLE3">发布公告			  </span></div></td>
		  </tr>
			<tr>
			  <td align="center" valign="top"><s:form action="saveNotice.action">
						<table width="500">
							<tr>
								<s:hidden name="notice.id"></s:hidden>
							</tr>
							<tr>
								<s:textfield name="notice.title" label="标题"></s:textfield>
							</tr>
							<tr>
								<s:hidden name="notice.daytime" value="%{#request.temp_str}"></s:hidden>
							</tr>
							
						</table>
							<s:hidden name="notice.author" value="%{#session.user}"></s:hidden>
							<table width="500">
						<tr><td>
						<textarea name="notice.context" rows="20" cols="80" id="area3"> </textarea>
						</td></tr>
						<tr><td align="right">
						<input type="submit" value="submit" />
						</td>
						</tr>
						</table>
			  </s:form></td>
		  </tr>
		</table>
	<s:fielderror></s:fielderror>
	</body>
</html>
