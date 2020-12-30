<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "dao.maidDao"%>
<html>
<head>
<style>
h1
	{
	color:red;
	align:centre;
	}
	</style>
</head>

<%

maidDao u = new maidDao();
String id = request.getParameter("id");
String password1 = request.getParameter("password1");

boolean b = u.checkID(id);  
System.out.println(id);
System.out.println(password1);
if(b)
{
	boolean ask = u.checkIDPass(id, password1);
	if(ask)
	{
            
		session.setAttribute("USERID", id);
		response.sendRedirect("maid_home.jsp");
	}
	else
	{
		out.print("<h1>wrong password</h1>");
		
		%>
		<a href="maid_forgot_password.jsp"></a>
                
		<jsp:include page="maid_login.jsp"></jsp:include>
                
		<%
	}
}
else
{
	
	out.print("<h1>You need to Signup First</h1>");
	
	%>
	
            
	<jsp:include page="maid_signup.jsp"></jsp:include>
            
	<%
	
	
}






%>
</html>