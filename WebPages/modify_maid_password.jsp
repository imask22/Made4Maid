<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

    <style>
        .form1{
            	box-sizing: border-box;
                       box-shadow: 0px 25px 36px 12px rgba(0,0,0,0.51); 
                       padding:25px;
                       border-radius: 30px;
        }
    </style>
        
</head>
<body>
    <!--********************************NAVBAR************************************************************************************-->
<header>	
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top  p-3 mb-5 bg-dark">
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
      <a class="nav-link " href="maid_home.jsp"><span class="menu">
        <span class="f-word" data-hover="Ho">Ho</span>
        <span class="s-word" data-hover="me">me</span>
      </span></a>
    </li>
    <li class="nav-item ">
      <a class="nav-link" href="maid_request.jsp"><span class="menu">
        <span class="f-word" data-hover="Requ">Requ</span>
        <span class="s-word" data-hover="ests">ests</span>
      </span>
      </a>
    </li>
    
     <li class="nav-item ">
      <a class="nav-link" href="modify_maid_password.jsp"><span class="menu">
        <span class="f-word" data-hover="Modify">Modify</span>
        <span class="s-word" data-hover="Pass">Pass</span>
      </span>
    </a>
    </li>
    <li class="nav-item ">
      <a class="nav-link" href="delete_maid_profile.jsp"><span class="menu">
        <span class="f-word" data-hover="Del">Del</span>
        <span class="s-word" data-hover="ete">ete</span>
      </span>
    </a>
    </li>
    <li class="nav-item ">
      <a class="nav-link" href="maid_logout.jsp"><span class="menu">
        <span class="f-word" data-hover="Log">Log</span>
        <span class="s-word" data-hover="out">out</span>
</span>
      </a>
    </li>
  </ul>
  
</div>
</div>
</nav>
</header>
<!--*****************************************************************************************************************************************-->


<div class="container pt-5 text-center"> 
    <h1 class="pt-5">CHANGE PASSWORD</h1>
    <hr class="w-50 mx-auto pt-3">
    <div class="form1">
<form action = "submit_modif_maid_pass.jsp" method="post">
    <div class="row pt-4">
        
        
        <div class="form-group col-xl-2 col-md-2col-12 ">
<!--            <label>OLD PASSWORD</label>
            <input type = "password"  class="form-control" name = "oldpass" required>
        --></div>
        
          <div class="form-group col-xl-8 col-md-8 col-12">  
              
            <label>OLD PASSWORD</label>
            <input type = "password"  class="form-control" name = "oldpass" required>
            <br>
            
            <label>NEW PASSWORD</label>
            <input type= "password"  class="form-control" name = "newpass" required>
            <br>
            <label>CONFIRM PASSWORD</label>
            <input type = "password"  class="form-control"  name = "renewpass"  required>
        
          </div>
        
         <div class="form-group col-xl-2 col-md-2 col-12">
<!--            <label>CONFIRM PASSWORD</label>
            <input type = "password"  class="form-control"  name = "renewpass"  required>-->
         </div>
   </div>
    <input type = "submit" value = "CHANGE" class="btn btn-secondary p-3 my-3 w-50">


</form>
    </div>
</div>
</body>
</html>