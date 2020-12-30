

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import = "dao.adminDao"%>
<%@page import = "dto.admin"%>
    
    
<%
String id = request.getParameter("id");
String password = request.getParameter("password");

adminDao u = new adminDao();

admin obj = new admin();

obj.setId(id);
obj.setPassword(password);
boolean ask = u.login(obj);
if(ask)
{
	session.setAttribute("USERID", id);
	response.sendRedirect("home_admin.jsp");
}
else
{
	out.println("<h1>your pass or id is incorrect</h1>");
	%>
	<jsp:include page="admin_login.jsp"></jsp:include>
	<%
	
}

%>