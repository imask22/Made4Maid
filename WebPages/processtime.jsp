<%@page import="com.google.gson.Gson"%>
    <%@page import = "dao.timeDao" %>
    <%@page import = "dto.time" %>
    <%@ page import = "dao.subcategoryDao" %>
    <%@ page import = "dto.maidsubcategory" %>
    <%@ page import = "java.util.*" %>
    <%@page contentType="application/json" %>
   

<%

int catid = Integer.parseInt(request.getParameter("catid"));



timeDao sub = new timeDao();

	ArrayList<time> lst = sub.getTimeBySubcatId(catid);
	
	 Gson g = new Gson();
     
     HashMap<String,ArrayList<time>> hmap = new HashMap<String,ArrayList<time>>();
     
     hmap.put("time",lst);
     
     out.print(g.toJson(hmap));
	




%>