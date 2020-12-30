<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.util.*" %>
<%@page import = "java.io.*" %>
<%@page import = "dao.uploadDao" %>
<%@page import = "java.sql.*" %>
<%@page import = "dto.maidimg" %>
<% 
 
uploadDao u = new uploadDao();

ArrayList<maidimg> pqr = new ArrayList<maidimg>();
pqr = u.show_allimg();

for(maidimg lst  : pqr)
{

	
	String ask = lst.getId()+".jpeg";
			
	File image = new File("C:\\Users\\asus\\Desktop\\ask's stuff\\maid\\made4maid\\WebContent\\images\\"+ask);
	 FileOutputStream fos = new FileOutputStream(image);
	 byte[] buffer = new byte[1];
	 InputStream is = lst.getPic().getBinaryStream();
	 while (is.read(buffer) > 0) {
	        fos.write(buffer);
	      }
	      fos.close();
}
%>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
response.setHeader("Pragma", "no-cache"); // HTTP 1.0
response.setDateHeader("Expires", 0); // Proxies.
%>
<%
		if(session.isNew() || session.getAttribute("USERID") == null)
		{
	out.print("<span style=color:red>"+"U need to login first !!! </span>");
	response.sendRedirect("customer_login.jsp");
%>
<!--<jsp:include page="customer_login.jsp"></jsp:include>-->
<%
		}
		else
		{	
%>

<%=(String)session.getAttribute("USERID")%> !!! </h1>

<a href="customer_logout.jsp">LOGOUT</a>
<%
		}

response.sendRedirect("customer_home.jsp");
%>
 