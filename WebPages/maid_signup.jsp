<%@page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="dao.maidcategoryDao" %>
      <%@page import="dto.maidcategory" %>
      <%@page import="java.util.*"  %>
      <%@page import="dao.*"  %>
      <%@page import="dto.*"  %>
      
      

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
  <!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <!-- JavaScripts -->
  <script src="js/modernizr.js"></script>
 
  <style>
      .form1{
   box-sizing: border-box;
                       box-shadow: 0px 25px 36px 12px rgba(0,0,0,0.51); 
                       padding:25px;
                       border-radius: 30px;
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

    <!--navbar effects over -->
 
    <style>
          

* {box-sizing: border-box;}

/* Style the input container */
.input-container {
  display: flex;
  width: 100%;
  margin-bottom: 15px;
}

/* Style the form icons */
.icon {
  padding: 10px;
  background: black;
  color: white;
  min-width: 50px;
  text-align: center;
}

/* Style the input fields */
.input-field {
  width: 100%;
  padding: 10px;
  outline: none;
}

.input-field:focus {
  border: 2px solid dodgerblue;
}


        </style>
 <script type="text/javascript">
            $(document).ready(function(){

// detect change of dropdown
	$("#qcat").change(function(){


		var catid=$(this).find(':selected').val();

              
		var json_url="processJson.jsp?catid="+catid;

                $("#subcat").empty();
		
               
		jQuery.getJSON(json_url, function(data){

			// put new dropdown values to players dropdown
			jQuery.each(data, function(key, val){
				console.log(val[0]);
                                
                                for(var i = 0 ; i <val.length ; i++)
                                {    
                                	var obj = val[i];
                                console.log(obj.id);
                                console.log(obj.subCategoryName);
                                
                                	  $("#subcat").append("<option value='" + obj.id + "'>" + obj.subCategoryName + "</option>")
                                }
				});
		});
                
            });        
});
        </script>
        <script type="text/javascript">
            $(document).ready(function(){


	$("#qcity").change(function(){


		var catid=$(this).find(':selected').val();

              
		var json_url="processJsoncity.jsp?catid="+catid;

                $("#qsubcity").empty();
		
               
		jQuery.getJSON(json_url, function(data){

			jQuery.each(data, function(key, val){
				console.log(val[0]);
                                
                                for(var i = 0 ; i <val.length ; i++)
                                {    
                                	var obj = val[i];
                                console.log(obj.id);
                                console.log(obj.locality);
                                
                                	  $("#qsubcity").append("<option value='" + obj.id + "'>" + obj.locality + "</option>")
                                }
				});
		});
                
            });        
});
        </script>
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


<section>
 <div class="container-md container-lg container-xl  text-center pt-5">
      <form action = "register_maid.jsp" method="post" enctype="multipart/form-data">
            <div class="container pt-5">
             <h3 class="text-center text-capatalize pt-3">SIGN UP</h3>
            <hr class="w-25 mx-auto pt-5">
        </div>
        <div class ="form1">
        <div class="form-row">
            <div class="form-group col-md-6 ">
                <label for="fstname">NAME</label>
                 <div class="input-container">
                <i class="fa fa-user icon" aria-hidden="true"></i>

                <input type="text" name="name" class="form-control" id="fstname">
            </div>
            </div>
            <div class="form-group col-md-6 ">
                <label for="cn">CONTACT NO</label>
                 <div class="input-container">
                <i class="fa fa-phone icon" aria-hidden="true"></i>

                <input type="text" name = "phone_no" class="form-control" id="cn" aria-describedby="emailHelp">
            </div>
            </div>
        </div>

        
        <div class="form-row">
          <div class="form-group  col-md-6">
                <label for="eml">EMAIL ADDRESS</label>
                <div class="input-container">
                               <i class="fa fa-envelope icon"></i>
                <input type="email"  name = "id" class="form-control" id="eml" aria-describedby="emailHelp" autocomplete="off">
            </div>
          </div>
            <div class="form-group col-md-6">
                <label for="pass">PASSWORD</label>
                <div class="input-container">
                    
                               <i class="fa fa-key icon"></i>
                <input type="password"  name = "password" class="form-control" id="pass">
            </div>
            </div>
        </div>
        
        <div class="form-row">
            <div class="form-group col-md-4">
                    <label for="gen">GENDER</label>
                     <select id="qcat" class="questions-category form-control" name="categoryID">
<option value = "0">Select Category</option>

<%

ArrayList<maidcategory> obj = new ArrayList<maidcategory>();

maidcategoryDao u = new maidcategoryDao();

obj = u.getCatID();


if(obj!=null)
	{
	for(maidcategory o : obj)
	{
	%>
	<option value = "<%=o.getId()%>"><%=o.getCategoryName() %></option>
	<% 
	
	}
	
	}

%>
                    
        </select>
       </div>
        

            <div class="form-group col-md-4">
                    <label for="adhno">ADHAAR NO</label>
                    <input type="text" class="form-control" name = "aadhar" id="adho">

            </div>
            <div class="form-group col-md-4">
                    <label for="job">REQUIRED JOB</label>
                    <select class="form-control"  id="subcat" class="questions-category form-control" name="subCategoryID">
                    <option>Select SubCategory</option>
                  <%
                    cityDao c = new cityDao();

					ArrayList<city> lst = new ArrayList<city>();
					lst = c.getallcity();
					
				%>
                        </select>
                        
                        

            </div>
        </div> 

        <div class="form-row">
            <div class="form-group col-md-6">
                    <label for="city">CITY</label>
                    <select class="form-control" id = "qcity" name = "qcity">
<option value="0">select city</option>

                
<%
if(lst!=null)
{
	for(city ask:lst)
	{
		%>
		<option value = <%=ask.getId()%>><%=ask.getName()%></option>
		<%
		System.out.println(ask.getId());
	}
}

%>
                    </select>
            </div>
                    
                    
                    
              <div class="form-group col-md-6">
                    <label for="colony">COLONY</label>
                    <select class="form-control"id = "qsubcity" name = "qsubcity">
                       <option value = "0">Enter Locality</option>
                       
                        
                        </select>
            </div>
                    
                    
                    
                    <div class="form-group col-md-6">
                    <label >SELECT ELECTRICITY BILL</label>
                    <input type = "file" class="form-control" name = "bill_pic"  accept = "image/*">
                    </div>
                    <div class="form-group col-md-6">
                        <label>   SELECT PROFILE PIC</label>
                    <input type = "file" class="form-control" name = "maid_pic"  accept = "image/*">
                    </div>
        </div>
                    
          <button type="submit" class="btn btn-secondary">REGISTER</button>
         
          
          
         </form>
    
                     <div class="form-group pt-3 text-center">
            <label for="login"></label>
            <a  class="btn btn-light " href="maid_login.jsp" >WANT TO LOGIN!!</a>
          </div>
 </div>
 </div>                </section>


</body>
</html>