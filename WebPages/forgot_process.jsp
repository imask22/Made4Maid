<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.customerDao"   %>
<%
String id = request.getParameter("id");

customerDao u = new customerDao();
boolean b = u.checkID(id);

if(b)
{
	boolean ask = u.forgotPassword(id);
	if(ask)
	{
		out.println("<h1>your password changed sucessfull check your mail!!!!</h1>");
		%>
		<jsp:include page="customer_login.jsp"></jsp:include>
		<%
	}
	else
	{
		System.out.println("fatal error occured");
	}
}
else
{
	out.println("<h1>your id is incorrect</h1>");
	%>
	<jsp:include page="customer_login.jsp"></jsp:include>
	<%
}



%>