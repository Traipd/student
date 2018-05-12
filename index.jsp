<%@ page language="java" import="java.util.*"  contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录界面</title>
<link href="CSS/loginStyle.css" rel="stylesheet" type="text/css" />
</head>

<body>

<div id="mine">

<div id="logo"></div>
<div id="logo2"></div>

<div id="center">

<div id="top">
<div id="topleft"></div>
<div id="toprigth">用户登录</div>
</div>

<div id="login">
  <form action="login" method="post">
     <div id="user"> 
     <div id="userleft"></div> 
     <div id="loginright">账号 <input type="text" name="sno" placeholder="请输入账号" /></div>
     </div>
        
      <div id="user">
  	  <div id="passleft"></div>
      <div id="loginright">密码 <input type="password" name="password" placeholder="请输入密码"/></div>
      </div>
      
      <div id="choose">
      <input type="radio" checked="checked" name="who"  value="student"/>学生
      <input type="radio" name="who" value="teacher"/>老师 
      </div>
      
      <div id="sure">
      <input id="submit" type="submit" value="登      录" />
      </div><br>
  <%if(request.getAttribute("message")!=null) 
     {%>
  <%= request.getAttribute("message")  %>
  <% } %>
  </form>
</div>

</div>


</div>

</body>
</html>
