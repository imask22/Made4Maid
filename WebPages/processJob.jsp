<%@page import="com.google.gson.Gson"%>
    <%@page import = "dao.jobDao" %>
    <%@page import = "dto.job" %>
    <%@ page import = "java.util.*" %>
    <%@page contentType="application/json" %>
   

<%

int subcatid = Integer.parseInt(request.getParameter("catid"));



jobDao sub = new jobDao();

	ArrayList<job> lst = sub.getDescbySubcatId(subcatid);
	
	 Gson g = new Gson();
     
     HashMap<String,ArrayList<job>> hmap = new HashMap<String,ArrayList<job>>();
     
     hmap.put("job",lst);
     
     out.print(g.toJson(hmap));
	




%>