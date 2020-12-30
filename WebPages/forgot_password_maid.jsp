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
<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
      <a class="nav-link " href="index.jsp"><span class="menu">
        <span class="f-word" data-hover="Ho">Ho</span>
        <span class="s-word" data-hover="me">me</span>
      </span></a>
    </li>
    <li class="nav-item ">
      <a class="nav-link" href="index.jsp#about"><span class="menu">
        <span class="f-word" data-hover="About">About</span>
        <span class="s-word" data-hover="Us">Us</span>
      </span>
      </a>
    </li>
    
     <li class="nav-item ">
      <a class="nav-link" href="index.jsp#contact"><span class="menu">
        <span class="f-word" data-hover="Contact">Contact</span>
        <span class="s-word" data-hover="Us">Us</span>
      </span>
    </a>
    </li>
    <li class="nav-item ">
      <a class="nav-link" href="maid_login.jsp"><span class="menu">
        <span class="f-word" data-hover="Ma">Ma</span>
        <span class="s-word" data-hover="id">id</span>
      </span>
    </a>
    </li>
    <li class="nav-item ">
      <a class="nav-link" href="customer_login.jsp"><span class="menu">
        <span class="f-word" data-hover="Cust">Cust</span>
        <span class="s-word" data-hover="omer">omer</span>
</span>
      </a>
    </li>
    <li class="nav-item ">
      <a class="nav-link" href="admin_login.jsp"><span class="menu">
        <span class="f-word" data-hover="Ad">Ad</span>
        <span class="s-word" data-hover="min">min</span>
      </span>
    </a>
    </li>
  </ul>
</div>
</div>
</nav>

</header>
<!-- **********************************END OF NAVBAR *************************************************************** -->
 <div class="container my-5 pt-5 text-center">
        <h1>FORGOT PASSWORD</h1>
        <hr class="w-50 text-center">
        
        <div class="form1 form-group pt-5">

<form action="maid_pass_forgot_process.jsp" method="post">
    <label><h4>EMAIL ID</h4></label>
<input type = "text" class="form-control" name = "id" placeholder="" autocomplete="off">
<br>
<input type = "submit" class="btn btn-secondary w-50" value="SUBMIT">
</form>
</div>
    </div>
</body>
</html>