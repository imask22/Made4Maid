<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "dao.*" %>
<%
String oldpass = request.getParameter("oldpass");
String newpass = request.getParameter("newpass");
String renewpass = request.getParameter("renewpass");
String id=(String)session.getAttribute("USERID");
customerDao cust = new customerDao();
boolean checkpass=cust.logIn(id, oldpass);
if(checkpass)
{
	if(newpass.equals(renewpass))
	{
		boolean b=cust.modifySetPassword(id, newpass);
		if(b)
		{
			out.println("<h2>Password Change Success!!!</h2>");
			%>
			<jsp:include page="customer_home.jsp"></jsp:include>
			<%
		}
		else
		{
			out.println("<h2>internal method Error</h2>");
			%>
			<jsp:include page="customer_home.jsp"></jsp:include>
			<%
			
		}
		
	}
	else
	{
		out.println("new pass and re entered pass arnot same");
		%>
		<jsp:include page="customer_home.jsp"></jsp:include>
		<%
	}
}
else
{
	out.println("<h2>old password is incorrect</h2>");
	%>
	<jsp:include page="customer_home.jsp"></jsp:include>
	<%
}

%>