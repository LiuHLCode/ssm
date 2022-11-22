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
    		if(confirm("确定删除吗？")){
    			window.open("deleteMenu?max_id="+a,"_self")
    		}
    	}
    	function confirm_msg1(a){
    		if(confirm("确定修改吗？")){
    			window.open("editMenu?max_id="+a,"_self")
    		}
    	}
    	function check() {
    		if(form1.max_name.value == ""){
    			alert("菜单不能为空");
    			return false;
    		}
  
    	}
</script>
<body>
	<table width="601" border="1" cellspacing="0" cellpadding="0">
  <tr>
    <td width="120" align="center" valign="middle">序号</td>
    <td width="351" align="center">导航菜单名称</td>
    <td colspan="2" align="center">操作</td>
  </tr>
  <c:forEach items="${list }" var="menu">
  <tr>
    <td align="center">${menu.max_id}</td>
    <td align="center">
   	 <a href="manageMinMenu?max_id=${menu.max_id }">${menu.max_name }</a>
    </td>
    <td width="60" align="center">
    	<input type="button" value=" " onclick="confirm_msg1(${menu.max_id})" class="btn1"/>
    </td>
    <td width="60" align="center">
   		<input type="button" value=" " onclick="confirm_msg(${menu.max_id})" class="btn"/>
  	</td>
  </tr>
  </c:forEach>
</table>
<p>&nbsp;</p>
<form id="form1" name="form1" method="post" action="addMaxMenu">
  <security:csrfInput/>
  <p>
  添加菜单：
  <label for="max_name"></label>
  <input type="text" name="max_name" id="max_name" value="${max_Menu.max_name }"/>
  <span style="color:red;font-size:12px;"> ${map.msg }</span>
  </p>
  <p>
    <input type="submit" name="button" id="button" value="添加" />
  </p>
</form>
<p>&nbsp;</p>
</body>
</html>