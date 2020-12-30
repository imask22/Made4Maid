
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "dao.maidDao" %>

<%
String id = request.getParameter("id");
maidDao m = new maidDao();

boolean ask = m.verify_maid1(id);
if(ask)
{
	response.sendRedirect("home_admin.jsp");
}
else
{
	out.println("<h1>unable to verify</h1>");
	%>
	<jsp:include page="home_admin.jsp"></jsp:include>
	<%
}






%>