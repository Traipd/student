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

<form action="regulation" method="post">
<input type="hidden" name="switch" value="delete" />
<table>
 <caption>删除课程</caption>
  <tr>
   <td >课程</td> <td>教师</td><td>学分</td><td>请勾选</td>
  </tr>
  <%for(int i=0; i<allclass.getClasslist().length;i++)
	  {
	    if(isHave(stu.getClasslist(),allclass.getClasslist()[i])){ 
	    
	    %>
  <tr>
   <td class="t1"><%=allclass.getClasslist()[i] %></td> <td><%=allclass.getTeacherlist()[i] %></td><td><%=allclass.getCcorelist()[i] %></td><td><input type="checkbox" name="classbox" value="<%=allclass.getClasslist()[i] %>" /> </td>
  </tr>
   <%
	    }
	 }%>
	  <tr>
   <td class="t2"><input type="submit" value="删除"></td> 
  </tr>	
</table>
</form>
 
</body>
</html>