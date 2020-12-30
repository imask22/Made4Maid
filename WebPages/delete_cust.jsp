<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "dao.*" %>
<%
String pass = request.getParameter("pass");
String id = (String)session.getAttribute("USERID");

customerDao cust = new customerDao();
boolean b= cust.logIn(id, pass);
if(b)
{
	boolean del=cust.DeleteCustomer(id);
	if(del)
	{
		out.println("<h1>sucessfull Deleted profile</h1>");
		%>
		<jsp:include page="index.jsp"></jsp:include>
		<%
	}
	else
	{
		out.println("<h1>internal method error</h1>");
		%>
		<jsp:include page="customer_home.jsp"></jsp:include>
		<%
	}
}
else
{
	out.println("<h1>Password is incorrect</h1>");
	%>
	<jsp:include page="customer_home.jsp"></jsp:include>
	<%
}

%>