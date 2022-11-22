<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>九江职业大学信息工程学院</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div class="wrap">
<div id="haader">
   <%@include file="header.jsp" %>
</div>
<div id="sec_contenter">
    <div id="main">
        <div class="section1">
        </div>
        <div class="section2">
        <div class="m1">
        <h1>${info.title }</h1>
        <div class="sec_show">
       		<p style="text-align:center">作者：${info.author },	日期：${info.adddate },	点击率：${info.hits }</p>
       		<p>${info.content }</p>
        </div>
        </div>
        </div>
    </div>
    <div class="center"></div>
    <div id="side">
      <%@include file="side.jsp" %>
  </div>
  <div class="clear"></div>
</div>
<div id="pagefooter">
 <%@include file="pagefooter.jsp" %>
</div>
</div>
</body>
</html>
