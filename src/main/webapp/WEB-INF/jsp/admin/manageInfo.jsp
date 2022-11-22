<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
    <%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
table {
 			text-align: center;
            border-collapse: collapse;
        }
        td {
            height: 40px;
            width: 240px;
            border: 1px solid black;
        }
        .btn {
        	width:15px;
        	heigth:15px;
        	background:transparent;
        	background-image:url(images/delete.gif);
        	background-repeat:no-repeat;
        	border:none;
        }
        .btn1 {
        	width:15px;
        	heigth:15px;
        	background:transparent;
        	background-image:url(images/edit.gif);
        	background-repeat:no-repeat;
        	border:none;
        }
        .text{
			width:230px;
		}
       .btn3 {
			width:230px;
			height:30px;
			border:tomato;
			color:white;
			background-color:tomato;
			margin-left:80px;
			margin-bottom:10px;
		}
		a {
			color:#666;
			fint-siza: 14px;
			text-decoration:none;
		}
</style>
<script type="text/javascript">
    	function confirm_msg(a){
    		if(confirm("确定修改吗？")){
    			window.open("editInfo?i_id="+a,"_self")
    		}
    	}
</script>
<script type="text/javascript">
	function check(){
		var ids = document.getElementsByName("ids");
		var but = document.getElementById("button2");
		if(but.value == "全选"){
			but.value="取消"
			for(var i=0; i<ids.length;i++){
				ids[i].checked=true;
			}
		}else{
			but.value="全选";
			for(var i=0; i<ids.length;i++){
				ids[i].checked=false;
			}
		}
		
	}
</script>
<body>
<form id="form1" name="form1" method="post" action="delInfo">
    <security:csrfInput/>
	<table width="601" border="1" cellspacing="0" cellpadding="0">
  <tr>
    <td width="120" align="center" valign="middle">
    	<input type="button" name="button2" id="button2" value="全选" onclick="check();"/>
    </td>
    <td width="351" align="center">标题</td>
    <td width="351"  align="center">修改</td>
  </tr>
  <c:forEach items="${iList }" var="info">
  <tr>
    <td align="center">
    	<input type="checkbox" name="ids" id="ids" value="${info.i_id}"/> 
    </td>
    <td align="center">
    	<a href="shownews?i_id=${info.i_id }" target="_blank">${info.title }</a>
    </td>
    <td width="60" align="center">
    	<input type="button" value=" " onclick="confirm_msg(${info.i_id})" class="btn1"/>
    </td>
  </tr>
  </c:forEach>
</table>
<input type="submit" value="删除">
</form>
</body>
</html>