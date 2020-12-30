<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.maidcategoryDao" %>
<%@ page import = "dao.subcategoryDao" %>
<%@ page import = "java.util.*" %>
<%@ page import = "dao.cityDao" %>

<%@ page import = "dto.maidcategory" %>
<%@ page import = "dto.city" %>





<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
   <html lang="en">
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
  <!-- JavaScripts -->
  <script src="js/modernizr.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
  
 
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



  <!--time-->
  
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


	$("#subcat").change(function(){


		var catid=$(this).find(':selected').val();

              
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
  <a class="navbar-brand" href="#">MADE FOR MAID
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



   <div class="container my-5 pt-5 text-center ">

    <div class="container my-5 text-center">
             <h1 class="text-center text-capatalize">POST AN ADD</h1>
            <hr class="w-25 mx-auto pt-2">
    </div>
    <h5>
<form action = post_add.jsp method = "get">
<div class="row">
    
    <div class="form-group col-lg-4 col-mg-4 col-12 pt-3 ">
        <label>GENDER</label>
        <select id = "qcat" name = "categoryID" class="form-control">
            <%

                ArrayList<maidcategory> obj = new ArrayList<maidcategory>();
                
                maidcategoryDao u = new maidcategoryDao();

                obj = u.getCatID();


                if(obj!=null)
                {
                    for(maidcategory o : obj)
                {
                %>
	<option value = "<%=o.getId()%>"><%=o.getCategoryName() %></option>
	<% 
	
	}
	
	}

%>
</select>
    </div>

 <div class="form-group col-lg-4 col-mg-4 col-12 pt-3 ">
     <label>JOBS</label>
<select id = "subcat" name = "subCategoryID" class="form-control">
<option>select subcat</option>





</select>
 </div>
 <div class="form-group col-lg-4 col-mg-4 col-12 pt-3 ">
     <label>SHIFTS</label>
     <select id = "job" name = "job" class="form-control">
<option>select job</option>




</select><br>
 </div>
</div>


<div class="row">
     <div class="form-group col-lg-4 col-mg-4 col-12 pt-3 ">
<%
cityDao c = new cityDao();

ArrayList<city> lst = new ArrayList<city>();
lst = c.getallcity();

%>


<label>CITY</label>
<select id = "qcity" name = "city" class="form-control">
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

 <div class="form-group col-lg-4 col-mg-4 col-12 pt-3 ">
     <label>LOCALITY</label>
<select id = "qsubcity" name = "sublocality" class="form-control">
<option value = "0">Enter Locality</option>


</select>
 </div>
 
<div class="form-group col-lg-4 col-mg-4 col-12 pt-3 ">
     <label>TIME</label>
     <select class="form-control" id="time"  name="time">
<option value="0">Select time</option>

</select>
 </div>
</div>


<div class="row">

  
    <div class="form-group col-lg-12 col-mg-12 col-12 pt-3 ">
    <label for="desc">DESCRIPTION</label>
    <textarea class="form-control" type = "text" name = "desc" rows="3"></textarea> 

</div>
</div>
<input type = "submit" class="btn btn-secondary text-center my-3" value="postadd">

</form>
</div>
                </h5>
</body>
</html>