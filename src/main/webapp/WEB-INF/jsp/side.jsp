<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
 <div class="s1">
          <h1>学院公告</h1>
          <ul>
           <c:forEach items="${list3}" var="info">
            	<li><a href="shownews?i_id=${info.i_id }" target="_blank">${info.title} </a><span style="float:right">${info.adddate}</span></li>
       		</c:forEach>
          </ul>
      </div>
      <div class="s3">
          <img src="images/gkk.jpg" width="200" height="90" />
      </div>
      <div class="s1 s2">
          <h1>专业设置</h1>
          <ul>
           <c:forEach items="${list4}" var="info">
            	<li><a href="shownews?i_id=${info.i_id }" target="_blank">${info.title} </a><span style="float:right">${info.adddate}</span></li>
       		</c:forEach>
          </ul>
      </div>