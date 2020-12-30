
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "dao.*" %>
    
<%
subcategoryDao md = new subcategoryDao();

int catid = Integer.parseInt(request.getParameter("categoryID"));
String subcategory=request.getParameter("subcategory");

boolean b=md.addSubcategory(subcategory, catid);
if(b)
{   
               out.println("<h1>sucessfull added the subcategory now please add jobs</h1>");
                System.out.println("<h1>sucessfull added the subcategory now please add jobs</h1>");
	%>
	<jsp:include page="adddifferentjobs.jsp"></jsp:include>
	<%
}

%>