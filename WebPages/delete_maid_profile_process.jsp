<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "dao.*" %>
<%
String pass= request.getParameter("pass");
String id = (String)session.getAttribute("USERID");
 
maidDao md = new maidDao();

boolean pass1=md.checkIDPass(id, pass);
if(pass1)
{
	boolean b = md.DeleteMaid(id);
	if(b)
	{
		out.println("<h2>ID Deleted Sucessfully</h2>");
		%>
		
		<jsp:include page="index.jsp"></jsp:include>
		<%
	}
	else
	{
		out.println("<h2>Some internal method error</h2>");
		%>
		
		<jsp:include page="maid_home.jsp"></jsp:include>
		<%
	}
}
else
{
	out.println("<h2>Incorrect password entered!!!</h2>");
	%>
	
	<jsp:include page="maid_home.jsp"></jsp:include>
	<%
}





%>