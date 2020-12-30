<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "dao.*"%>
<%@ page import = "dto.*"%>
<%
String desc=request.getParameter("desc");
String maidID=request.getParameter("maidID");
String custID=request.getParameter("custID");
int postID=Integer.parseInt(request.getParameter("postID"));

reportincidentsbycustomerDao rd = new reportincidentsbycustomerDao();
reportincidentsbycustomer c = new reportincidentsbycustomer();
c.setIncDesc(desc);
c.setMaidID(maidID);
c.setCustomerID(custID);
c.setPostID(postID);
boolean b = rd.addIncidentbycustomer(c);
if(b)
{
	response.sendRedirect("customer_home.jsp");
}
else
{
	response.sendRedirect("404.jsp");
}
%>