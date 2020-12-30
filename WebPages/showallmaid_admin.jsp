<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ page import="dao.maidDao" %>
<%@ page import="dto.maid" %>
<%@ page import="java.util.*" %>
<%@ page import="dao.subcategoryDao" %>
<%@ page import="dao.maidcategoryDao" %>




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
                        
                        
                        
                        
                    
			


<div class="container my-5 ml-auto text-center text-capatalize">
    
    
    <!--*********************************************WELCOME ADMIN*******************************************8-->
      
    <h1 class="pt-5">"ALL REGISTERED MAIDS" </h1>
    <hr class="w-50 mx-auto pt-3">

    <!--*******************************************TABLE***************************************************-->
    <table class="table text-center  table-hover">
        <thead class="thead-dark">
            <tr>
                <th scope="col" >ID</th>
                <th scope="col">BLOCKED</th>
                <th scope="col">PH NO.</th>
                <th scope="col">CAT</th>
                <th scope="col">SUB-CAT</th>
                <th scope="col">VERIFY MAIL</th> 
                <th scope="col">VERIFY</th>
                <th scope="col">CITY</th>
                <th scope="col">LOCALITY</th>
                <th scope="col">AADHAR</th>
                <th scope="col">MAID_PIC</th>
                <th scope="col">BILL_PIC</th>
            </tr>
        </thead>


        <tbody>
<%

maidDao u = new maidDao();
ArrayList<maid> lst = new ArrayList<maid>();
maidcategoryDao maid1 = new maidcategoryDao();
subcategoryDao sub = new subcategoryDao();
lst=u.showallmaid();
if(lst!=null)
{
	for(maid md : lst)
	{
		String cat = maid1.getcatnmbycatid(md.getCategoryID());
		String subcat = sub.getsubcatnmbycatid(md.getSubCategoryID());
		%>
		<tr>
		<td><%= md.getId() %></td>
		<td><%= md.getBlocked() %></td>
		<td><%= md.getPhone_no() %></td>
		<td><%= cat %></td>
		<td><%= subcat %></td>
		<td><%= md.isVerify() %></td>
		<td><%= md.isVerify_maid() %></td>
		<td><%= md.getQcity()%></td>
		<td><%= md.getQsubcity() %></td>
		
		<td><%= md.getAadhar() %></td>
		<td>
		<%
		String path = ".jpeg";
		String full = "img_not_verified/"+md.getId()+path;
		%>
		<img src = <%=full %> height = "100%" width = "100%"alt="NOT AVAILABLE"></img>
			
		</td>
		
		<td>	
		<%
		String path1 = ".jpeg";
		String full1 = "bill_pic/"+md.getId()+"bill"+path1;
		
		%>
		<img src = <%=full1 %> height = "100%" width = "100%" alt="NOT AVAILABLE"></img>
			
		</td>
		<%
	}
}


		}
%>
                </tr>
        </tbody>
    </table>
</div>
</body>
</html>