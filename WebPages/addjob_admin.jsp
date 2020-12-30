

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "dao.*" %>
<%
    System.out.println(request.getParameter("subCategoryID"));
System.out.println(request.getParameter("job1"));
int subcategoryID= Integer.parseInt(request.getParameter("subCategoryID"));
String job = request.getParameter("job1");



jobDao jb = new jobDao();
boolean b= jb.addJobs(subcategoryID, job);
if(b)
{
	out.println("job added success now please add time");
	%>
	<jsp:include page="add_jobs_timming.jsp"></jsp:include>
	<%
}
else
{
	response.sendRedirect("404.jsp");
}



%>