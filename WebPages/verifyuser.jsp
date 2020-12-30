<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="dao.customerDao" %>
<%
String id =request.getParameter("custid");
customerDao u = new customerDao();
boolean b = u.verifyuser(id);
if(b)
{
	out.println("<h1>ty for verification</h1>");
			%>
			<jsp:include page="customer_login.jsp"></jsp:include>
			<% 
}
else
{
	out.println("<h1>some error occured in verification</h1>");
}

%>
