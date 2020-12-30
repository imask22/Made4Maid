<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dao.*" %>
<%@ page import="dto.*" %>
<%@ page import="java.util.*" %>


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
<!--			<h1>Welcome 
<%=(String)session.getAttribute("USERID")%> !!! </h1>-->
			

<%

ArrayList<post_add> lst = new ArrayList<>();
post_addDao po = new post_addDao();
lst=po.getAdds();
maidcategoryDao md = new maidcategoryDao();
subcategoryDao mds = new subcategoryDao();
cityDao cd = new cityDao();
subcityDao sd = new subcityDao();

String maidid=(String)session.getAttribute("USERID");
if(lst!=null)
{
	for(post_add u:lst)
	{
		if(!po.checkPresenceMaid(u.getId(), maidid))
		{
			
%>

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
    /*body{background-image: linear-gradient(to top right,#04d6dd,#f606ff);*/

    /*}*/
    .card-body{
        /*background-color: #c60055;*/
        opacity: 0.7;
       color:black;
    }
    </style>
    
    </head>
    <body>
   
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
        <div class="container my-5 pt-5 text-center">
            
            <div class="row ">
                
                <div class="col-lg-12 col-mg-12 col-12">
                    <div class="card" ">
                        <div class="card-body text-left shadow-lg">
    
                    
                <h3><b>Customer Id: </b><%=u.getCustomerID() %></h3>
		<h3><b>Gender: </b><%=md.getcatnmbycatid(u.getCategoryID()) %></h3>
		<h3><b>Occupation: </b><%=mds.getsubcatnmbycatid(u.getSubcategoryID()) %></h3>
		<h3><b>Shift: </b><%=u.getJob() %></h3>
		<h3><b>City: </b><%=cd.getcityNamebyCityid(u.getCityID()) %></h3>
		<h3><b>Colony: </b><%=cd.getsubcityNamebyCityidAndSubcityid(u.getCityID(), u.getSubcityID()) %></h3>
		<h3><b>Timmings:  </b><%=u.getPrefferedtime() %></h3>
		<h3><b>Description: </b><%=u.getPostDesc() %></h3>
		<h3><b>Posted Date: </b><%=u.getPostedDate() %></h3>
                <a  class ="btn btn-danger" href="requestbymaidtocust.jsp?postid=<%=u.getId()%>"><h3>REQUEST ACCESS</h3></a>
		
                        </div>       
                    </div>
                </div>
             
            </div>
                <hr>
        </div>
    </body>
</html>
		

<%
		}
	}
}
		}
%>

