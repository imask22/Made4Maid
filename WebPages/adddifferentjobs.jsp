
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 

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
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>-->
  <!-- JavaScripts -->
  
  <script src="modernizr.js"></script>
    
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
    <!--DATA-->

    <div class="container my-5 pt-5 text-center">
    <h1 class="pt-5">"ADD NEW JOBS"</h1>
    <hr class="w-25 mx-auto pt-3">
    
			
    <div class="container pt-3 my-3 text-center">
  
       <form action="addjob_admin.jsp" method = "post">
           <div class="row">
               <div class="form-group col-lg-4 col-mg-4 col-12 pt-3">
                  <label>GENDER</label>
                  <select  class="form-control" id = "qcat" name = "categoryID">
                    <option value="1">Male</option>
                    <option value="2">Female</option>
                    <option value="3">Couple</option>
                  </select>
                </div>
                <div class=" form-group col-lg-4 col-mg-4 col-12 pt-3">
                     <label>SUB-CATEGORY</label>
                    <select  class="form-control" id = "subcat" name = "subCategoryID">
                        <option>select subcat</option>
                    </select>
                </div>
               
                <div class=" form-group col-lg-4 col-mg-4 col-12 pt-3">
                     <label>JOB LIST</label>
                     
                    <select  class="form-control" id="job" name = "job" >
                    </select>
                </div>
           </div>
            
           <div class="row">
            <div class=" form-group col-lg-12 col-mg-12 col-12 pt-3">
                <label>ADD NEW JOB </label>:
                <input class="form-control" type = "text" name = "job1" required>
            </div>
           </div>
                <input class="btn btn-secondary p-3 w-50" type = "submit" value = "SUBMIT">
       
                
               </form>
    </div>
</body>
</html>

