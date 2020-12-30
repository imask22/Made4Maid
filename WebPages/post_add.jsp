<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="dao.post_addDao" %>
<%@page import="dto.post_add" %>

<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
response.setHeader("Pragma", "no-cache"); // HTTP 1.0
response.setDateHeader("Expires", 0); // Proxies.
%>
<%
		if(session.isNew() || session.getAttribute("USERID") == null)
		{
	out.print("<span style=color:red>"+"U need to login first !!! </span>");
%>
<jsp:include page="customer_login.jsp"></jsp:include>

<%
		}
		else
		{	
%>





<%
String id=(String)session.getAttribute("USERID");
String desc=request.getParameter("desc");
int categoryid=Integer.parseInt(request.getParameter("categoryID"));
int subcategoryid=Integer.parseInt(request.getParameter("subCategoryID"));
String job = request.getParameter("job");
int city = Integer.parseInt(request.getParameter("city"));
int sublocality=Integer.parseInt(request.getParameter("sublocality"));

String[] time=request.getParameterValues("time");

System.out.println(categoryid+" : "+subcategoryid+" : "+city+" : "+sublocality);

String job1="";
String time1="";



for(String t :time)
{
	time1=time1+t;
	time1=time1+" : ";
}

post_add obj = new post_add();
obj.setCustomerID(id);
obj.setPostDesc(desc);
obj.setCategoryID(categoryid);
obj.setSubcategoryID(subcategoryid);
obj.setJob(job);
obj.setPrefferedtime(time1);
obj.setCityID(city);
obj.setSubcityID(sublocality);

post_addDao u = new post_addDao();
boolean b=u.addPost(obj);
if(b){
	out.println("<h1>add posted success</h1>");
	
	%>
	<jsp:include page="customer_home.jsp"></jsp:include>
	<%
	
}
else
{
	response.sendRedirect("404.jsp");
}











		}

%>

