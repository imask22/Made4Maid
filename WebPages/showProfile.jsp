<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="dto.*" %>
    <%@ page import="dao.*" %>
    <%@ page import="java.util.*" %>
    
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
        #profile{
            
			box-sizing: border-box;
                        box-shadow: 0px 25px 36px 12px rgba(0,0,0,0.51); 
        }
        #image{
           float:right;
           transform: translateX(170px);
        }
    </style>


</head>



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

<div class="container  my-5 pt-5 " >
<!--<h1>Welcome <%= (String)session.getAttribute("USERID")%> !!! </h1>-->
<div class="p-3" id="profile">
<%
String id=request.getParameter("id");
System.out.println(id);
maidDao md = new maidDao();
maid m = new maid();
m=md.getmaidinfobyID(id);
maidcategoryDao mad = new maidcategoryDao();
subcategoryDao ask = new subcategoryDao();
cityDao ct = new cityDao();
subcityDao subct = new subcityDao();
ratingsDao rd = new ratingsDao();

int ratings=rd.getRatings(id);

%>

<div class="row">

<div class="col-lg-8 col-md-8 col-8">
     <h2><b>#PROFILE</b></h2>
    <img src = <%="images/"+m.getMaid_pic()%> height="30%" width="30%"  id="image">
   
<h3><b>Name:</b><%=m.getName() %></h3>

<h3><b>Category:</b><%=mad.getcatnmbycatid(m.getCategoryID()) %></h3>
<h3><b>Subcategory:</b><%=ask.getsubcatnmbycatid(m.getSubCategoryID()) %></h3>
<h3><b>City:</b><%=ct.getcityNamebyCityid(m.getQcity()) %></h3>
<h3><b>Locality:</b><%=ct.getsubcityNamebyCityidAndSubcityid(m.getQcity(), m.getQsubcity()) %></h3>
<h3><b>Current Rating :</b> <%=ratings %></h3>
<h3><b>Timmings:</b>
<%
ArrayList<time> lst = new ArrayList<>(); 
timeDao time = new timeDao();
lst=time.getTimeBySubcatId(m.getQsubcity());
if(lst!=null)
{
for(time t : lst)
{
	%>
	<h3><%=t.getMaidtime() %></h3>
	<%
}
}

%>
</h3>

<h4><a href="postAdd.jsp?id=<%=id%>&categoryID=<%=m.getCategoryID()%>&subcategoryID=<%=m.getSubCategoryID()%>">Post add to this Maid?</a>
</h4>
<%


		}
%>
</div>

</div>
</div>
</div>
</body>
</html>