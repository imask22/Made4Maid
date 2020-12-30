<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "dao.maidDao" %>
    
    
<%
maidDao m = new maidDao();

String id = request.getParameter("id");

boolean ask = m.checkID(id);
if(ask)
{
	boolean b = m.forgotPassword(id);
	if(b)
	{
		out.print("<h1>changed successfully</h1>");
	}
}
else
{
	out.println("<h1>wrong id entered</h1>");
	%>
	<jsp:include page="maid_login.jsp"></jsp:include>
	<% 
}





%>    