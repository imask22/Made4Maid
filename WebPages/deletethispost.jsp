<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "dao.*" %>
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
<jsp:include page="customer_login.jsp"></jsp:include>

<%
		}
		else
		{	
%>

<h1>Welcome 
<%=(String)session.getAttribute("USERID")%> !!! </h1>
<%
String postID=request.getParameter("postID");
post_addDao pd= new post_addDao();
boolean b=pd.Delete_post_byCustomer((String)session.getAttribute("USERID"), postID);
if(b)
{
	out.println("postDeletion success");
	%>
	<jsp:include page = "customer_home.jsp"></jsp:include>
	<%
}
else
{
	response.sendRedirect("404.jsp");
}
		}

%>