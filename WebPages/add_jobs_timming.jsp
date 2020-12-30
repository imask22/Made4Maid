
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "dao.*" %>
<%@page import = "dto.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    
    <html lang="en">
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>MADE FOR MAID</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
  <!-- JavaScripts -->
  <script src="js/modernizr.js"></script>
  
  <!--time-->



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
			<jsp:include page="admin_login.jsp"></jsp:include>
		
		<%	
			
			
		}
		else
		{
			%>
			


  
  
  
  
  <script type="text/javascript">
            $(document).ready(function(){


	$("#subcat").change(function(){


		var catid=$(this).find(':selected').val();

              
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
});
        </script>
        
        
        <script type="text/javascript">
            $(document).ready(function(){

             
	$("#qcat").change(function(){


		var catid=$(this).find(':selected').val();

              
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
});
        </script>

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
</head>
<body>
    


   <!-- *********************NAVBAR******************************* -->
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top shadow p-3 mb-5 bg-dark"  >
            <div class="container">
  <a class="navbar-brand" href="#">MADE FOR MAID</a>
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">

    <span class="navbar-toggler-icon"></span>
  </button>
  
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
  
    <ul class="navbar-nav ml-auto">
    
    <li class="nav-item ">  
      <a class="nav-link " href="home_admin.jsp">
     <span class="menu">
        <span class="f-word" data-hover="Ho">Ho</span>
        <span class="s-word" data-hover="me">me</span>
      </span></a>
    </li>
    
    <li class="nav-item dropdown">
     <a class="nav-link dropdown-toggle" href=""id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
     <span class="menu">
        <span class="f-word" data-hover="Mai">Mai</span>
        <span class="s-word" data-hover="ds">ds</span>
      </span></a>
      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
      <a class="dropdown-item" href="showallmaid_admin.jsp">ALL MAIDS</a>
      <a class="dropdown-item" href="home_contents_admin.jsp">NEWLY REGISTERED</a>
      
      <a class="dropdown-item" href="knowacceptedandconfirnmedstatus.jsp">ACCEPTED MAIDS</a>
         </div>
    </li>
    
    <li class="nav-item ">
      <a class="nav-link" href="showallcustomer_admin.jsp"> <span class="menu">
        <span class="f-word" data-hover="Cust">Cust</span>
        <span class="s-word" data-hover="omers">omers</span>
      </span></a>
    </li>

     <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href=""id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
       <span class="menu">
           <span class="f-word" data-hover="Req">Req</span>
        <span class="s-word" data-hover="Deny">Deny</span>
      </span>
      </a>
      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="hasDenybyCustomerstatus.jsp">CUSTOMERS</a>
          <a class="dropdown-item" href="hasDenybyMaidstatus.jsp">MAIDS</a>
      </div>
    </li>

    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <span class="menu">
        <span class="f-word" data-hover="Inci">Inci</span>
        <span class="s-word" data-hover="dents">dents</span>
      </span></a>
      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="reportedincidentsby_customer.jsp">CUSTOMERS</a>
          <a class="dropdown-item" href="reportedincidentsby_maid.jsp">MAIDS</a>
      </div>
    </li>
      

     <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href=""id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
       <span class="menu">
        <span class="f-word" data-hover="Add">Add</span>
        <span class="s-word" data-hover="Data">Data</span>
      </span>
      </a>
      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="add_jobs_timming.jsp">TIMMINGS</a>
          <a class="dropdown-item" href="adddifferentjobs.jsp">JOBS</a>
          <a class="dropdown-item" href="addmaidcategoryofdifferentbackgrounds.jsp">SUB-CATEGORY</a>
      </div>
    </li>

    
    <li class="nav-item ">
        <a class="nav-link" href="changepass_admin.jsp">
                   <span class="menu">
        <span class="f-word" data-hover="Modify">Modify</span>
        <span class="s-word" data-hover="Pass">Pass</span>
      </span>
            
        </a>
    </li>
     <li class="nav-item ">
      <a class="nav-link" href="admin_logout.jsp
      ">       
          <span class="menu">
        <span class="f-word" data-hover="Log">Log</span>
        <span class="s-word" data-hover="out">out</span>
      </span>
      </a>
    </li>
    </ul>
  </div>
            </div>  
</nav>
   
   
<!--    *************************************************  END OF NAVBAR *****************************************************************-->
    <!--form-->
<div class = "container my-5 text-center mb-5">			
      
    <h1 class="pt-5">"ADD NEW TIMMINGS"</h1>
    <hr class="w-25 mx-auto pt-3">
    
        
<form action="addtime_admin.jsp" method = "post">
     <div class="row">
         <div class="col-12 col-sm-4 col-xl-4  pt-3">
         <label>GENDER</label>
         <select id="qcat" name = "categoryID" class="form-control">
            <option value = "1">Male</option>
            <option value = "2">Female</option>
            <option value= "3">Couple</option>
        </select>     
         </div>

            
         <div class="col-12 col-sm-4 col-xl-4 pt-3">
             <label>SUB-CATEGORY</label>
            <select id="subcat" name="subcategoryID" class="form-control">
            </select>
         </div>
         
          <div class="col-12 col-sm-4 col-xl-4 pt-3">
              <label>CURRENT-TIME LIST</label>
              <select id="time" name = "time"  class="form-control">
            </select>
          </div>
     </div>
   
    <div class="row">

<div class="col-12 col-sm-12 col-xl-12 pt-5">
    <label>ADD NEW TIME-SLOT</label>
<select name="newtime" class="form-control" multiple>
<option value = "07:00AM - 08:00AM">07:00AM - 08:00AM</option>
<option value = "08:00AM - 09:00AM">08:00AM - 09:00AM</option>
<option value = "09:00AM - 10:00AM">09:00AM - 10:00AM</option>
<option value = "10:00AM - 11:00AM">10:00AM - 11:00AM</option>
<option value = "11:00AM - 12:00PM">11:00AM - 12:00PM</option>
<option value = "12:00PM - 01:00PM">12:00PM - 01:00PM</option>
<option value = "01:00PM - 02:00PM">01:00PM - 02:00PM</option>
<option value = "02:00PM - 03:00PM">02:00PM - 03:00PM</option>
<option value = "03:00PM - 04:00PM">03:00PM - 04:00PM</option>
<option value = "04:00PM - 05:00PM">04:00PM - 05:00PM</option>
<option value = "05:00PM - 06:00PM">05:00PM - 06:00PM</option>
<option value = "06:00PM - 07:00PM">06:00PM - 07:00PM</option>
<option value = "07:00PM - 08:00PM">07:00PM - 08:00PM</option>
<option value = "08:00PM - 09:00PM">08:00PM - 09:00PM</option>
<option value = "09:00PM - 10:00PM">09:00PM - 10:00PM</option>
<option value = "10:00PM - 11:00PM">10:00PM - 11:00PM</option>
<option value = "11:00PM - 12:00PM">11:00PM - 12:00PM</option>
<option value = "12:00AM - 01:00AM">12:00AM - 01:00AM</option>
<option value = "01:00AM - 02:00AM">01:00AM - 02:00AM</option>
<option value = "02:00AM - 03:00AM">02:00AM - 03:00AM</option>
<option value = "03:00AM - 04:00AM">03:00AM - 04:00AM</option>
<option value = "04:00AM - 05:00AM">04:00AM - 05:00AM</option>
<option value = "05:00AM - 06:00AM">05:00AM - 06:00AM</option>
<option value = "06:00AM - 07:00AM">06:00AM - 07:00AM</option>
</select>
</div>
    </div>
    <br><input type = "submit" value = "SUBMT" class="btn btn-secondary p-2 text-capatalize text-center w-50">
</form>

</body>
</html>
<%
}
%>