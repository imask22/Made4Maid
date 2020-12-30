

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
			//out.print("<span style=color:red>"+"U need to login first !!! </span>");
			
			response.sendRedirect("admin_login.jsp");

		}
		else
		{
			session.setAttribute("USERID", null);
			session.invalidate();
			//response.sendRedirect("customer_login.jsp");
			%>
                        
                        <div class="container-fluid my-5">          
                                <div class="alert alert-warning alert-dismissible fade show p-4 " role="alert">
                               Successfully logged out !!!
                              </div>
                           </div>
	<!--<span style=color:green>Successfully logged out !!! </span>");-->
		
<jsp:include page="admin_login.jsp"></jsp:include>			

<%			
		}
%>

</body>
</html>