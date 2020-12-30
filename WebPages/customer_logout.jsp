<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		if(session.isNew() || session.getAttribute("USERID") == null)
		{
			out.print("<span style=color:red>"+"U need to login first !!! </span>");
			%>
			<jsp:include page="customer_login.jsp" />
			<% 

		}
		else
		{
			session.setAttribute("USERID", null);
			session.invalidate();
			//response.sendRedirect("customer_login.jsp");
			%>
	<span style=color:green>Successfully logged out !!! </span>");
		
<jsp:include page="customer_login.jsp"></jsp:include>			

<%			
		}
%>
</body>
</html>


</body>
</html>