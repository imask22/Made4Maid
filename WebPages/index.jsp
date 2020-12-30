
<%@page language="java"  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<html lang="en">
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>MADE FOR MAID</title>
	<!--cdn links-->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">	
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    
    <!--******************************CSS*********************************************-->
<style type="text/css">
	.card-flip > div {
  backface-visibility: hidden;
  transition: transform 300ms;
  transition-timing-function: linear;
  width: 100%;
  height: 100%;
  margin: 0;
  display: flex;
}

.card-front {
  transform: rotateY(0deg);
}

.card-back {
  transform: rotateY(180deg);
  position: absolute;
  top: 0;
}

.card-flip:hover .card-front {
  transform: rotateY(-180deg);
}
  
.card-flip:hover .card-back {
  transform: rotateY(0deg);
}
#corner{
	z-index: 1;
}
#mid,#corner:hover{
	transform: scale(1.2);
}
#gallery:hover{
	transform:translateY(-20px);
}
 .crds{
 	background:#fff;
 	border: medium none;
 	padding: 50px!important;
 	border-radius: 3px;
 	transition: 0.3s;
 }
 .crds:hover{
 	box-shadow: 0 0 20px 0 rgba(0,0,0,0.3);
 	transform: translateY(-20px);
 }
 h3{

 	font-weight: bold;
 	line-height: 1.1;
 	margin: 20px 0 15px 0;
 	word-spacing: 4px;
 }
 a{
     text-decoration:none ;
 }

</style>
    <style type="text/css">
	*{
		margin: 0;
		padding: 0;
	}
	.content{
		color: #202020;
	}
	.share-btn{
		position: absolute;
		bottom: 30px;
		right: 30px;
		z-index: 1;
                /*padding: 2px;*/
	}
	#click{
		display: none;

	}
	.share-btn span{
		height: 60px;
		width:60px;
		background:#16a085;
		line-height: 60px;
		font-size: 40px;
                padding: 5px;
                /*padding-left: 1px;*/
		color: #e9fcf8;
		border-radius: 50%;
		cursor:pointer;
		border: 1px solid #159d82;

	}
	.share-btn a span{
		background: #159d82;
		border-color: #12876f;

	}
	.share-btn a span{
		position: absolute;
		right:10px;
		bottom: 10px;
		height:30px;
		width: 30px;
		line-height: 30px;
                padding: 5px;
                padding-bottom: 2px;
		font-size: 30px;
		border:1px solid transparent;
		background:#16a085;
		z-index: -1;
		opacity: 0;
		pointer-events: none;
		transition: .6s;
	}
	#click:checked ~.share-btn a span{
		height: 50px;
		width: 50px;
		line-height: 50px;
		z-index: 1;
		opacity: 1;
		pointer-events: auto;
                padding: 5px;
	}
	#click:checked ~.share-btn a:nth-child(2) span{
		bottom: 0px;
		right: 80px;
		background:#1da1f2;
		background-color: #0e9af1; 
	}
	#click:checked ~.share-btn a:nth-child(3) span{
		bottom: 65px;
		right: 65px;
		background:#e1306c; 
		background-color: #df2060;
	}
	#click:checked ~.share-btn a:nth-child(3) span{transition-delay:.2s; }
	#click:checked ~.share-btn a:nth-child(4) span{
		bottom: 80px;
		right: 0px;
		background:#ff0000;
		background-color: #0e9af1; 
	}
        .card{
            transition-delay: .2s;
        }
#content{
	color:white;
	background-color: #111;
}
h1{
	color:black;
}
#im{
	border-radius: 30%;
	width: 170px;
}

#myBtn {
  display: none;
  position: fixed;
  bottom: 20px;
  right: 30px;
  z-index: 99;
  /*font-size: 18px;*/
  border: none;
  outline: none;
  background-color: black;
  color: white;
  cursor: pointer;
  padding: 5px;
  /*rounded-circle w-50 : 50%;*/
}

