<%@ page language="java" import="java.util.*"  %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" errorPage="" %>
<%@ page import="cn.edu.dao.obj.Student" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>教务管理系统</title>

<style type="text/css">
</style>
<link href="CSS/bodystyle.css" rel="stylesheet" type="text/css" />

</head>
   <%Student t=(Student)session.getAttribute("teacher");//已在Classlist中存入所有学生学号 %>
     <%Student allclass=(Student)session.getAttribute("allclass");%>
<body>

<div id="mine">

<div id="logo">
<div id="logo2"></div>
<div id="logo3"></div>
<div id="welcome">欢迎您：<%=t.getSno() %>  <%=t.getName()%> 管理员||<a href="index.jsp">安全退出</a></div>
</div>

<div id="nav">
<div id="navcenter">
<ul>
<li><a href="index.jsp">返回首页</a></li>
<li><a href="teacher.jsp" target="content">个人信息</a></li>
<li><a href="zc.jsp" target="content">添加学生</a></li>
<li><a href="Tselectstu.jsp" target="content">学生管理</a></li>
<li><a href="addeclassfrom.jsp" target="content">添加课程</a></li>
<li><a href="Tselectcla.jsp" target="content">课程管理</a></li>

</ul>
</div>
</div>

<div id="content">
<iframe  width="1000" height="500" frameborder="0" scrolling="auto" name="content"></iframe>
</div>

</div>

<div id="bottom">湖师大15软件工程 版权所有</div>

</body>
</html>