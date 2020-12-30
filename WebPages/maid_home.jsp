<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
     .rate{
         margin-left: 200px;
     }
     .card{
         background-color: pink;
     }
     </style>
</head>
<body>
    

<header>	
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top shadow p-3 mb-5 bg-dark">
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
<div class="container my-5">
    <h2 class="pt-5">
        <!--Welcome <%=(String)session.getAttribute("USERID")%> !!! </h2>-->
<!--<hr>-->
</div>
<div class="container">
<div class="row ">
    <div class="col-lg-8 col-md-8 col-8">
        <h1> "Lets Work Together"</h1>
        <hr>
        <div class="card">
            <h5 class="p-2"><i>"Our aim is to provide out utmost services to help the people required it"</i></h5>
        </div>
        <br>
        <h3>Guidelines to Follow-</h3>
        <hr>
        <h5>
            1. Everyone should ensure to have masks while working<br>
            2. Wash your hands Regularaly.<br>
            3. Properly sanitize work place.<br>
            4. Don't use abusive language.<br>
            5. Strict action will be taken if one found doing malpractices.<br>
        </h5>
    </div>
    <div class="col-lg-4 col-md-4 col-4">
        <div class="list-group">
  <a href="#" class="list-group-item list-group-item-action active">
   TOP HELPERS OF THE WEEK
  </a>
            <a href="#" class="list-group-item list-group-item-action"> Shanta</a>
  <a href="#" class="list-group-item list-group-item-action">Ramesh</a>
  <a href="#" class="list-group-item list-group-item-action">Laxmi</a>
  <a href="#" class="list-group-item list-group-item-action disabled">Gajraj</a>
  <a href="#" class="list-group-item list-group-item-action">Reeta</a>
  <a href="#" class="list-group-item list-group-item-action disabled">Suresh</a>
</div>
    </div>
    
    
</div>

</div>

</body>
</html>
<% //panel-----------------updateprofile-----------------------------------mail->(new requests)---queryadmin-----report incidents-------------

		}
%>