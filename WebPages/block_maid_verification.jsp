

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "dao.maidDao" %>
<%@ page import = "dao.MailDAO" %>


<%
String id = request.getParameter("id");
maidDao u = new maidDao();
boolean b = u.delverify_maid1(id);
boolean isMailSent = MailDAO.sendMail(id, "Sorry you cant be accepted as maid role","something not correct in your submitted details");
if(isMailSent)
{
	response.sendRedirect("home_admin.jsp");
}
else
{
	
	response.sendRedirect("404.jsp");
}

 %>