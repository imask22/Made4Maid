
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

pqr = u.show_allbillimgnotverify();

for(maidimg lst  : pqr)
{

	
	String ask = lst.getId()+"bill"+".jpeg";
			
	File image = new File("C:\\\\Users\\\\asus\\\\Desktop\\\\interview_projects\\\\made4maid\\\\WebContent\\\\bill_pic\\\\"+ask);
	 FileOutputStream fos = new FileOutputStream(image);
	 byte[] buffer = new byte[1];
	 InputStream is = lst.getPic().getBinaryStream();
	 while (is.read(buffer) > 0) {
	        fos.write(buffer);
	      }
	      fos.close();
}
response.sendRedirect("home_admin.jsp");

%>