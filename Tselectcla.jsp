<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="cn.edu.dao.obj.Student" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="CSS/view.css"/>
<%! public static boolean isHave(String[] strs,String s){ 
	for(int i=0;i<strs.length;i++){ 
	  if(strs[i].equals(s)){
	    return true;//查找到了就返回真，不在继续查询 
	   } 
	 } 
	return false;}  %>
 <% Student t=(Student)session.getAttribute("teacher");//已在Classlist中存入所有学生学号%>

    <% Student allclass=(Student)session.getAttribute("allclass");//获取所有课程%>
    <% Student tsclist=(Student)session.getAttribute("tsearchclasslist");//获取搜索课程信息%>
<title>学生课程管理</title>
</head>
<body>
<form action="search" method="get">
<table>
  <tr>
   <td ><input type="submit" value="搜索课程"></td> <td><input type="text" name="Tsclass"></td>
  </tr>
</table>
</form>
<form action="class" method="post">
<table>
  <tr>
   <td >课程</td> <td>教师</td><td>学分</td><td>勾选</td>
  </tr>
  <%
  if(tsclist!=null)
  {
	  for(int i=0; i<tsclist.getClasslist().length;i++)
 
	  {
	    %>
  <tr>
   <td><%=tsclist.getClasslist()[i] %></td> <td><%=tsclist.getTeacherlist()[i] %></td><td><%=tsclist.getCcorelist()[i] %></td><td><input type="checkbox" name="classbox" value="<%=tsclist.getClasslist()[i] %>" /></td>
  </tr>
   <%
	    
	 }
  }
	 %>
	  <tr>
  </tr>	
    <tr>
   <td class="t2"><input type="submit" value="删除"></td> 
  </tr>	
</table>
</form>
</body>
</html>