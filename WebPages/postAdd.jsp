<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "dao.*" %>
<%@ page import = "dto.*" %>
<%@ page import = "java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html lang="en">
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title>MADE 4 MAID</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
  
    <!--navbar effects-->
<style type="text/css">
  nav ul li a{
    color: white;
    text-decoration: none;
    font-size: 23px;
    display: block;
    padding: 6px 3px;
    overflow: hidden;
  }
    ul li .menu .f-word,ul li .menu .s-word{
      display: inline-block;
      position: relative;
      transition:  transform .3s;
    }
    ul li .menu .s-word{
      margin-left: -5px;
    }
    ul li .menu .f-word::before,
    ul li .menu .s-word::before{
      position: absolute;
      content: attr(data-hover);
    }
    ul li .menu .f-word::before{
      color: white;
      top:110%;
    }
    ul li .menu .s-word::before{
      color:white;
      bottom: 110%;

    }
    a:hover .f-word{
      transform: translate3d(0,-110%,0);
    }
     a:hover .s-word{
      transform: translate3d(0,110%,0);
    }
</style>

    <!--navbar effects over -->


  
  <script type="text/javascript">
            $(document).ready(function(){



		var catid=$("#subcat").val();

              
		var json_url="processtime.jsp?catid="+catid;

                $("#time").empty();
		
               
		jQuery.getJSON(json_url, function(data){

			jQuery.each(data, function(key, val){
				console.log(val[0]);
                                
                                for(var i = 0 ; i <val.length ; i++)
                                {    
                                	var obj = val[i];
                                console.log(obj.maidtme);
                                console.log(obj.maidtime);
                                
                                	  $("#time").append("<option value='" + obj.maidtime + "'>" + obj.maidtime + "</option>")
                                }
				});
		});
                
               
});
        </script>
  
  
  
  
  <script type="text/javascript">
            $(document).ready(function(){


		var catid=$("#subcat").val();

              
		var json_url="processJob.jsp?catid="+catid;

                $("#job").empty();
		
               
		jQuery.getJSON(json_url, function(data){

			jQuery.each(data, function(key, val){
				console.log(val[0]);
                                
                                for(var i = 0 ; i <val.length ; i++)
                                {    
                                	var obj = val[i];
                                console.log(obj.jobdesc);
                                console.log(obj.jobdesc);
                                
                                	  $("#job").append("<option value='" + obj.jobdesc + "'>" + obj.jobdesc + "</option>")
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
<!--************************************************NAVBAR*************************************************************** -->
<header>		
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top shadow p-3 mb-5 bg-dark"  >
		<div class="container">
  <!-- Brand/logo -->
  <a class="navbar-brand" href="#"><h5>MADE FOR MAID</h5>
  			</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    
    <span class="navbar-toggler-icon"></span>
  </button>
  
  <div class="collapse navbar-collapse" id="collapsibleNavbar">  
  
  <!-- Links -->
  <ul class="navbar-nav ml-auto" >

    <li class="nav-item ">
      <a class="nav-link " href="customer_home.jsp"><span class="menu">
        <span class="f-word" data-hover="HO">HO</span>
        <span class="s-word" data-hover="ME">ME</span>
      </span></a>
    </li>

    <li class="nav-item ">
      <a class="nav-link" href="searchReleventmaid.jsp"><span class="menu">
        <span class="f-word" data-hover="SEA">SEA</span>
        <span class="s-word" data-hover="RCH">RCH</span>
      </span>
      </a>
    </li>
    
     <li class="nav-item ">
      <a class="nav-link" href="RateYourMaid.jsp"><span class="menu">
        <span class="f-word" data-hover="RA">RA</span>
        <span class="s-word" data-hover="TE">TE</span>
      </span>
    </a>
    </li>

    <li class="nav-item ">
      <a class="nav-link" href="customer_connection.jsp"><span class="menu">
        <span class="f-word" data-hover="ACCEPTED">ACCEPTED</span>
        <span class="s-word" data-hover="REQ">REQ</span>
      </span>
    </a>
    </li>

    <li class="nav-item ">
      <a class="nav-link" href="get_mynonrepliedpost.jsp"><span class="menu">
        <span class="f-word" data-hover="NOTREPL">NOTREPL</span>
        <span class="s-word" data-hover="IEDPOST">IEDPOST</span>
</span>
      </a>
    </li>

    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">MODIFY</a>
      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="modify_cust_profile.jsp">PROFILE</a>
          <a class="dropdown-item" href="modify_cust_password.jsp">PASSWORD</a>
      </div>



    <li class="nav-item ">
      <a class="nav-link" href="delete_me_cust.jsp"><span class="menu">
        <span class="f-word" data-hover="DEL">DEL</span>
        <span class="s-word" data-hover="ETE">ETE</span>
      </span>
    </a>
    </li>

    <li class="nav-item ">
      <a class="nav-link" href="customer_logout.jsp"><span class="menu">
        <span class="f-word" data-hover="LOG">LOG</span>
        <span class="s-word" data-hover="OUT">OUT</span>
      </span>
    </a>
    </li>



  </ul>
</div>
</div>
</nav>

</header>
<!-- **********************************END OF NAVBAR *************************************************************** -->



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

<!--<h1>Welcome 
<%=(String)session.getAttribute("USERID")%> !!! </h1>-->

<%



String userid = (String)session.getAttribute("USERID");

String maidid=request.getParameter("id");
String categoryID=request.getParameter("categoryID");
String subcategoryID=request.getParameter("subcategoryID");
post_addDao pd = new post_addDao();
boolean b = pd.AlradyConnected(maidid, userid);
System.out.println(maidid);
System.out.println(userid);
if(b)
{
	response.sendRedirect("customer_home.jsp?cannotpost="+1);
}
else
{
%>

<div class="container text-center my-5 pt-5">
    <h1>POST ADD</h1>
    <hr class="w-25 text-center">
    
    <div class="form-group">
<form action ="post_addsDetail.jsp" method="post" >
    
<input type="hidden" value=<%=maidid %> name="maidid">

<div class="col-12">
<label>DESCRIPTION</label><input type = "text"  class="form-control"name = "desc">
</div><BR>

<input type="hidden" value=<%=Integer.parseInt(categoryID)%> id="cat" name = "categoryID" readonly>
<input type="hidden" value=<%=Integer.parseInt(subcategoryID)%> id="subcat" name="subcategoryID" readonly>

<div class="row">
    <div class="col-xl-4 col-md-4 col-12">
<label>SHIFTS</label>
<select id = "job" class="form-control" name = "job">
<option>select job</option>

</select>
    </div>

<%
cityDao c = new cityDao();

ArrayList<city> lst = new ArrayList<city>();
lst = c.getallcity();

%>


    <div class="col-xl-4 col-md-4 col-12">
<label>CITY</label>
<select id = "qcity"class="form-control" name = "city">
<option value="0">select city</option>

<%
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
    </div>
<div class="col-xl-4 col-md-4 col-12">
<label>COLONY</label>
<select id = "qsubcity" class="form-control" name = "sublocality">
<option value = "0">Enter Locality</option>


</select><br>
</div>
</div>
<div class="col-12">
<label> TIMMINGS</label>
<select id="time" class="form-control" multiple="multiple" name="time">
<option value="0">Select time</option>

</select>

</div>

<input type = "submit" class="btn btn-secondary m-3 w-50" value="postadd">

</form>
    </div>
</div>
</body>
</html>

<%
}
		}
%>