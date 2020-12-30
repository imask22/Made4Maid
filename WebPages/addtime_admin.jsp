
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "dao.*" %>
<%@ page import = "java.util.*" %>

<%
int subcategoryID=Integer.parseInt(request.getParameter("subcategoryID"));
String[] time=request.getParameterValues("newtime");


ArrayList<String>lst = new ArrayList<>();
for(String s:time)
{
	lst.add(s);
}

timeDao td = new timeDao();
boolean b=td.insertTimebySubcatid(lst, subcategoryID);
if(b)
{
	out.println("<h2>time added scessfully Category addition sucessfully created</h2>");
	%>
	
	<jsp:include page="home_admin.jsp"></jsp:include>
	<%
}
%>