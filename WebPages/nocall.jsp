<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dao.*"%>
<%@ page import="dto.*"%>
<%
String custID=request.getParameter("custID");
String maidID=request.getParameter("maidID");
String postID=request.getParameter("postID");

post_addDao pd = new post_addDao();
pd.nocall(custID, maidID);
response.sendRedirect("whydeny1.jsp?custID="+custID+"&maidID="+maidID+"&postID="+postID);





%>