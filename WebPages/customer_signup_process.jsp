<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import = "dto.customer" %>
<%@page import = "dao.customerDao" %>

<% 
String id=request.getParameter("id");
String password=request.getParameter("password");
String firstName=request.getParameter("firstName");
String lastName=request.getParameter("lastName");
String phoneNumber=request.getParameter("phoneNumber");

customer obj = new customer(id,password,firstName,lastName,phoneNumber,false,false);

customerDao u = new customerDao();
boolean b = u.registerCustomer(obj);
if(b)
{
	out.println("<h1>congrats you have been successfully registered click to log in and verify</h1>");
%>
	
	<a href = "https://accounts.google.com/AccountChooser/signinchooser?service=mail&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&flowName=GlifWebSignIn&flowEntry=AccountChooser">gmail login</a><a href = "customer_login.jsp">login</a>
	<%
	
}
else
{
	
	out.println("<h1>error occured</h1>");
	%>
		
		
		<%
	
}




%>
