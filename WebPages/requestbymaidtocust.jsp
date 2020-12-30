<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import = "dao.*" %>
<%

int post_id = Integer.parseInt(request.getParameter("postid"));
String maidid= (String)session.getAttribute("USERID");

post_addDao po = new post_addDao();
boolean b=po.sendRequesttoCustomer(post_id, maidid);

if(b)
{
	response.sendRedirect("request_success.jsp");
}
else
{
	response.sendRedirect("404.jsp");
}
	


%>