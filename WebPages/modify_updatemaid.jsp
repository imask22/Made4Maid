<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "dao.*" %>
<%@page import = "dto.*" %>

<%
String maidID=request.getParameter("id");
int categoryID=Integer.parseInt(request.getParameter("categoryID"));
int oldsubcategoryID=Integer.parseInt(request.getParameter("oldsubcategoryID"));
int newsubcategoryID=Integer.parseInt(request.getParameter("subcategoryID"));
int newcity=Integer.parseInt(request.getParameter("city"));
int oldcity=Integer.parseInt(request.getParameter("oldqcity"));
int oldsubcityid=Integer.parseInt(request.getParameter("oldSubCityID"));
int newsubcityid=Integer.parseInt(request.getParameter("newSubCityID"));
String name=request.getParameter("name");
String phone_no=request.getParameter("phone_no");
maid md = new maid();
md.setId(maidID);
md.setName(name);
md.setPhone_no(phone_no);
md.setCategoryID(categoryID);
if(newsubcategoryID!=0)
{
	md.setSubCategoryID(newsubcategoryID);
}
else
{
	md.setSubCategoryID(oldsubcategoryID);
}
if(newcity!=0)
{
	md.setQcity(newcity);
}
else
{
	md.setQcity(oldcity);
}
if(newsubcityid!=0)
{
	md.setQsubcity(newsubcityid);
}
else
{
	md.setQsubcity(oldsubcityid);
}
maidDao mad = new maidDao();
boolean b = mad.modify_maidProfile(md);
if(b)
{
	out.println("<h1>changes made successful!!!</h1>");
	%>
	<jsp:include page="maid_home.jsp"></jsp:include>
	<%
}
else
{
	response.sendRedirect("404.jsp");
}


	


%>