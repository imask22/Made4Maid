<%@page import="com.google.gson.Gson"%>
    <%@page import = "dao.cityDao" %>
    <%@page import = "dto.city" %>
    <%@ page import = "dao.subcityDao" %>
    <%@ page import = "dto.subcity" %>
    <%@ page import = "java.util.*" %>
    <%@page contentType="application/json" %>
   

<%

int catid = Integer.parseInt(request.getParameter("catid"));



subcityDao sub = new subcityDao();

	ArrayList<subcity> lst = sub.getsubcitybycityid(catid);
	for(subcity ask:lst)
	{
		System.out.println(ask.id+" : "+ask.locality+" : "+ask.cityid);
	}
	
	 Gson g = new Gson();
     
     HashMap<String,ArrayList<subcity>> hmap = new HashMap<String,ArrayList<subcity>>();
     
     hmap.put("subcity",lst);
     
     out.print(g.toJson(hmap));
	




%>