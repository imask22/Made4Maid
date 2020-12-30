<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="dao.*"%>
<%@ page import="dto.*"%>
<%@ page import="java.util.*"%>

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
    <style>
        #data{
           margin-top: 130px;
        }
        </style>
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
<jsp:include page="customer_login.jsp"></jsp:include>

<%
		}
		else
		{	
%>

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


        <div class="container" id="data">
    <h1 class="text-center  ">APPERICIATE YOUR HELPERS!</h1>
 <hr class="text-center w-50 pb-3">
<%
String custID=(String)session.getAttribute("USERID");

post_addDao pd = new post_addDao();
ArrayList<String> lst = new ArrayList<>();
lst=pd.getparticularcustConnection(custID);
maidDao mao = new maidDao();
maid md = new maid();
for(String k :lst)
{
	md=mao.getmaidinfobyID(k);
	%>
        <div class="row">
            <div class="col-lg-6 col-md-6 col-12">
            
	<h3>MAID ID:<%=md.getId() %></h3>
	<h3>NAME:<%=md.getName() %></h3>
            </div>
            
            <div class="col-lg-6 col-md-6 col-12 text-right">
        <a href ="rateme.jsp?maidID=<%=md.getId()%>"><i class="fa fa-smile-o fa-3x " aria-hidden="true"></i>
</a>
            </div>
        </div>
            <hr>
	<%
}




		}

%>
        </div>
    </body>
</html>
