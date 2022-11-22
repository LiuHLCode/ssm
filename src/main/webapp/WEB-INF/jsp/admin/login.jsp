<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>新闻管理系统后台管理</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
body {background-color: #044668;}
-->
</style>
</head>
<body>
<form  name="login" method="post"
       action="${pageContext.request.contextPath }/login">
<security:csrfInput/>
    <div style="padding-top:120px;">
	<p style="color:#FFF;font-size:28px;font-weight:bolder;text-align:center;margin:10px;">XXXX新闻管理系统</p>
      <table width="641" border="0" align="center">
  <tr>
    <td width="641" height="232" align="right" background="images/bg.jpg">
	<div align="center">
	<table width="464" border="0" style="border-width:0px; ">
      <tr>
        <td width="271" style="border-style: none; border-width: medium; "><table width="100%" border="0">
          <tr>
            <td width="19%" align="left">
			<p align="left"><b>用户名：</b></td>
            <td width="81%">
            <input name="username" type="text" size="15" value="${user.username }">
            <span style="color:red;font-size:12px;">${map.username} ${msg}</span></td>
          </tr>
          <tr>
            <td>
			<p align="left"><b>密&nbsp;&nbsp;&nbsp;码：</b></td>
            <td><input name="password" type="password" size="15" value="${user.password }"><span style="color:red;font-size:12px;">${map.password}</span></td>
          </tr>
          <tr>
            <td>
			<p align="left"><b>验证码：</b></td>
            <td align="left" valign="middle">
			<input name="VerifyCode" type="text"  id="VerifyCode" size="8" maxlength="5"/><span style="color:red;font-size:12px;">${map.VerifyCode}</span>
            </td>
          </tr>
        </table></td>
        <td width="183" style="border-style:none; border-width:medium; "><input border=0 cache height=89 src="images/login.jpg" type=image width=82 name="image"></td>
      </tr>
    </table></div>
	</td>
  </tr>
</table>
</div>
</form>
</body>
</html>