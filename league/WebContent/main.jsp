<%@ page contentType="text/html; charset=gb2312"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<html>
	<head>
		<title><decorator:title default="装饰器页面..." />
		</title>
		<decorator:head />
		<link href="css/webwidget_menu_glide.css" rel="stylesheet"
			type="text/css">

		<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="js/webwidget_menu_glide.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312"><style type="text/css">
<!--
body {
	background-image: url(img/backtop.jpg);
	background-repeat: no-repeat;
}
-->
    </style></head>
	<body>

		<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td><div align="center"><img src="img/LogoMaker.png" width="543" height="94" align="middle"></div></td>
          </tr>
          <tr>
            <td><table align="center">
              <tr>
                <td><script language="javascript" type="text/javascript">
	$(function() {
		$("#webwidget_menu_glide3").webwidget_menu_glide( {
			menu_width : "100",
			menu_height : "23",
			menu_text_size : "12",
			menu_text_color : "#FFF",
			menu_sprite_color : "#86C7EF",
			menu_background_color : "#0F67A1",
			menu_margin : "2",
			sprite_speed : "normal",
			container : "webwidget_menu_glide3"
		});
	});
            </script>
                    <div id="webwidget_menu_glide3" class="webwidget_menu_glide">
                      <div class="webwidget_menu_glide_sprite"></div>
                      <ul>
                        <li  class="current"> <a href="index.jsp">Home</a> </li>
                        <li> <a href="listNotice.action">公告栏</a> </li>
                        <li> <a href="listLeague.action">社团介绍</a> </li>
                        <li> <a href="checkedAction.action">社团活动</a> </li>
                        <li> <a href="listBoard.action">留言板</a> </li>
                        <li> <a href="login.jsp">用户登录</a> </li>
                        <li> <a href="adminLogin.action">管理员事务</a> </li>
                        <li> <a href="exitUser.action">用户退出</a> </li>
                      </ul>
                      <div style="clear: both"></div>
                    </div></td>
              </tr>
            </table></td>
          </tr>
    </table>
		<hr />
		<decorator:body />
		<hr>
		<table width="1215" height="116" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td background="img/backfoot.jpg"><div align="center"><strong>1477726560@qq.com</strong></div></td>
          </tr>
        </table>
	</body>
</html>

