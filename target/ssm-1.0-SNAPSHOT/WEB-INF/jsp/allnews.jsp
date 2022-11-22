<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<%@include file="header.jsp"%>
		</div>
		<div id="sec_contenter">
			<div id="main">
				<div class="section1"></div>
				<div class="section2">
					<div class="m1">
						<h1>${menuname }</h1>
						<ul>
							<c:forEach items="${infoList}" var="info">
								<li><a href="shownews?i_id=${info.i_id }" target="_blank">${info.title}
								</a><span>${info.adddate}</span></li>
							</c:forEach>
						</ul>
												
				<p style = "text-align:center;">	
        					第${pb.currPageCode }页/共${pb.totalPage }页，每页${pb.pagesize }条/共有${pb.totalRecord }条记录，
      				<c:choose>
      					<c:when test="${pb.currPageCode<2 }">
      						首页&nbsp;&nbsp;
      						上一页&nbsp;&nbsp;
      					</c:when>
      					<c:otherwise>
      						<a href="allnews?pc=1&menuname=${menuname}&max_id=${max_id }&min_id=${min_id}">首页</a>&nbsp;&nbsp;
      						<a href="allnews?pc=${pb.currPageCode-1 }&menuname=${menuname}&max_id=${max_id }&min_id=${min_id}">上一页</a>&nbsp;&nbsp;
      					</c:otherwise>
      				</c:choose>
      	   			<c:choose>
      		 			<c:when test="${pb.currPageCode>pb.totalPage-1 }">
      		 	   			   下一页&nbsp;&nbsp;
      		    			    尾页&nbsp;&nbsp;
      		 			</c:when>
      		 			<c:otherwise>
      		 				<a href="allnews?pc=${pb.currPageCode+1 }&menuname=${menuname}&max_id=${max_id }&min_id=${min_id}">下一页</a>&nbsp;&nbsp;
      		 				<a href="allnews?pc=${pb.totalPage }&menuname=${menuname}&max_id=${max_id }&min_id=${min_id}">尾页</a>&nbsp;&nbsp;
      		 			</c:otherwise>
      				</c:choose>
      			</p>
      				
					</div>
				</div>
			</div>
			<div class="center"></div>
			<div id="side">
				<%@include file="side.jsp"%>
			</div>
			<div class="clear"></div>
		</div>
		<div id="pagefooter">
			<%@include file="pagefooter.jsp"%>
		</div>
	</div>
</body>
</html>
