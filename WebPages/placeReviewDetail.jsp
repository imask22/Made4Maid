<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "dao.*" %>
    <%@page import = "dto.*" %>
<%
String custID=request.getParameter("custID");
String maidID=request.getParameter("maidID");
String review = request.getParameter("review");
int rate = Integer.parseInt(request.getParameter("rate"));
ratingsDao rao = new ratingsDao();
ratings rd = new ratings();
rd.setCustID(custID);
rd.setMaidID(maidID);
rd.setReview(review);
rd.setRating(rate);

if(rate>5)
{
	out.print("<h1>rate only out of 5</h1>");
	%>
	<jsp:include page="RateYourMaid.jsp"></jsp:include>
	<%
}
else
{

ratingsDao rad = new ratingsDao();
boolean b=rad.chechAlreadyRated(maidID, custID);
if(b)
{
	rad.SetRatings(rd);
	out.print("<h1>maid rated Success!!!</h1>");
	%>
	<jsp:include page="customer_home.jsp"></jsp:include>>
	<%
}
else
{
	rad.InsertRating(rd);
	out.print("<h1>maid rated Success!!!</h1>");
	%>
	<jsp:include page="customer_home.jsp"></jsp:include>
	<%
}




}
%>