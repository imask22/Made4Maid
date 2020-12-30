
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.adminDao"%>
<%@ page import = "dto.admin"%>

<%

String id = request.getParameter("id");

adminDao ad = new adminDao();
admin obj = new admin();

boolean ask = ad.verifyID(id);//(id);
if(ask)
{
	boolean b= ad.forgotPassword(id);
	if(b)
	{
		out.println("<h1>check your mail!!!!</h1>");
		%>
		<jsp:include page="admin_login.jsp"></jsp:include>
		<%
	}
	else
	{
		out.println("error occured");
	}
	
}
else
{
	out.println("<h1>wrong id entered</h1>");
	%>
	<jsp:include page="admin_forgot_password.jsp"></jsp:include>
	<% 
	
}





%>
