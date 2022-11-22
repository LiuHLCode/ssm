<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.box 
	 {
	 	width:100%;
	 	height:400px;
	 	
	 }
	.text
	{
		width:230px;
	}
	.btn 
	{
		width:230px;
		height:30px;
		border:tomato;
		color:white;
		background-color:tomato;
		margin-left:50px;
		margin-bottom:10px;
	}
</style>
<script>
	function check() {
		if(form1.username.value == ""){
			alert("账号不能为空");
			return false;
		}
		if(form1.password.value == ""){
			alert("密码不能为空");
			return false;
		}
		if(form1.level.value == ""){
			alert("权限不能为空");
			return false;
		}
	}
</script>


</head>
<body>
<div class="box">
<h3>修改账号</h3>
<form action="${pageContext.request.contextPath }/editUsers" name="form1" method="post" onsubmit="return check();">
    <security:csrfInput/>
<input name="id" type="hidden" value="${user1.id}"/>
账号：<input class="text" id="username" type="text" name="username" value="${user1.username}"/>
<span  style="color:red" id="errorSpan">${map.msg}</span></p>
密码：<input class="text" type="password" name="password" value="${user1.password}"/></p>
权限：<input class="text" type="text" name="status" value="${user1.status}"></p>
<input class="btn" type="submit" value="确定"/></br>
<input class="btn" type="reset" value="重置"/>
</form>
</div>
</body>
</html>