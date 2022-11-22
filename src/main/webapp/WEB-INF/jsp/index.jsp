<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>九江职业大学信息工程学院</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<script language="javascript"> 
function codefans(){ 
var box=document.getElementById("move1"); 
box.style.display="none"; 
} 
setTimeout("codefans()",15000);//15秒 
</script> 
</head>

<body>
<div class="wrap">
<div id="haader">
  <%@include file="header.jsp" %>
	
</div>
<div class="move" id="move1">
   <ul>
       <li><img src="image/1.jpg" alt="" /></li>
	   <li><img src="image/2.jpg" alt="" /></li>
	   <li><img src="image/3.jpg" alt="" /></li>
	   <li><img src="image/4.jpg" alt="" /></li>
	   <li><img src="image/5.jpg" alt="" /></li>
	   <li><img src="image/6.jpg" alt="" /></li>
	   <li><img src="image/7.jpg" alt="" /></li>
       <li><img src="image/8.jpg" alt="" /></li>
       <li><img src="image/1.jpg" alt="" /></li>
	   <li><img src="image/2.jpg" alt="" /></li>
	   <li><img src="image/3.jpg" alt="" /></li>
	   <li><img src="image/4.jpg" alt="" /></li>
	   <li><img src="image/5.jpg" alt="" /></li>
	   <li><img src="image/6.jpg" alt="" /></li>
	   <li><img src="image/7.jpg" alt="" /></li>
       <li><img src="image/8.jpg" alt="" /></li>
   </ul>
</div>
<div id="contenter">
    <div id="main">
        <div class="section1">
        </div>
        <div class="section2">
        <div class="m1">
        <h1>学院新闻</h1>
        <ul>
             <c:forEach items="${list3}" var="info">
            	<li><a href="shownews?i_id=${info.i_id }" target="_blank">${info.title} </a><span >${info.adddate}</span></li>
       		</c:forEach>
        </ul>
        <a href="#"><img src="images/more.gif" width="48" height="26" /></a>
        </div>
        <div class="m1 m2">
        <h1>校企合作</h1>
        <ul>
              <c:forEach items="${list3}" var="info">
            	<li><a href="shownews?i_id=${info.i_id }" target="_blank">${info.title} </a><span >${info.adddate}</span></li>
       		</c:forEach>
        </ul>
        <a href="#"><img src="images/more.gif" width="48" height="26" /></a>        
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
