<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "dao.*"%>
<%@ page import = "dto.*"%>
<%@ page import = "java.util.*"%>

<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
  <!-- JavaScripts -->
  <script src="js/modernizr.js"></script>
<script type="text/javascript">
            $(document).ready(function(){


	


		var catid=$("#qcat").val();

              
		var json_url="processJson.jsp?catid="+catid;

                $("#subcat").empty();
		
               
		jQuery.getJSON(json_url, function(data){

			jQuery.each(data, function(key, val){
				console.log(val[0]);
                                
                                for(var i = 0 ; i <val.length ; i++)
                                {    
                                	var obj = val[i];
                                console.log(obj.id);
                                console.log(obj.subCategoryName);
                                
                                	  $("#subcat").append("<option value='" + obj.id + "'>" + obj.subCategoryName + "</option>")
                                }
				});
		});
                

});
        </script>
        
        
        
        
<script type="text/javascript">
            $(document).ready(function(){


	$("#qcity").change(function(){


		var catid=$(this).find(':selected').val();

              
		var json_url="processJsoncity.jsp?catid="+catid;

                $("#qsubcity").empty();
		
               
		jQuery.getJSON(json_url, function(data){

			jQuery.each(data, function(key, val){
				console.log(val[0]);
                                
                                for(var i = 0 ; i <val.length ; i++)
                                {    
                                	var obj = val[i];
                                console.log(obj.id);
                                console.log(obj.locality);
                                
                                	  $("#qsubcity").append("<option value='" + obj.id + "'>" + obj.locality + "</option>")
                                }
				});
		});
                
            });        
});
        </script>
        
        
        
        
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
			<jsp:include page="maid_login.jsp"></jsp:include>
		
		<%	
			
			
		}
		else
		{
			%>
			<h1>Welcome 
<%=(String)session.getAttribute("USERID")%> !!! </h1>
			





<%
String maidid = (String)session.getAttribute("USERID");
maid m = new maid();
maidDao md = new maidDao();
m=md.getmaidinfobyID(maidid);
subcategoryDao sd = new subcategoryDao();
%>
<form method = "post" action = "modify_updatemaid.jsp">

id:<input type = "text" value=<%=m.getId()%> name = "id" readonly><br>
<input type = "hidden" value=<%=m.getCategoryID() %> id = "qcat" name="categoryID">
SubcategoryID:<%=sd.getsubcatnmbycatid(m.getSubCategoryID()) %>
<input type = "hidden" value=<%=m.getSubCategoryID() %> name="oldsubcategoryID">
want newsubcat?<br>
<select id="subcat" name="subcategoryID">
</select>
<br>
<input type="text" value=<%=m.getPhone_no()%> name="phone_no">
<br>
modify name:
<input type="text" value=<%=m.getName()%> name ="name">
<%
cityDao c = new cityDao();


%>
<input type="hidden" value=<%=m.getQcity() %> name="oldqcity">
<select id = "qcity" name = "city">

<option value="0">select city</option>
<%


ArrayList<city> lst = new ArrayList<city>();
lst = c.getallcity();
if(lst!=null)
{
	for(city ask:lst)
	{
		%>
		<option value = <%=ask.getId()%>><%=ask.getName()%></option>
		<%
		System.out.println(ask.getId());
	}
}

%>
</select>

<input type="hidden" value=<%=m.getQsubcity() %> name = "oldSubCityID">
Enter locality:
<select id = "qsubcity" name = "newSubCityID">
<option value = "0">Enter Locality</option>


</select><br>
<br>

<input type="submit" value="applychange" >

</form>

<%



%>
</body>
</html>

<%
		}
%>