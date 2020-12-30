  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import = "dao.*" %>
<%@page import = "dto.*" %>
<%@page import = "java.util.*" %>
<%@page import = "java.sql.Timestamp" %>




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

<!--<h1>Welcome 
<%=(String)session.getAttribute("USERID")%> !!! </h1>-->

				<!--<a href="home_contents_admin.jsp">Show contents</a>-->
 <% 
		//going to add the count
		//import countdto(for array list)
		//import countdao
	      countdao cd = new countdao();
		  countdto cdto = new countdto();
		  ArrayList<countdto> maids = new ArrayList<>();
		  ArrayList<countdto> customers = new ArrayList<>();
		  maids=cd.getcount("maid");
		  customers=cd.getcount("customer");
		  //counttotal maid and customer till date
		  int countcust=0,countmaid=0;
		  if(maids!=null)
		  {
			  for(countdto ask:maids)
			  {
				  countmaid++;
			  }
		  }
		  //countmaid now have overall maids
		  if(customers!=null)
		  {
			  for(countdto ask:customers)
			  {
				  countcust++;
			   }
		  
		  }
		//countcust now have overall customers
		
		
		//now we will go for monthly maid and customer
		int monthlycust=0,monthlymaid=0;
		Date d1 = new Date();
		Timestamp ts=new Timestamp(System.currentTimeMillis());  
        Date d2=new Date(ts.getTime());  
		//Date d2 = new Date();
		if(customers!=null)
		  {
			  for(countdto ask:customers)
			  {
				  d1=ask.getDate();
				  if(d1.getMonth()==d2.getMonth())
				  {
					  monthlycust++;
				  }
				  
			  }
		  
		  }
		//monthlycust have manthly reg cust
		if(maids!=null)
		  {
			  for(countdto ask:maids)
			  {
				  d1=ask.getDate();
				  if(d1.getMonth()==d2.getMonth())
				  {
					  monthlymaid++;
				  }
				  
			  }
		  
		  }
		  //monthly maid has monthly registerd maids
		  //please get overall count by adding both the stuff -_-
			%>
			
<!--                        <div class="container my-5">
			<h1>total customer<%=countcust %></h1>
			<h1>total maid <%=countmaid %></h1>
			<h1>monthly customer<%=monthlycust %></h1>
			<h1>monthly maid <%=monthlymaid %></h1>
                        </div>-->
			
		

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
        #sidenav{
            background-color: blue;
        }
    </style>
    
<script>
window.onload = function () {

//Better to construct options first and then pass it as a parameter
var options = {
	title: {
		text: ""              
	},
	data: [              
	{
		// Change type to "doughnut", "line", "splineArea", etc.
		type: "column",
		dataPoints: [
			{ label: "Monthly Customer ",  y: <%=monthlycust %>  },
			{ label: "Total Customer", y: <%=countcust %>  },
			{ label: "Monthly Maid", y:  <%=monthlymaid %> },
			{ label: "Total Maid",  y: <%=countmaid %>  }
		]
	}
	]
};

$("#chartContainer").CanvasJSChart(options);
}
</script>

	<% 
		
		

		}

%>
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
    <body>
  
<div class="container-fluid my-5">
    <div class="row">
        <div class=" col-md-1 col-xl-1 col-1 my-5" > 
        </div>
        <div class=" col-md-10 col-xl-10 col-10 my-5">
            <h1>DASHBOARD</h1>
            <hr>
            
<div id="chartContainer" style="height: 500px; width: 100%;"></div>
<script type="text/javascript" src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>
        </div>
        <div class=" col-md-1 col-xl-1 col-1 my-5" > 
        </div>
    </div>
</div>
    
    
    
    </body>    
</html>