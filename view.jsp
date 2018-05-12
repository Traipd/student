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
  <caption>学生信息</caption>
  <tr>
   <td class="t1">学号:</td> <td><%=s.getSno() %></td>
  </tr>
  <tr>
   <td class="t1">姓名:</td> <td><%=s.getName() %></td>
  </tr>
  <tr>
   <td class="t1">密码:</td> <td><%=s.getPassword() %></td>
  </tr>

  </table> 

  </form>
</body>
</html>