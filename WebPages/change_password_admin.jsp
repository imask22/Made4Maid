
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.adminDao" %>
<%


response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
response.setHeader("Pragma", "no-cache"); // HTTP 1.0
response.setDateHeader("Expires", 0); // Proxies.
%>
<%
		if(session.isNew() || session.getAttribute("USERID") == null)
		{
	out.print("<span style=color:red>"+"U need to login first !!! </span>");
%>
<jsp:include page="admin_login.jsp"></jsp:include>

<%
		}
		else
		{	
%>
<%







String oldpass=request.getParameter("oldpass");
String newpass=request.getParameter("newpass");
String newpassconfirm=request.getParameter("newpassconfirm");

String id=(String)session.getAttribute("USERID");

adminDao ad = new adminDao();
boolean b=ad.checkPassword(id, oldpass);
if(b)
{
	if(newpass.equals(newpassconfirm))
	{
	boolean ask=ad.changePassword(id,newpassconfirm);
	if(ask)
	{
		out.print("<h1>password change successful!!!!</h1>");
		%>
		<jsp:include page="home_admin.jsp"></jsp:include>
		<%
	}
	else
	{
		out.print("<h1>password cannot be changed due to internal error</h1>");
		%>
		<jsp:include page="changepass_admin.jsp"></jsp:include>
		<%
	}
	
	}
	else
	{
		out.print("<h1>new and confirm pass are diffrent</h1>");
		%>
		<jsp:include page="changepass_admin.jsp"></jsp:include>
		<%
	}
	
}
else
{
	out.print("<h1>old pass is diffrent</h1>");
	%>
	<jsp:include page="changepass_admin.jsp"></jsp:include>
	<%
	
}

		}
		%>


