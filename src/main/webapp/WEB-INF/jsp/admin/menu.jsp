<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!--#include file="utf-8.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="seeion.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>main</title>
    <style>
        body {
            background: url(../images/head.gif) no-repeat;
            font-size: 12px;
            margin: 0;
            padding: 0;
            background-image: url();
        }

        a {
            font-size: 12px;
            color: #990000;
        }

        a:link {
            text-decoration: none;
            color: #FF0000;
        }

        a:visited {
            text-decoration: none;
            color: #FF0000;
        }

        a:hover {
            text-decoration: underline;
            color: #990000;
        }

        a:active {
            text-decoration: none;
            color: #990000;
        }
    </style>
</head>
<body>
<div style="padding:10px 0px 10px 35px; background-color:#F7F7F7;">欢迎您！<security:authentication
        property="principal.username"/>
    <a href="/index.asp" target="_blank"></a>
    <a href="#" target="main">备份数据库</a> | <a href="#" target="main">修改管理员密码</a> |
    <a href="../index.html" target="_blank">预览网站首页</a> |

    <form action="${pageContext.request.contextPath}/tologin" style="float: left;transform: translateX(400px)"
          method="post" target="_parent">
        <security:csrfInput/>
        <input type="submit" value="注销">
    </form>
</div>
</body>
</html>
