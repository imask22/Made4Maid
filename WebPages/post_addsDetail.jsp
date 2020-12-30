<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dao.*"%>
<%@ page import="dto.*"%>
<%@ page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html lang="en">
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>MADE FOR MAID</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>

</head>
<body>
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

<h1>Welcome <%=(String)session.getAttribute("USERID")%> !!! </h1>
<div class="alert alert-warning my-5" role="alert">
<%


post_add pd = new post_add();
String maidid= request.getParameter("maidid");
String id=(String)session.getAttribute("USERID");
String desc=request.getParameter("desc");
int categoryid=Integer.parseInt(request.getParameter("categoryID"));
int subcategoryid=Integer.parseInt(request.getParameter("subcategoryID"));
String job = request.getParameter("job");
int city = Integer.parseInt(request.getParameter("city"));
int sublocality=Integer.parseInt(request.getParameter("sublocality"));

String[] time=request.getParameterValues("time");

System.out.println(categoryid+" : "+subcategoryid+" : "+city+" : "+sublocality);

String job1="";
String time1="";



for(String t : time)
{
	time1=time1+t;
	time1=time1+" : ";
}

pd.setCustomerID(id);
pd.setPostDesc(desc);
pd.setCategoryID(categoryid);
pd.setSubcategoryID(subcategoryid);
pd.setJob(job);
pd.setPrefferedtime(time1);
pd.setCityID(city);
pd.setSubcityID(sublocality);
post_addDao pao = new post_addDao();
boolean b = pao.addPostDirecttoMaid(maidid,pd,(String)session.getAttribute("USERID"));
if(b){
	

	out.println("Add posted sucess");
        
        
%>
</div>
	<jsp:include page="customer_home.jsp"></jsp:include>
<%	

}


}
%>

</body>
</html>