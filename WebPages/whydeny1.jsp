<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "dao.*"%>
<%@ page import = "dto.*"%>
<%

String custID=request.getParameter("custID");
String maidid=request.getParameter("maidID");
int post_id = Integer.parseInt(request.getParameter("postID"));

%>
<html>
<head>
<title>
</title>
</head>
<body>
<form action = "okdenied.jsp" method="post">
postid:<input type ="text" value=<%=post_id %> name="post_id" readonly>
custid:<input type="text" value=<%=custID %> name="custid" readonly>
textDes:<input type = "text" name="deny_Desc">
<input type = "submit" value = "submit">
</form>
</body>

</html>