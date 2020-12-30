<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "dao.*" %>
<%
String id = request.getParameter("id");
maidDao md = new maidDao();
boolean b = md.forgotPassword(id);
if(b)
{
	out.println("<h3>Your pass change success</h3>");
	%>
	<jsp:include page = "maid_login.jsp"></jsp:include>
	<%
}
else
	
{
	response.sendRedirect("404.jsp");
}

%>