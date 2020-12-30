
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "dao.*" %>
<%
String custID = request.getParameter("custID");
customerDao md = new customerDao();
boolean b = md.blockCustomer(custID);
if(b)
{
	out.println("customer block sucessful");
	%>
	<jsp:include page="reportedincidentsby_maid.jsp"></jsp:include>
	<%
}
%>