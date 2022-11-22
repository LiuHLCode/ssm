<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="ueditor/ueditor.all.js"></script>
<script type="text/javascript"
	src="js/jquery-1.11.3.min.js">
</script>
<script type="text/javascript">
	$(function(){
		$("#maxid").change(function() {
			var max_id = $ ("#maxid").val();
			$.ajax({
				type:"POST",
				url:"${pageContext.request.contextPath }/findMinMenu",
				data:{
					max_id:max_id
				},
				dataType:"json",
				success:function(data){
					$("#minid").empty();
					$("#minid").append(" <option value='0'>选择下拉菜单</option>");
					var arr = eval(data);
					for(var m = 0; m < arr.length; m++){
						$("#minid").append(" <option value='"+arr[m].min_id+"'>"+arr[m].min_name+"</option>");
					}
				}
			});
		});			
	})
</script>
</head>
<body>
<form id="form1" name="form1" method="post" action="addInfo">
  <p>标　　题：
    <label for=""></label>
    <input name="title" type="text" id="title" />
  </p>
  <p>作　　者：
    <label for="author"></label>
    <input type="text" name="author" id="author" />
  </p>
  <p>发布日期：
    <label for="adddate"></label>
    <input type="text" name="adddate" id="adddate" />
  </p>
  <p>内　　容：</p>
  <p>	
    <label for="content"></label>
    <textarea name="content" id="myEditor">${info.content }</textarea> 
  </p>
  <p>大栏目：
    <label for="maxid"></label>
    <select name="maxid" id="maxid">
      <option value="0">选择导航栏菜单</option>
      <c:forEach items="${mList }" var="maxMenu" >
      		<option value="${maxMenu.max_id }">${maxMenu.max_name }</option>
      </c:forEach>
    </select>
  　　　　小栏目：
  <label for="minid"></label>
  <select name="minid" id="minid">
    <option value="0">选择下拉菜单</option>
  </select>
  </p>
  <p>
    <input type="submit" name="button" id="button" value="提交" />
  </p>
</form>
<script type="text/javascript" >  
 	UEDITOR_CONFIG.UEDITOR_HOME_URL = './ueditor/'; //一定要用这句话，否则你需要去ueditor.config.js修改路径的配置信息  
 	UE.getEditor('myEditor');  
 	</script> 
</body>
</html>