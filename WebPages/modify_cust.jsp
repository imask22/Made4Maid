<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "dao.*"%>
<%@ page import = "dto.*"%>
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


String id = request.getParameter("id");
String password = request.getParameter("password");
customerDao cd = new customerDao();
customer cust = new customer();
boolean b = cd.checkPassword(id, password);
if(b)
{
	cust.setId(request.getParameter("id"));
	cust.setFirstName(request.getParameter("fnm"));
	cust.setLastName(request.getParameter("lnm"));
	cust.setMobileNumber(request.getParameter("ph"));
	
	boolean c=cd.modifyProfile(cust);
	if(c)
	{
		out.println("profile has been updated");
		%>
		<jsp:include page="modify_cust_profile.jsp"></jsp:include>
		<%
	}
	else
	{
		response.sendRedirect("404.jsp");
	}
	
}
else
{
	out.println("profile has been updated");
	%>
	<jsp:include page="modify_cust_profile.jsp"></jsp:include>
	<%
}



		}
%>