<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%
String id = (String)session.getAttribute("USERID");
String maidID=request.getParameter("maidID");
String postID = request.getParameter("postID");
%>
</head>
<body>
<form action = "processreportedcustomerincidents.jsp" method = "post">
Description:<input type = "text" name = "desc">
maidid<input type = "text" value=<%=maidID %> name = "maidID" readonly>
customerid:<input type = "text" value = <%=id%> name = "custID">
<input type = "hidden" value = <%=postID %> name = "postID">
<input type = "submit" value = "submit">
</form>
</body>
</html>