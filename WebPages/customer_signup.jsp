<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<script type="text/javascript">
	
	<%
	if(request.getParameterMap().containsKey("err"))
	{
	int err = Integer.parseInt(request.getParameter("err"));
		if(err==0)
		{
			%>
			alert("You need to signup First!");
			<%
		}
		
	}
	
	%>
	</script>
   <!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

   <style type="text/css">
  	
  	#loginform{
  		transform: translateY(+20);
  	}
  	 #nv{
  	margin-top: 20px;
  opacity:0.8;
}
.form1{
   box-sizing: border-box;
                       box-shadow: 0px 25px 36px 12px rgba(0,0,0,0.51); 
                       padding:25px;
                       border-radius: 30px;
}
  </style>
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
        .form1{
            
			box-sizing: border-box;
                       box-shadow: 0px 25px 36px 12px rgba(0,0,0,0.51); 
                       padding:25px;
                       border-radius: 30px;
        }
     
        .right,.left{
            width:100%;
            box-sizing: border-box;
            padding: 1.7em 1.5em 2.5em 1.5em; 
        }
         #login{
          border-radius: 25px;
          width:75%;
      }
      #login:hover{
          transform: translateY(-6px);
          /*background-color:red;*/
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
      
    <form action = "customer_signup_process.jsp" method = "post">
    
    
    
            <div class="container pt-5">
           
             <h1 class="text-center text-capatalize pt-5">SIGN UP</h1>
           
            <hr class="w-25 mx-auto pt-5">
       
        
     <div  class="form1">
        
        <div class="form-row">
        
            <div class="form-group pl-5 pr-5 col-md-6">
            
                <label for="fstname">FIRST NAME</label>
                 <div class="input-container">
                <i class="fa fa-user icon" aria-hidden="true"></i>
                <input type="text" class="form-control" id="fstname" name="firstName">
                 </div>
                 
            </div>
            
	            <div class="form-group pl-5 pr-5 col-md-6">
	                
	                <label for="lstname">LAST NAME</label>
	                 <div class="input-container">
		                <i class="fa fa-user icon" aria-hidden="true"></i>
		                <input type="text" class="form-control" id="lstname" name="lastName">
	                 </div>
	            </div>
        </div>
        
        <div class="form-row">
          <div class="form-group  pl-5 pr-5 col-md-6">
            <label for="eml">EMAIL ADDRESS</label>
             <div class="input-container">
                <i class="fa fa-envelope icon" aria-hidden="true"></i>
           <input type="email" class="form-control" id="eml" aria-describedby="emailHelp" autocomplete="off" name="id"       >
             </div>
        </div>

          <div class="form-group pl-5 pr-5 col-md-6">
            <label for="cn">CONTACT NO</label> 
            <div class="input-container">
                <i class="fa fa-phone icon" aria-hidden="true"></i>
            <input type="text" class="form-control" id="cn" aria-describedby="emailHelp" name="phoneNumber">
            </div>
        </div>
    </div>
        <div class="form-row">
            <div class="form-group pl-5 pr-5 col-md-6">
                    <label for="pass">PASSWORD</label>
                     <div class="input-container">
                <i class="fa fa-key icon" aria-hidden="true"></i>
                    <input type="password" class="form-control" id="pass" name="password"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
            </div>
            </div>
            <div class="form-group pl-5 pr-5  col-md-6">
                    <label for="cpass">CONFIRM PASSWORD</label>
                     <div class="input-container">
                <i class="fa fa-key icon" aria-hidden="true"></i>
                    <input type="password" class="form-control" id="cpass"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
            </div>
            </div>
        </div> 
          <button type="submit" class="btn btn-secondary w-50 " value="signup">REGISTER</button>
         
          </form>

           <div class="form-group pt-3">
            <label for="login"></label>
            <a class="btn btn-light w-100"  href="customer_login.jsp">LOGIN!!</a>
          </div>
       

        </div>
</body>
</html>