#myBtn:hover {
  background-color: #555;
}


/********** section 1 **************/

.section-1 {
  padding: 20vmin 0vmin;
}

.section-1 .row .col-md-6 .pray img {
  opacity: 0.8;
  width: 90%;
  border-radius: 0.2em;
}

.section-1 .row .col-md-6:last-child {
  position: relative;
}

.section-1 .row .col-md-6 .panel {
  position: absolute;
  top: 7vmin;
  left: -18vmin;
  background: white;
  border-radius: 3px;
  text-align: left;
  padding: 13vmin 5vmin 20vmin 10vmin;
  box-shadow: 0px 25px 42px rgba(0, 0, 0, 0.2);
  /*font-family: var(--Rubik);*/
  z-index: 1;
}

.section-1 .row .col-md-6 .panel h1 {
  font-weight: bold;
  padding: 0.4em 0;
  font-size: 2em;
}

.section-1 .row .col-md-6 .panel p {
  font-size: 0.9em;
  color: rgba(0, 0, 0, 0.5);
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
        .section2 button{
            font-size: 20px;
            background-color: black;
            color: white;
        }
        .section2 a{
            text-decoration: none;
        
        .section2 .card {
            background-color: black;
        }
        </style>
        
 <script>
        var TxtType = function(el, toRotate, period) {
        this.toRotate = toRotate;
        this.el = el;
        this.loopNum = 0;
        this.period = parseInt(period, 10) || 2000;
        this.txt = '';
        this.tick();
        this.isDeleting = false;
    };

    TxtType.prototype.tick = function() {
        var i = this.loopNum % this.toRotate.length;
        var fullTxt = this.toRotate[i];

        if (this.isDeleting) {
        this.txt = fullTxt.substring(0, this.txt.length - 1);
        } else {
        this.txt = fullTxt.substring(0, this.txt.length + 1);
        }

        this.el.innerHTML = '<span class="wrap">'+this.txt+'</span>';

        var that = this;
        var delta = 200 - Math.random() * 100;

        if (this.isDeleting) { delta /= 2; }

        if (!this.isDeleting && this.txt === fullTxt) {
        delta = this.period;
        this.isDeleting = true;
        } else if (this.isDeleting && this.txt === '') {
        this.isDeleting = false;
        this.loopNum++;
        delta = 500;
        }

        setTimeout(function() {
        that.tick();
        }, delta);
    };

    window.onload = function() {
        var elements = document.getElementsByClassName('typewrite');
        for (var i=0; i<elements.length; i++) {
            var toRotate = elements[i].getAttribute('data-type');
            var period = elements[i].getAttribute('data-period');
            if (toRotate) {
              new TxtType(elements[i], JSON.parse(toRotate), period);
            }
        }
        // INJECT CSS
        var css = document.createElement("style");
        css.type = "text/css";
        css.innerHTML = ".typewrite > .wrap { border-right: 0.08em solid #fff}";
        document.body.appendChild(css);
    };

</script>

        
        </head>
	<!--go to top button-->
       
	
<body>
     <button onclick="topFunction()" id="myBtn" title="Go to top">
         <i class="fa fa-arrow-up fa-2x" aria-hidden="true"></i>
</button>
    
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

<!-- ************************************************CROUSEL*************************************************************** -->
<section >
<!--Carousel Wrapper-->
<div id="carouselExampleIndicators" class=" container carousel slide my-5" data-ride="carousel" >
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/img1.jpg" class="d-block w-100">
        <h1 class="carousel-caption">
            <span href="" class="typewrite" data-period="2000" data-type='[ "NEED HELP!!","EASILY AVAILABLE AT YOUR DOORSTEPS", "SECURITY IS OUR HIGHEST PRIORITY", "STAY HASSEL FREE!!"]'>
                        <span class="wrap"></span>
                      </span>
        </h1>
    </div>
    <div class="carousel-item">
      <img src="images/pic8.jpg" class="d-block w-100">
      <h1 class="carousel-caption text-black">
          <span href="" class="typewrite" data-period="2000" data-type='[ "NEED HELP!!","EASILY AVAILABLE AT YOUR DOORSTEPS", "SECURITY IS OUR HIGHEST PRIORITY", "STAY HASSEL FREE!!" ]'>
                        <span class="wrap"></span>
                      </span>
      </h1>
    </div>
    <div class="carousel-item">
        
      <img src="images/pic9.jpg" class="d-block w-100">
      <h1 class="carousel-caption text-black">
         <span href="" class="typewrite" data-period="2000" data-type='[ "NEED HELP!!","EASILY AVAILABLE AT YOUR DOORSTEPS", "SECURITY IS OUR HIGHEST PRIORITY", "STAY HASSEL FREE!!" ]'>
                        <span class="wrap"></span>
                      </span>
      </h1>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<!-- ************************************************END OF CAROUSEL  *************************************************************** -->
</section>

<section class="section2" id="about">
<div class="accordion">
    <div class="container">
    <div class="row">
        <div class="col-md-4 col-xl-4 col-4">
            <a class="btn btn-dark w-100 " data-toggle="collapse" href="#multiCollapseExample1" role="button" aria-expanded="false" aria-controls="multiCollapseExample1"><h2 class="text-white">OUR MISSION</h2></a>

        </div>
        <div class="col-md-4 col-xl-4 col-4">
              <a class="btn btn-dark  w-100" role="button" data-toggle="collapse" data-target="#multiCollapseExample2" aria-expanded="false" aria-controls="multiCollapseExample2"><h2 class="text-white">WHY US??</h2></a>

        </div>
        <div class="col-md-4 col-xl-4 col-4">
              <a class="btn btn-dark  w-100" role="button" data-toggle="collapse" data-target="#multiCollapseExample3" aria-expanded="false" aria-controls="multiCollapseExample3"><h2 class="text-white">ABOUT US</h2></a>

        </div>
    </div>                
        <br>
<div class="row">
  <div class="col-12">
    <div class="collapse show"  id="multiCollapseExample1">
      <div class="card card-body shadow text-center">
          <h3>   "OUR MISSION IS TO PROVIDE SERVICES TO THE REQUIRED & PROVIDE AN EARNING TO THE REQUIRED"</h3>
    </div>
  </div>
  <div class="col-12 m-2">
    <div class="collapse multi-collapse shadow" id="multiCollapseExample2">
      <div class="card card-body shadow text-center">
          <h3>
          <div class="row">
              <div class="col-md-4 col-xl-4 col-12">EASY TO USE
          </div>
              <div class="col-md-4 col-xl-4 col-12">PORTABLE
          </div>
              <div class="col-md-4 col-xl-4 col-12">SECURE
          </div>
                                
          </h3>  
      </div>
    </div>
  </div>
     <div class="col-12">
    <div class="collapse multi-collapse shadow" id="multiCollapseExample3">
      <div class="card card-body shadow text-center">
          <h3>  
          We are here to provide various services to people:-
        
               <div class="row text-capatalize text-bold text-left my-4">
                            <div class="col-sm-6 col-xl-6 col-6 ">
                                <div class="names my-3 pl-5">
                                   
                                <h4>COOKING</h4>
                                <div class="progress">
                                <div class="progress-bar progress-bar-striped progress-bar-animated" style=" width:100%" >100%</div>
                                </div>
                                </div>
                                
                                 <div class="names my-3  pl-5">
                                <h4>HOUSEHOLD</h4>
                                <div class="progress">
                                <div class="progress-bar progress-bar-striped progress-bar-animated" style ="width:90%" >90%</div>
                                </div>
                            </div>
                                
                                 <div class="names my-3  pl-5">
                                <h4>DRIVING</h4>
                                <div class="progress">
                                <div class="progress-bar progress-bar-striped progress-bar-animated" style=" width:60%" >70%</div>
                                </div>
                            </div>
                                
                                 <div class="names my-3  pl-5">
                                <h4>GARDENING</h4>
                                <div class="progress">
                                <div class="progress-bar progress-bar-striped progress-bar-animated" style= "width:50%" >65%</div>
                               
                            </div>
                                 </div>
                                
                                
                                 <div class="names my-3  pl-5">
                                <h4>BABY-SITTING</h4>
                                <div class="progress">
                                <div class="progress-bar progress-bar-striped progress-bar-animated" style=" width:45%" >65%</div>
                                </div>
                                </div>
                        </div>
               </div>
          </h3>  
      </div>
    </div>
  </div>
</div>
</div>
</div>
    </div>
</section>
	
<div class="container  my-5">
		<h1 class="text-center text-capatalize">GALLERY</h1>
		<hr class="w-25 mx-auto">

<section class="section-1">
      <div class="container text-center">
        <div class="row">
          
          <div class="col-md-6 col-12">
            <div class="pray">
              <img src="images/pexels3.jpeg" alt="Pray" style="height:500px"  />  	
            </div>
          </div>
          <div class="col-md-6 col-12">
            <div class="panel text-left">
              <h1>HOUSEHOLD CHORES</h1>
              <p class="pt-2">NO TIME FOR CLEANING HOUSE?? CONTACT US!!</p>
            </div>
          </div>
        </div>
      </div>
    <div class="container text-center m-4">
        <div class="row">
          
          <div class="col-md-6 col-12">
            <div class="pray">
              <img src="images/pexels4.jpeg" alt="Pray" style="height:500px"/>  	
            </div>
          </div>
          <div class="col-md-6 col-12">
            <div class="panel text-left">
              <h1>GARDENING</h1>
              <p class="pt-2">WE ALL LOVE TO TAKE CARE OF PLANTS!! </p>
            </div>
          </div>
        </div>
      </div>
    <div class="container text-center m-4">
        <div class="row">
         
          <div class="col-md-6 col-12">
            <div class="pray">
              <img src="images/pexels5.webp" alt="Pray" style="height:450px" class=""/>  	
            </div>
          </div>
          <div class="col-md-6 col-12">
            <div class="panel text-left">
              <h1>BABY SITTING</h1>
              <p class="pt-2">LITTLE ANGLES ARE BORN TO SPREAD LOVE & REQUIRES OUTMOST CARE...</p> 
            </div>
          </div>
        </div>
      </div>
</div>
    </section>
</div>
<!-- ***********************************  CARDS FOR HELPERS WORDS ************************************************* -->

 <div class="container   pb-5 my-5">
	<h1 class="text-center text-capatalize pt-5">OUR HELPERS WORDS..</h1>
	<hr class="w-75 mx-auto pt-5">		
	
        
      <div class="team row container ">
        <div class="col-md-4 col-12 text-center">
            <div class="card mr-2 d-inline-block shadow-lg">
                <div class="card-img-top">
                  <img src="images/pic8.jpg" class="img-fluid border-radius p-4" alt="" id="im">
                </div>
                <div class="card-body">
                  <h3 class="card-title">Deepak</h3>
                  <p class="card-text">
                  Iski mujhe bhot jarurat thi,...mere parivar ke liye..  
                  
                  </p>
                
                </div>
              </div>
        </div>
        <div class="col-md-4 col-12">
            <div id="carouselExampleControls" class="carousel slide " data-ride="carousel">
                <div class="carousel-inner text-center">
                  <div class="carousel-item active">
                    <div class="card mr-2 d-inline-block shadow">
                      <div class="card-img-top">
                        <img src="images/pic8.jpg" class="img-fluid rounded-circle w-50 p-4" alt="">
                      </div>
                      <div class="card-body">
                        <h3 class="card-title">Laxmi</h3>
                        <p class="card-text">
                        Isne meri bhot help ki haiiiii.. 
                        </p>
                        
                      </div>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <div class="card  d-inline-block mr-2 shadow">
                      <div class="card-img-top">
                        <img src="images/pic8.jpg" class="img-fluid rounded-circle w-50 p-4" alt="">
                      </div>
                      <div class="card-body">
                        <h3 class="card-title">Raman</h3>
                        <p class="card-text">
                        Dhnayawad..hum apke bhot abhari ahiii.. 
                        </p>
                        
                      </div>
                    </div>
                  </div>
              </div>
        </div>
        </div>
        <div class="col-md-4 col-12 text-center">
            <div class="card mr-2 d-inline-block shadow-lg">
                <div class="card-img-top">
                  <img src="images/pic8.jpg" class="img-fluid border-radius p-4" alt="" id="im">
                </div>
                <div class="card-body">
                  <h3 class="card-title">Shanti</h3>
                  <p class="card-text">
                      Mhujhe finally kaam mil gya ,.....dhnayavad iski wagah se me apne ghar ka rent de saki
                  </p>
                
                </div>
              </div>
        </div>
      </div>
    


 		
</div>

<!--*******************************************************************************************************************************-->

<!--****************************************** customer reviews ********************************************-->

 <div class="container   pb-5 my-5">
	<h1 class="text-center text-capatalize pt-5">HAPPY CUSTOMERS & FEEDBACKS.</h1>
	<hr class="w-75 mx-auto pt-5">		
	
        
      <div class="team row container ">
        <div class="col-md-4 col-12 text-center">
            <div class="card mr-2 d-inline-block shadow-lg">
                <div class="card-body">
                  <h3 class="card-title">Diya</h3>
                  <p class="card-text">
                  Your Services are amazing....  
                  
                  </p>
                
                </div>
              </div>
        </div>
        <div class="col-md-4 col-12">
            <div id="carouselExampleControls" class="carousel slide " data-ride="carousel">
                <div class="carousel-inner text-center">
                  <div class="carousel-item active">
                    <div class="card mr-2 d-inline-block shadow">
                      <div class="card-body">
                        <h3 class="card-title">Riya</h3>
                        <p class="card-text">
                        I urgently required a driver .. and It just helped a lot.. 
                        </p>
                        
                      </div>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <div class="card  d-inline-block mr-2 shadow">
                        <div class="card-body">
                        <h3 class="card-title">Ritu</h3>
                        <p class="card-text">
                        Thanks for your amazing help ..Due to lack of time i am unable to cook,,
                        </p>
                        
                      </div>
                    </div>
                  </div>
              </div>
        </div>
        </div>
        <div class="col-md-4 col-12 text-center">
            <div class="card mr-2 d-inline-block shadow-lg">
                <div class="card-body">
                  <h3 class="card-title">Hari</h3>
                   <p class="card-text">
                     Thanks for this ..it hepled a lot in Indore...
                  </p>
                
                </div>
              </div>
        </div>
      </div>
    


 		
</div>


<!--*******************************************************************************************************************************-->

    <!--Contact us start here-->
    <div class="row justify-content-center ">
        <h5 class="text-black" id="contact">
        
            Any Suggestions or Queries?? Contact us at <a href="" >made4maidhelp@gmail.com</a>
            
        </h5>
    </div>

<!--*************************************************************************************************************************************-->

<div class="content">
    <input type="checkbox" id="click"/>
        <label for="click" class="share-btn">
            <span class="fa fa-share-alt"></span>
            <a href="https://twitter.com/login"><span class="fa fa-twitter "></span></a>
            <a href="https://www.instagram.com/"><span class="fa fa-instagram"></span></a>
            <a href="https://www.facebook.com/"><span class="fa fa-facebook"></span></a>
        </label>
</div>
<!-- ************************END OF REVIEWS ********************************************************************** -->


</section>
<footer class="bg-dark text-center text-white p-2 text-italic">
	<h5>@copyright</h5>
	
</footer>

<script>
//Get the button
var mybutton = document.getElementById("myBtn");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction();};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}
</script>
</body>
	
 
</html>  

