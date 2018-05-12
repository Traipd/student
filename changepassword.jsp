<%@ page language="java" import="java.util.*"  contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="cn.edu.dao.obj.Student" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

   <link rel="stylesheet" type="text/css" href="CSS/view.css"/>

<title>学生信息</title>
</head>
<body>
 
 
 <br>
  <% Student s=(Student)session.getAttribute("student");%>

  <form action="login" method="post">
  <table>
  <caption>密码设置</caption>
  <tr>
   <td class="t1">原密码:</td> <td><%=s.getPassword() %></td>
  </tr>
  <tr>
   <td class="t1">新密码:</td> <td><input type="text" name="newpassword" value="<%=s.getPassword()%>"size="15"> </td>
 </tr>
 <tr>
   <td class="t2"><input type="submit" value="确定新密码"></td>
 </tr>
  </table> 

  </form>
</body>
</html>