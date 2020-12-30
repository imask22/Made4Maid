<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "dao.*"%>
<%@ page import = "dto.*"%>
<%
int post_id = Integer.parseInt(request.getParameter("post_id"));
String Desc = request.getParameter("deny_Desc");
String maidid = request.getParameter("maidid");

whydenyDao wd = new whydenyDao();
boolean b = wd.add_DenyReason(post_id, Desc, maidid,"");

if(b)
{
	out.print("<h1>maid request denied sorry for inconvinence</h1>");
			%>
			<jsp:include page="customer_login.jsp"></jsp:include>
			<%
}
else
{
	response.sendRedirect("404.jsp");
}



%>