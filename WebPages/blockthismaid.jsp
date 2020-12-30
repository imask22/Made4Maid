
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "dao.*" %>
<%
String maidID = request.getParameter("maidID");
maidDao md = new maidDao();
boolean b = md.blockMaid(maidID);
if(b)
{
	out.println("maid block sucessful");
        System.out.println("maid block sucessful");
	%>
	<jsp:include page="reportedincidentsby_customer.jsp"></jsp:include>
	<%
}
%>