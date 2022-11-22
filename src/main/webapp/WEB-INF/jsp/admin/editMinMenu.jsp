<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
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
<script type="text/javascript">
function check() {
	if(form1.max_name.value == ""){
	alert("导航菜单栏不能为空");
	return false;
}
}
</script>
</head>
<body>
<div class="box">
<h3>修改导航栏</h3>
<form action="editMinMenu" name="form1" method="post" onsubmit="return check();">
    <security:csrfInput/>
<input name="min_id" type="hidden" value="${min_Menu.min_id}"/>
<input name="mm_id" type="hidden" value="${min_Menu.mm_id}"/>
导航栏：<input class="text" type="text" name="min_name"  value="${min_Menu.min_name }"/><span style="color:red">${map.msg}</span><p>
<input class="btn" type="submit" value="确定"/><br>
<input class="btn" type="reset" value="重置"/>
</form>
</div>
</body>
</html>