<%@page import="com.google.gson.Gson"%>
    <%@page import = "dao.maidcategoryDao" %>
    <%@page import = "dto.maidcategory" %>
    <%@ page import = "dao.subcategoryDao" %>
    <%@ page import = "dto.maidsubcategory" %>
    <%@ page import = "java.util.*" %>
    <%@page contentType="application/json" %>
   

<%

int catid = Integer.parseInt(request.getParameter("catid"));



subcategoryDao sub = new subcategoryDao();

	ArrayList<maidsubcategory> lst = sub.getsubCatbyCatID(catid);
	
	 Gson g = new Gson();
     
     HashMap<String,ArrayList<maidsubcategory>> hmap = new HashMap<String,ArrayList<maidsubcategory>>();
     
     hmap.put("subcat",lst);
     
     out.print(g.toJson(hmap));
	




%>