<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cn.edu.dao.obj.Student"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

 <link rel="stylesheet" type="text/css" href="CSS/view.css"/>


<title>管理员界面</title>
      <%Student teacher=(Student)session.getAttribute("teacher");%>
      <% String[] stulist=teacher.getClasslist(); %>
</head>
<body>


   <table>
    <caption>管理员信息</caption>
  <tr>
   <td>账号:</td> <td><%=teacher.getSno() %></td>
  </tr>
  <tr>
   <td>姓名:</td> <td><%=teacher.getName() %></td>
  </tr>
  <tr>
   <td>密码:</td> <td><%=teacher.getPassword() %></td>
  </tr>
   <tr>  
  </table>
 
  

</body>
</html>