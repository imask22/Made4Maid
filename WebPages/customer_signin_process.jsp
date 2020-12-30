<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "dto.customer" %>
    <%@page import = "dao.customerDao" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MADE 4 MAID</title>
</head>
<body>
<%

customerDao u = new customerDao();

String id = request.getParameter("id");
String password = request.getParameter("password");

boolean b = u.checkID(id);
System.out.println("b="+b);

if(b)
{
  boolean t = u.logIn(id, password);
  System.out.println("t="+t);
  if(t)
  {
	  session.setAttribute("USERID", id);
	  response.sendRedirect("customer_home.jsp");
  }
  else
  {
	  out.println("wrong password");
	  //to be  included
	  response.sendRedirect("customer_login.jsp?err="+1);
	  %>
	  
	  <%
	 
  }
  
}
else
{
	response.sendRedirect("customer_signup.jsp?err="+0);
	
	 
}



%>

</body>
</html>