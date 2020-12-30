<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dao.maidDao" %>
    <%@ page import="dto.maid" %>
    <%@ page import = "java.util.*" %>
    <%@ page import="dao.cityDao" %>
    <%@page import="dao.*" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
  <!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

#myUL {
  list-style-type: none;
  padding: 0;
  margin: 0;
}

#myUL li a {
  border: 1px solid #ddd;
  margin-top: -1px; /* Prevent double borders */
  background-color: #f6f6f6;
  padding: 12px;
  text-decoration: none;
  font-size: 18px;
  color: black;
  display: block
}

#myUL li a:hover:not(.header) {
  background-color: #eee;
}
</style>

 
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

<script>
function myFunction() {
    var input, filter, ul, li, a, k, txtValue;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    ul = document.getElementById("myUL");
    li = ul.getElementsByTagName("li");
    for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByTagName("a")[0];
        txtValue = a.textContent || a.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
        } else {
            li[i].style.display = "none";
        }
        
//       searchess!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            
    }
}
</script>

<style>
    input[type=text] {
  width: 230px;
  height:80px;
  -webkit-transition: width 0.4s ease-in-out;
  transition: width 0.4s ease-in-out;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

/* When the input field gets focus, change its width to 100% */
input[type=text]:focus {
  width: 100%;
}
    
 

    </style>
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
<!--
<h1>Welcome 
 !!! </h1>-->

<div class="container my-5 ">
    <h1 class="pt-5 text-center ">Welcome <%=(String)session.getAttribute("USERID")%> !!</h1>
</div>
<div class="container my-5 bg-light pb-3">

  <h3 class="text-center pt-3 ">MY MAIDS</h3>
  <hr class="w-25 mx-auto pt-3">
  
  
 <div class="input-container">
    <!--<i class="fa fa-search fa-4x" aria-hidden="true"></i>-->
    <input type="text" class="input-field my-2" name="search" id="myInput" onkeyup="myFunction()" placeholder="SEARCH FOR MAIDS.." title="Type in a name">
 </div>
  <div class="container">
<ul id="myUL">
    <%
maidDao mdo = new maidDao();
ArrayList<maid> lst = new ArrayList<>();
maidcategoryDao ob = new maidcategoryDao();
subcategoryDao ob1 = new subcategoryDao();
lst=mdo.getShowmaid();
cityDao c = new cityDao();

if(lst!=null)
{
	for(maid k : lst)
	{
		%>
					<li><a href="showProfile.jsp?id=<%=k.getId()%>"><%=k.getName()%>  <%=ob.getcatnmbycatid(k.getCategoryID())%>   <%=ob1.getsubcatnmbycatid(k.getSubCategoryID())%>    <%=c.getcityNamebyCityid(k.getQcity())%>    <%=c.getsubcityNamebyCityidAndSubcityid(k.getQcity(), k.getQsubcity())%> </a></li>	
		<% 
	}
}
		
%>
  

  </ul>
  </div>
<h4>
    <a href="hire_maid.jsp" class="m-3 my-2">If no relevent maid found try posting your add.....</a>
</h4>
</div>
</section>
</body>

</html>


<%
		}
%>