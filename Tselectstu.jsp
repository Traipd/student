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
    <% Student[] tsearchlist=(Student [])session.getAttribute("tsearchlist");//获取搜索学生信息%>
<title>学生课程管理</title>
</head>
<body>
<form action="search" method="post">
<table>
  <tr>
   <td ><input type="submit" value="搜索学号"></td> <td><input type="text" name="Tsearch"></td>
  </tr>
</table>
</form>
<form action="teacher" method="get">
<table>
  <tr>
   <td >学号</td> <td>姓名</td><td>密码</td><td>删除</td>
  </tr>
  <%
  if(tsearchlist!=null)
  {
	  for(int i=0; i<tsearchlist.length;i++)
 
	  {
	    %>
  <tr>
   <td class="t1"><input type="submit" name="sno" value="<%=tsearchlist[i].getSno() %>" /></td> <td><%=tsearchlist[i].getName() %></td><td><%=tsearchlist[i].getPassword() %></td>
  <td><input type="checkbox" name="stubox" value="<%=tsearchlist[i].getSno() %>" /></td>
  </tr>
   <%
	 }
  }
	 %>
	  <tr>
  </tr>	
   <tr>
   <td></td><td></td><td></td><td class="t2"><input type="submit" value="删除"></td> 
  </tr>	
</table>
</form>
</body>
</html>