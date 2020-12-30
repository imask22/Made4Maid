

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html lang="en">
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>MADE FOR MAID</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
      body {
          font-family: Arial, Helvetica, sans-serif;
			/*background-image: linear-gradient(to top right,#2c3e50,#fd746c);*/
/*                        background-image: url('images/pexels5.webp');
                        z-index: -1;*/
      }
      #login{
          border-radius: 25px;
          width:75%;
      }
      #login:hover{
          transform: translateY(-6px);
          /*background-color:red;*/
      }
* {box-sizing: border-box;
}

.input-container {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  width: 100%;
  margin-bottom: 15px;
}

.icon {
  padding: 10px;
  background: black;
  color: white;
  min-width: 50px;
  text-align: center;
}

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
        h1{
            z-index: 1;
            background-color: black;
            color:white;
            font-weight: bold;
            padding-bottom: 4px;
        }
        .right,.left{
            width:100%;
            box-sizing: border-box;
            padding: 1.7em 1.5em 2.5em 1.5em; 
        }

        </style>
        <style>
            #admin{
                height:300px;
                width:300px;
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

<div class="container my-5">
<div class="container text-center my-5 pt-5">    
        
        <div class="container my-5">
            <div class="form1">
                
    <h1 class="text-center text-bold text-capatalize p-3 ">LOGIN</h1>
        <div class="row">
           
    
            <div class="col-sm-6 col-md-6 col-xl-6 my-3">
                <div class="left">
                <form action = "admin_login_process.jsp" method = "post">
                    <div class="container pt-3 text-bold">
                        <h5>
                            <label class="text-bold">EMAIL ID</label></h5>
                         <div class="input-container">
                               <i class="fa fa-envelope icon"></i>
                        <input type = "text" name = "id" class="form-control"  onfocus="this.value=''" required><br>
                         </div>
                         </div>
                    
                    <div class="container pt3 text-bold">
                        <h5>    <label class="text-bold">PASSWORD</label></h5>
                         <div class="input-container">
                               <i class="fa fa-key icon"></i>
                        <input type = "password" name = "password" class="form-control"  onfocus="this.value=''" required>
                    </div>
                    </div>
                    
                   <h3> <input type = "submit" value = "LOGIN" class="btn btn-secondary my-2 p-3" id="login" >
                   </h3>
                </form>
                
                </div>
                
            </div>

             <div class="col-sm-6 col-md-6 col-xl-6 my-3">
              
<!--                 <div class="right">
                 <div class="connect"><h4>Connect With</h4></div>
                 <div class="col-12 m-4">
                     <a class='btn btn-danger w-75'id="login">
                         <h3><i class="fa fa-google" aria-hidden="true"></i>
                                        </h3></a>
                 </div>
                  <div class="col-12 m-4">
                     <a class='btn btn-primary w-75' id="login">
                         <h3><i class="fa fa-facebook" aria-hidden="true"></i>
                        </h3></a>
                 </div>
                   <div class="col-12 m-4">
                     <a class='btn btn-warning w-75' id="login">
                         <h3><i class="fa fa-twitter" aria-hidden="true"></i>
                         </h3></a>
                 </div>
                 </div>-->
                    <img src="images/admin.jpg"id="admin">

             </div>
            </div>
            <h3><a  class=" btn btn-light my-2"  href = "admin_forgot_password.jsp"  id="login">FORGOT PASSWORD!!</a>
                    </h3>
    
</div>
</div>
</div>
    
</body>
</html>