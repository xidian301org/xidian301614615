<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	if (session.getAttribute("boardmessage") == null) {
		session.setAttribute("boardmessage", "");
	}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>留言板</title>

		<script type="text/javascript">
	function del() {
		if (confirm("是否确定删除该记录")) {
			return true;
		}
		return false;
	}
</script>
		<style TYPE="text/css">
A:link {
	text-decoration: none
}

A:visited {
	text-decoration: none
}

A:hover {
	color: #ff00ff;
	text-decoration: underline
}

.STYLE2 {
	color: #FFFFFF
}

.STYLE3 {
	color: #000000
}
</style>
	</head>

	<body>
		<table width="960" border="0" height="387" align="center"
			cellpadding="0" cellspacing="0">
			<tr>
				<td height="39">
					<%
						if (session.getAttribute("user") == null) {
							session.setAttribute("authority", 1);
							session.setAttribute("user", "未登录");
						}
					%>

					<strong><font size="2"><%=session.getAttribute("user")%></font>
					</strong>
					<p>
						<img src="img/line.jpg" width="960" height="2">
					</p>
				</td>
			</tr>
			<tr>
				<td height="71" valign="top">
					<s:form action="saveBoard.action">
						<table width="800" align="center">
							<tr>
								<s:hidden name="notice.id"></s:hidden>
								<s:hidden name="board.author" value="%{#request.user_str}"></s:hidden>
							</tr>
							<tr>
								<td>
									留言：
									<font color="red"><%=session.getAttribute("boardmessage")%></font>
									<%
										session.removeAttribute("boardmessage");
									%>
									<br />
								</td>
							</tr>
							<tr>
								<td>
									<s:textarea name="board.context" rows="5" cols="60"></s:textarea>
								</td>
							</tr>
							<tr>
								<td align="right">
									<input type="submit" value="submit" />
								</td>
							</tr>
						</table>
					</s:form>
				</td>
			</tr>
			<tr>
				<td valign="top">
					<table width="800" border="1" align="center" cellpadding="0"
						cellspacing="0" bordercolor="#00CCFF">

						<s:iterator value="list">
							<s:hidden value="id" />
							<tr>
								<td bgcolor="#0033FF">
									<span class="STYLE2"> <s:property value="author" />
										&nbsp;&nbsp; 在&nbsp;&nbsp; <s:property value="daytime" />
										&nbsp;&nbsp; 时说： </span>
								</td>
							</tr>
							<tr>
								<td>
									<span class="STYLE3">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <s:property
											value="context" /> </span>
								</td>
							</tr>
							<tr align="right">
								<td>
									<s:a href="deleteBoard.action?board.id=%{id}"
										onclick="return del();">delete</s:a>
								</td>
							</tr>
						</s:iterator>
					</table>
				</td>
			</tr>
		</table>

	</body>
</html>
