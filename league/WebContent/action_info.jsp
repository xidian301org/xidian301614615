<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>活动详情</title>
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
	</style>
	</head>

	<body>
		<table width="960" border="0" height="337" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="29">
					<%
						if (session.getAttribute("user") == null) {
							session.setAttribute("authority", 1);
							session.setAttribute("user", "未登录");
						}
					%>

			  <strong><font size="2"><%=session.getAttribute("user")%></font></strong>&nbsp;&nbsp;</td>
			</tr>
			<tr>
			  <td valign="top"><p><img src="img/line.jpg" width="960" height="2"></p>
			    <table width="600" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#00CCFF">
                  <s:iterator value="list">
                    <s:hidden value="id" />
                    <tr>
                      <td width="77" height="23"><strong> 活动名称 </strong></td>
                      <td width="517"><s:property value="actionname" />
                      </td>
                    </tr>
                    <tr>
                      <td height="26"><strong> 所属社团 </strong></td>
                      <td><s:property value="league" />
                      </td>
                    </tr>
                    <tr>
                      <td height="23"><strong> 发起人 </strong></td>
                      <td><s:property value="sponsor" />
                      </td>
                    </tr>
                    <tr>
                      <td height="26"><strong> 活动时间 </strong></td>
                      <td><s:property value="time" />
                      </td>
                    </tr>
                    <tr>
                      <td height="113"><strong> 活动内容 </strong></td>
                      <td valign="top"><s:property value="actioncontext" escape="false" />                      </td>
                    </tr>
                    <tr>
                      <td height="33"><strong> 备注 </strong></td>
                      <td><s:property value="btext" escape="false" />
                      </td>
                    </tr>
                    <tr> </tr>
                    <tr>
                      <td height="40"><strong> 操作 </strong></td>
                      <td><s:a href="updatepAction.action?action.id=%{id}">update</s:a>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <s:a href="deleteAction.action?action.id=%{id}"
										onclick="return del();">delete</s:a>
                        <br />
                    </tr>
                  </s:iterator>
                </table></td>
		  </tr>
	</table>


	</body>
</html>
