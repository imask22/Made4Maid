<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.*"%>
<%@page import="dto.*"%>
<%
int post_id=Integer.parseInt(request.getParameter("post_id"));
String custID=request.getParameter("custid");
String deny_Desc=request.getParameter("deny_Desc");

whydenyDao wd  = new whydenyDao();
boolean b=wd.add_DenyReason(post_id, deny_Desc, "", custID);
if(b)
{
	post_addDao pd = new post_addDao ();
	pd.changeRejectedStatus(post_id);
	response.sendRedirect("maid_home.jsp");
}
else
{
	response.sendRedirect("404.jsp");
}
	






%>
