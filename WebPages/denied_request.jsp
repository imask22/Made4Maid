<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.*" %>
<%@page import="dto.*" %>

<%
int post_id=Integer.parseInt(request.getParameter("post_id"));

String maidid=request.getParameter("maidid");



%>
<html>
<head>
<title></title>
</head>
<body>

<form action ="request_deny_process.jsp" method="post">
postid:<input type ="text" value=<%=post_id %> name="post_id" readonly>
maidid:<input type="text" value=<%=maidid %> name="maidid" readonly>
textDes:<input type = "text" name="deny_Desc">
<input type = "submit" value = "submit">

</form>
</body>
</html>