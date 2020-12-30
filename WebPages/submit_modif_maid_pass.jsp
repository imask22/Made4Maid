<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "dao.*" %>
<%
String oldpass = request.getParameter("oldpass");
String newpass = request.getParameter("newpass");
String renewpass = request.getParameter("renewpass");
String id = (String)session.getAttribute("USERID");
maidDao md = new maidDao();
boolean checkold=md.checkIDPass(id, oldpass);
if(checkold)
{
	if(newpass.equals(renewpass))
	{
		boolean b = md.modifySetPassword(id, newpass);
		if(b)
		{
			out.println("<h2>Password Change Success!!!</h2>");
			%>
			<jsp:include page="maid_home.jsp"></jsp:include>
			<%
		}
		else
		{
			out.println("<h2>Internal method error</h2>");
			%>
			<jsp:include page="maid_home.jsp"></jsp:include>
			<%
		}
	}
	else
	{
		out.println("<h2>new and re entered doesnt match</h2>");
		%>
		<jsp:include page="maid_home.jsp"></jsp:include>
		<%
		
	}
}
else
{
	out.println("<h2>Incorrect old password</h2>");
	%>
	<jsp:include page="maid_home.jsp"></jsp:include>
	<%
}





%>