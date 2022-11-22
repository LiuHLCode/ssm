<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<html>
<head>
<title>left</title>
<style type="text/css">
body {
background-color: #EBEBEB; 
color: #336699; 
SCROLLBAR-FACE-COLOR: #BED8EB; 
SCROLLBAR-SHADOW-COLOR: #DDF8FF; 
SCROLLBAR-HIGHLIGHT-COLOR: #92C0D1; 
SCROLLBAR-3DLIGHT-COLOR: #DDF8FF; 
SCROLLBAR-DARKSHADOW-COLOR: #92C0D1; 
SCROLLBAR-TRACK-COLOR:#BED8EB; 
SCROLLBAR-ARROW-COLOR: #92C0D1 
}

<!--
*{margin:0;padding:0;border:0;}
body {font-family: arial, 宋体, serif;font-size:12px;margin-left: 3px;margin-top: 0px;margin-right: 0px;margin-bottom: 0px;}
#nav {width:140px;line-height: 24px; list-style-type: none;text-align:left;/*定义整个ul菜单的行高和背景色tb21 */}
/*==================一级目录===================*/
#nav a {width:140px; display: block;padding-left:40px;/*Width(一定要)，否则下面的Li会变形*/
}#nav li {width:140px; background-image:url(images/left_title.gif); /*一级目录的背景色*/border-bottom:#F7F7F7 1px solid; /*下面的一条白边*/float:left;/*float：left,本不应该设置，但由于在Firefox不能正常显示继承Nav的width,限制宽度，li自动向下延伸*/}
#nav li a:hover{ background-image:url(images/left_title2.gif);	/*一级目录onMouseOver显示的背景色*/}
#nav a:link  {color:#FFF; text-decoration:none;}
#nav a:visited  {color:#FFF;text-decoration:none;}
#nav a:hover  {color:#FFF;text-decoration:none;}
/*==================二级目录===================*/
#nav li ul {list-style:none;text-align:left;}
#nav li ul li{background: #f0f3f4; /*二级目录的背景色*/}
#nav li ul a{ padding-left:40px;width:140px;/* padding-left二级目录中文字向右移动，但Width必须重新设置=(总宽度-padding-left)*/}
/*下面是二级目录的链接样式*/
#nav li ul a:link  {color:#000; text-decoration:none;}
#nav li ul a:visited  {color:#000;text-decoration:none;}
#nav li ul a:hover {color:#000;text-decoration:none;font-weight:normal;background:#b7e3f7;/* 二级onmouseover的字体颜色、背景色*/}
/*==============================*/
#nav li:hover ul {left: auto;}
#nav li.sfhover ul {left: auto;}
#content {clear: left; }
#nav ul.collapsed {display: none;}
#nav ul.expanded {display: block;}
-->
#PARENT{width:140px;padding-left:0px;}
</style>
</head>
<body>
<div id="PARENT" style="padding-top:5px;">
<ul id="nav">

<li><a href="#Menu=ChildMenu1"  onclick="DoMenu('ChildMenu1')">网站管理</a>
	<ul id="ChildMenu1" class="expanded">
  <li><a href="#" target="main">基本设置</a></li>
  <li><a href="#" target="main">网站属性</a></li>
	</ul>
</li>

<security:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_USER')">
<li><a href="#Menu=ChildMenu2" onClick="DoMenu('ChildMenu2')">新闻管理</a>
	<ul id="ChildMenu2" class="collapsed">
        <li><a href="toAddInfo" target="main">添加新闻</a></li>
        <li><a href="manageInfo" target="main">管理新闻</a></li>
	</ul>
</li>
</security:authorize>

<li><a href="#Menu=ChildMenu5" onClick="DoMenu('ChildMenu5')">菜单管理</a>
	<ul id="ChildMenu5" class="collapsed">
        <li><a href="ManageMenu" target="main">管理菜单</a></li>
	</ul>
</li>

<security:authorize access="hasAnyRole('ROLE_ADMIN')">
<li><a href="#Menu=ChildMenu3" onClick="DoMenu('ChildMenu3')">用户管理</a>
	<ul id="ChildMenu3" class="collapsed">
        <li><a href="ManageUser" target="main">管理用户</a></li>
	</ul>
</li>
</security:authorize>
</ul>
</div>
</body>
</html>
<script type=text/javascript><!--
var LastLeftID = "";
function menuFix() {
	var obj = document.getElementById("nav").getElementsByTagName("li");
	
	for (var i=0; i<obj.length; i++) {
		obj[i].onmouseover=function() {
			this.className+=(this.className.length>0? " ": "") + "sfhover";
		}
		obj[i].onMouseDown=function() {
			this.className+=(this.className.length>0? " ": "") + "sfhover";
		}
		obj[i].onMouseUp=function() {
			this.className+=(this.className.length>0? " ": "") + "sfhover";
		}
		obj[i].onmouseout=function() {
			this.className=this.className.replace(new RegExp("( ?|^)sfhover\b"), "");
		}
	}
}
function DoMenu(emid)
{
	var obj = document.getElementById(emid);	
	obj.className = (obj.className.toLowerCase() == "expanded"?"collapsed":"expanded");
	if((LastLeftID!="")&&(emid!=LastLeftID))	//关闭上一个Menu
	{
		document.getElementById(LastLeftID).className = "collapsed";
	}
	LastLeftID = emid;
}
function GetMenuID()
{
	var MenuID="";
	var _paramStr = new String(window.location.href);
	var _sharpPos = _paramStr.indexOf("#");
	
	if (_sharpPos >= 0 && _sharpPos < _paramStr.length - 1)
	{
		_paramStr = _paramStr.substring(_sharpPos + 1, _paramStr.length);
	}
	else
	{
		_paramStr = "";
	}
	
	if (_paramStr.length > 0)
	{
		var _paramArr = _paramStr.split("&");
		if (_paramArr.length>0)
		{
			var _paramKeyVal = _paramArr[0].split("=");
			if (_paramKeyVal.length>0)
			{
				MenuID = _paramKeyVal[1];
			}
		}
		/*
		if (_paramArr.length>0)
		{
			var _arr = new Array(_paramArr.length);
		}
		
		//取所有#后面的，菜单只需用到Menu
		//for (var i = 0; i < _paramArr.length; i++)
		{
			var _paramKeyVal = _paramArr[i].split('=');
			
			if (_paramKeyVal.length>0)
			{
				_arr[_paramKeyVal[0]] = _paramKeyVal[1];
			}		
		}
		*/
	}
	
	if(MenuID!="")
	{
		DoMenu(MenuID)
	}
}
GetMenuID();	//*这两个function的顺序要注意一下，不然在Firefox里GetMenuID()不起效果
menuFix();
--></script>