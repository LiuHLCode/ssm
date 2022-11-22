<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
    <div class="title">欢迎访问九江职业大学信息工程学院 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="${pageContext.request.contextPath }/tologin" target="_blank">登录</a>
        &nbsp;&nbsp;<a href="#">注册</a>&nbsp;&nbsp; </div>
  <div id="logo_area">
      <div class="logo"><span>九江职业大学信息工程学院</span></div>
      <div class="vt"></div>
  </div>
<ul class="menu">
	  <c:forEach items="${mList}" var="maxmenu">
	    <li class="dropdown">
           <a href="allnews?max_id=${maxmenu.max_id }&menuname=${maxmenu.max_name}" target="_blank">${maxmenu.max_name }</a>         
           <c:if test="${!empty maxmenu.mList }">
           <div class="dropdown-content">
           	 <c:forEach items="${maxmenu.mList }" var="minmenu">
             	<p><a href="allnews?min_id=${minmenu.min_id }&menuname=${minmenu.min_name}" target="_blank">${minmenu.min_name }</a></p>
             </c:forEach>
          </div> 
          </c:if>      
        </li>  
        </c:forEach>     
    </ul>