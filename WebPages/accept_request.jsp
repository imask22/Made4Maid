
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.*" %>
<%@page import="java.util.*" %>
<%@page import="dto.*" %>
<%
int post_id = Integer.parseInt(request.getParameter("post_id"));
System.out.println(post_id);
String maidid = request.getParameter("maidid");
System.out.println(maidid);
post_addDao pd = new post_addDao();

String custID=(String)session.getAttribute("USERID");
boolean b=pd.setStatusandVisiblity(post_id);
System.out.println(post_id);
if(b)
{
	boolean v = pd.requestMatch(post_id, maidid, custID);
	if(v)
	{
	out.print("<h1>maid request accepted thanks for using the service</h1>");
			%>
			<jsp:include page="customer_home.jsp"></jsp:include>
			<%
	}
	else
	{
		out.print("<h1>some issue occured</h1>");
		%>
		<jsp:include page="customer_login.jsp"></jsp:include>
		<%
	}
}
else
{
	response.sendRedirect("404.jsp");
}


%>