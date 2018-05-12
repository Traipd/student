<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="cn.edu.dao.obj.Student"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%! public static boolean isHave(String[] strs,String s){ 
	for(int i=0;i<strs.length;i++){ 
	  if(strs[i].equals(s)){
	    return true;//查找到了就返回真，不在继续查询 
	   } 
	 } 
	return false;}  %>


 <link rel="stylesheet" type="text/css" href="CSS/view.css"/>

<title>管理学生信息</title>
 
     <% Student stu=(Student)session.getAttribute("student"); %>   
         <%Student t=(Student)session.getAttribute("teacher");//已在Classlist中存入所有学生学号 %>
     <%Student allclass=(Student)session.getAttribute("allclass");%> 
</head>
<body>

<form action="teacher" method="post">
 <table>
    <caption>学生信息</caption>
  <tr>
   <td>学号</td><td><input type="text" name="sno" value=<%=stu.getSno()%> size="15"></td>
    </tr>
     <tr>
<td>姓名</td><td><input type="text" name="name" value=<%=stu.getName()%> size="15"></td>
 </tr>
  <tr>
<td>密码</td><td><input type="text" name="password" value=<%=stu.getPassword()%> size="15"></td>
 </tr>
  <tr>
<td><input type="submit" value="修改"></td>
 </tr>
</table>


<table>
     <caption>已选课程</caption>
  <tr>
   <td >课程</td> <td>教师</td><td>学分</td><td>分数</td>
  </tr>
  <%for(int i=0; i<stu.getClasslist().length;i++)
	  {%>
  <tr>
   <td class="t1"><%=stu.getClasslist()[i] %></td> <td><%=stu.getTeacherlist()[i] %></td><td><%=stu.getCcorelist()[i] %></td><td><input type="text" name="newscore"  value="<%=stu.getScorelist()[i]%>"></td>
  </tr>
   <%}%>
   <tr>
<td><input type="submit" value="修改"></td><td><a href="TaddSclass.jsp">添加课程</a></td><td><a href="TdelSclass.jsp">删除课程</a></td>
 </tr>
</table>
</form>  

 
</body>
</html>