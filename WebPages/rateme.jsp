<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "dao.*" %>
<%@ page import = "dto.*" %>
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
%>

<%
String maidID=request.getParameter("maidID");
String custID=(String)session.getAttribute("USERID");
ratingsDao rd = new ratingsDao();
post_addDao pd = new post_addDao();
boolean b=rd.chechAlreadyRated(maidID, custID);

if(b)
{
	out.print("<h2>You can update maid ratings!!!</h2>");
	ratings obj = new ratings();
	obj = rd.getCustMaidRating_Info(maidID, custID);
	%>
	<form action="placeReviewDetail.jsp" method="post">
	customerID:<input type = "text" value = <%=custID%> name="custID" readonly><br>
	maidID:<input type = "text" value = <%=maidID%> name ="maidID" readonly><br>
	rating = <input type = "text" value = <%=obj.getRating() %> name="rate">
	Review:<input type = "text" value = <%=obj.getReview() %> name = "review">
	<input type = "submit" value="submit">
	
	</form>
	<% 
	
}
else
{
	%>
	<form action="placeReviewDetail.jsp" method="post">
	customerID:<input type = "text" value = <%=custID%> name="custID" readonly><br>
	maidID:<input type = "text" value = <%=maidID%> name ="maidID" readonly><br>
	rating = <input type = "text" placeholder="Input Rating" name="rate">
	Review:<input type = "text" placeholder="Input Review" name = "review">
	<input type = "submit" value="submit">
	
	</form>
	
	
	<%
}
		}
%>