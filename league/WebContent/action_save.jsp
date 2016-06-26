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
		<script type="text/javascript">

	</script>
		<title>申请活动</title>
	<style TYPE="text/css">
		A:link{text-decoration:none}
		A:visited{text-decoration:none}
		A:hover {color: #ff00ff;text-decoration:underline}
	</style>
	</head>

	<body>
	
	<table width="960" border="0" height="400"  align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="48" align="center">		<%
			if (session.getAttribute("user") == null) {
				session.setAttribute("authority", 1);
				session.setAttribute("user","未登录");
			}
		%>

	  <strong><font size="2"><%=session.getAttribute("user")%></font></strong>&nbsp;&nbsp;
		<%
		if((Integer)session.getAttribute("authority")<3)
		{
			response.sendRedirect("login.jsp");
			session.setAttribute("messages","您没有执行该操作的权力");
		}

	
	%>
        <font color="red" size="5">${savemessage }</font>
        <s:form action="saveAction.action"></s:form>
        <p><img src="img/line.jpg" width="960" height="2"></p>
    </td>
  </tr>
  <tr>
    <td height="19" align="center" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" valign="middle"><s:form action="saveAction.action"><table>
      <tr>
        <s:hidden name="action.id"></s:hidden>
      </tr>
      <tr>
        <td><s:textfield name="action.actionname" label="活动名"></s:textfield></td>
      </tr>
      <tr>
        <td><s:textfield name="action.league" label="所属社团"></s:textfield></td>
      </tr>
      <tr>
        <td><s:textfield name="action.sponsor" label="发起人"></s:textfield></td>
      </tr>
      <tr>
        <td><s:textfield name="action.time" label="活动时间"></s:textfield></td>
      </tr>
      <tr>
        <td><s:textfield name="action.btext" label="备注"></s:textfield></td>
      </tr>
      <s:hidden name="action.checked" value="n"></s:hidden>
      <tr> 简介<br>
          <td><textarea cols="60" id="area3" name="action.actioncontext"> </textarea>          </td>
      </tr>
      <tr>
        <td align="right"><input name="submit" type="submit" value="submit" />        </td>
      </tr>
    </table></s:form>
    </td>
  </tr>
</table>

	</body>
</html>
