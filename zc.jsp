<%@ page language="java" import="java.util.*"  contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

 <link rel="stylesheet" type="text/css" href="CSS/view.css"/>

<title>添加学生</title>
</head>
<body>
 <form action="login" method="get">

<table> 
<caption>请输入学生信息：</caption> 
<tr> 
   <td>学号</td><td><input type="text" name="sno" size="15"> </td>
</tr> 
<tr>    
   <td>姓名</td><td><input type="text" name="name" size="15">  </td>
</tr> 
<tr>  
   <td>密码</td><td><input type="text" name="password" size="15">  </td>
</tr> 
<tr>  
  <td><input type="submit" value="确定"></td>
</tr>  
  </table> 
  
  </form>
</body>
</html>