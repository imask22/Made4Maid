<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MADE FOR MAID</title>
</head>
<body>
<%
		if(session.isNew() || session.getAttribute("USERID") == null)
		{
			out.print("<span style=color:red>"+"U need to login first !!! </span>");
			
			response.sendRedirect("maid_login.jsp");

		}
		else
		{
			session.setAttribute("USERID", null);
			session.invalidate();
			//response.sendRedirect("customer_login.jsp");
			%>
	
<div class="alert alert-success my-5 pt-5" role="alert">
<span style=color:green>Successfully logged out !!! </span>
</div>		
<jsp:include page="maid_login.jsp"></jsp:include>			

<%			
		}
%>
</body>
</html>


</body>
</html>