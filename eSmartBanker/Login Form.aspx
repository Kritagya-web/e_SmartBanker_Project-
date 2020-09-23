<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login Form.aspx.cs" Inherits="eSmartBanker.Login_FOrm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <script src="https://kit.fontawesome.com/6a308e9bfd.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
     <link href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2:wght@700&display=swap" rel="stylesheet"/>
  
     <style> *{
            padding:0;
            margin:0;
            
            font-size:15px;
            font-family: 'Baloo Bhai 2', cursive;
        
           } 
 a img{
           width:227px;
        }
 nav.navbar{
            color:transparent;
        }
        .nav-link{
            font-size:18px;
            margin: 0 10px;
        }
        .navbar-nav{
            margin-left:293px;
        }
        a:hover{
            font-weight:bold;
            color:red !important;
           
        }
        .dark{
            color:black;
        }
    

body{
    background: url("loginbg.jpg") no-repeat center center fixed;
    background-size: cover;

}
.loginbox{

position: absolute;
    top: 31%;
    left: 64%;
    width:480px;
    
}
.loginbox h1{
    font-size: 40px;
    padding: 13px 0px;
    margin: 0px 157px;
    border-bottom: 4px solid white;
    text-align: center;
}
.box{
    width:100%;
    margin:28px 3px;
 
}
.box input{
    background: none;
    width:75%;
    margin:1px 7px;
    font-size: 15px;
    border: none;
    border-bottom: 2px solid white;
    outline: none;
 
    padding: 6px 5px;
}
.box i{
    text-align: center;
    width: 10%;
    justify-content: center;
    align-items: center;

}
.btn{
    cursor: pointer;
    outline: none;
    width: 27%;
    margin: 12px auto;
    border-radius: 10px;
    background: none;
    display: inherit;
    padding: 8px 0px;
    font-size: 18px;
    font-weight: bold;
    border:3px solid black;
}
.btn:hover{
    cursor: pointer;
    outline: none;
    width: 27%;
    margin: 12px auto;
    color: red;
    
    border-radius: 10px;
    background: white;
    display: inherit;
    padding: 8px 0px;
    font-size: 18px;
    font-weight: bold;

}

  
       </style>
</head>
<body>
    <form id="form1" runat="server">
         <nav class="navbar navbar-expand-lg navbar-light  ">
  <a class="navbar-brand" href="#"><img src="logo.jpg" /></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-link active dark" href="#">Home <span class="sr-only">(current)</span></a>
      <a class="nav-link dark" href="#">About Us</a>
      <a class="nav-link dark" href="#">Our Policies</a>
      <a class="nav-link dark" href="#">Transactions</a>
      <a class="nav-link dark" href="#">Reach Us</a>
      <a class="nav-link dark" href="#">Queries & Suggestions</a>
     
    </div>
  </div>
</nav>

     <div class="loginbox">
        <h1>Sign In</h1>
        <div class="box">

            <i class="fa fa-envelope"></i>
            <input type="email" id="email" placeholder="Enter Your Username " />
        </div>
        <div class="box">

            <i class="fa fa-key"></i>
            <input type="password" id="password" placeholder="Enter Your Password" />
        </div>
        <button class="btn">Submit</button>
    </div>
        
    </form>
</body>
</html>
