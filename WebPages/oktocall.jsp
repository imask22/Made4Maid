<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="dao.*" %>
<%@ page import = "dto.*" %>
<%
String custID=request.getParameter("custID");
String maidID=request.getParameter("maidID");
int postID = Integer.parseInt(request.getParameter("postID"));
post_addDao pd = new post_addDao();
boolean b = pd.oktocall(custID, maidID,postID);
if(b)
{
	out.print(" Process Completed wait for customer call !!!");
	%>
	<jsp:include page="maid_home.jsp"></jsp:include>
	<%
}



%>