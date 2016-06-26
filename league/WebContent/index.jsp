<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>首页</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style TYPE="text/css">
		A:link{text-decoration:none}
		A:visited{text-decoration:none}
		A:hover {color: #ff00ff;text-decoration:underline}
	body {
	background-image: url();
	background-repeat: no-repeat;
}
</style>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>

	<body>

		<%
			if (session.getAttribute("user") == null) {
				session.setAttribute("authority", 1);
				session.setAttribute("user", "未登录");
			}
		%>
		<table width="900"  height="400"  border="0" align="center" cellpadding="0" cellspacing="0" background="img/4205680_082235758332_2.jpg">
          <tr>
            <td><strong><font size="2"><%=session.getAttribute("user")%></font></strong></font>&nbsp;&nbsp; <font size="3" color="red">${message}</font> </td>
          </tr>
          <tr>
            <td width="400" align="center"> 用户说明 </td>
            <td width="50"></td>
            <td align="center"> 管理员说明 </td>
          </tr>
          <tr>
            <td>用户可以通过导航栏实现登录、注册、加入社团等。 <br>
                <br />
              注册后必须通过管理员的实名验证方可进行常规操作。 <br>
              <br />
              申请开展活动的同学必须已通过实名验证。 <br />
              <br />
              为防止审核通过后有用户修改自己的真实信息，请变更信息的用户联系管理员 <br />
              <br />
              请不要在留言板灌水，管理员将删除你的帐号。 <br />
              <br />
              查询均按照第一属性查询（如用户查询是按照用户名而非真实姓名） <br />
              <br />
            退社申请一次只能申请退一个社团，后申请的将覆盖之前的 </td>
            <td></td>
            <td> 管理员通过查看各条数据详情，在详情里可以进行删改的操作。 <br />
                <br />
              管理员通过管理员事务进行发布公告，审核活动和新注册会员的操作。 <br />
              <br />
              各社长帐号由管理员分配。 <br />
              <br />
              建议添加公告、社团介绍等的时候，用word编辑后再粘贴到富文本框内。 <br />
              <br />
              入社退社必须慎重，如需退社请与管理员联系并让管理员操作。 <br />
              <br />
              管理员联系邮箱: </td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
        </table>
	</body>
</html>
