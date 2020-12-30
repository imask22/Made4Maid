<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="dao.*" %>
    <%@ page import="dto.*" %>
    
<%
String id = (String)session.getAttribute("USERID");
customer cust = new customer();
customerDao cd = new customerDao();
cust=cd.showParticularCustomer(id);
%>
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


   <div class="container my-5 pt-5 text-center">
             <h1 class="pt-5">MODIFY PROFILE</h1>
    <hr class="w-5 mx-auto pt-3">

    <div class="form-group">
         <form action="modify_cust.jsp" method = "post">
            
             <label><h5>ID</h5></label><input type="text"class="form-control" value=<%=cust.getId()%> name="id" readonly >
                                              
             <div class="row m-3">
                 <div class="col-6">
                     <label><h5>FIRST NAME</h5></label><input type = "text" class="form-control" value=<%=cust.getFirstName()%> name="fnm" onfocus="this.value=''" pattern="^[a-z A-Z]{2,10}$" required>
                 </div>
                <div class="col-6">
                    <label><h5>LAST NAME</h5></label><input type = "text" class="form-control" value=<%=cust.getLastName()%> name="lnm" onfocus="this.value=''"  pattern="^[a-z A-Z]{2,10}$" required>
                 </div>
             </div>
             
                  <div class="row m-3">
                 <div class="col-6">
                     <label><h5>PHONE</h5></label><input type="text" class="form-control" value=<%=cust.getMobileNumber()%> name="ph"  pattern="^[?(0|91]][6789][0-9]{9}$" title="Enter Valid Phone Number!!" onfocus="this.value=''" required>
                 </div>
                  <div class="col-6">
                      <label><h5>PASSWORD</h5></label><input type = "password" class="form-control" name = "password" onfocus=" this.value=''" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required="">
                  </div>
                  </div>
                     <input type = "submit" class=" btn btn-secondary w-50 p-2 m-3" value = "SUBMIT">

            </form>
         </div>
   </div>
    </body>
</html>
<%

%>