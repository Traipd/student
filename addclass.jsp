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
 <% Student s=(Student)session.getAttribute("student");//获取学生对象%>
 <%String[] cco=s.getCcorelist(); %>
  <%String[] sco=s.getScorelist(); %>
   <%String[] tea=s.getTeacherlist(); %>
    <%String[] cla=s.getClasslist(); %>
    <% Student allclass=(Student)session.getAttribute("allclass");//获取所有课程%>
 <%String[] acco=allclass.getCcorelist(); %>
   <%String[] atea=allclass.getTeacherlist(); %>
    <%String[] acla=allclass.getClasslist(); %>

<title>选择课程</title>
</head>
<body>
<form action="student" method="post">
<table>
 <caption>选择课程</caption>
  <tr>
   <td >课程</td> <td>教师</td><td>学分</td><td>请勾选</td>
  </tr>
  <%for(int i=0; i<acla.length;i++)
	  {
	    if(!isHave(cla,acla[i])){ 
	    
	    %>
  <tr>
   <td class="t1"><%=acla[i] %></td> <td><%=atea[i] %></td><td><%=acco[i] %></td><td><input type="checkbox" name="classbox" value="<%=acla[i] %>" /> </td>
  </tr>
   <%
	    }
	 }%>
	  <tr>
   <td class="t2"><input type="submit" value="确定"></td> 
  </tr>	
</table>
</form>
</body>
</html>