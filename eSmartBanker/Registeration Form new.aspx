<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registeration Form new.aspx.cs" Inherits="eSmartBanker.Registeration_Form_new" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
     <link href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2:wght@700&display=swap" rel="stylesheet"/>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

    <style type="text/css">
        *{
            padding:0;
            margin:0;
            color:white;
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
            color:yellow !important;
           
        }
        
        .landing::before{
            content: ""; 
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
   background-image: url("1.png")!important;    
    background-size: cover;
    z-index:-1;


}
       
       
        tr{
            
        }
        td{
         
             font-size:16px;
        }
        input{
                background: transparent;
    width: 317px;
    border-radius: 14px;
    text-align:center;
    border:3px solid white;
        }
        .myButton {
	box-shadow: 3px 4px 0px 0px #899599;
	background:linear-gradient(to bottom, #ededed 5%, #bab1ba 100%);
	background-color:#ededed;
	border-radius:15px;
	border:1px solid #d6bcd6;
	display:inline-block;
	cursor:pointer;
	color:black!important;
    font-weight:bold;
	font-family:Arial;
	font-size:17px;
	padding:7px 25px;
	text-decoration:none;
	text-shadow:0px 1px 0px #e1e2ed;
    margin:5px 10px;
}
.myButton:hover {
	background:linear-gradient(to bottom, #bab1ba 5%, #ededed 100%);
	background-color:#bab1ba;
}
.myButton:active {
	position:relative;
	top:1px;
}

       
        
.buttons{


  
    margin:auto;
 
    
}
.navbar{
    top:0;
   
    cursor:pointer;
}
        
.heading{
    text-align:center;
   
}


.footersection{
    width:100%;
    height:auto;
    padding:70px 0 15px 0;
  background-image: url("2.png")!important; 
  background-size:cover;
  position: relative;
}
.footersection p{
    color: white;
}
.footersection li a{
font-size: 0.9rem;
line-height: 1.6;
font-weight: 400;
color: white;
text-transform: capitalize;

}
.footersection h3{
    text-transform: uppercase;
    color: white;
    margin-bottom: 25px;
    font-size: 1.2rem !important;
    font-weight: 600;
    text-shadow: 0 2px 5px rgba(0,0,0,0.3);
}
#myBtn{
    display: none;
    position: fixed;
    bottom:20px;
    right:40px;
    border:none;
    z-index: 99;
    color: #fff;
    background-color: #00abff;
    padding: 10px;
    border-radius: 10px;
    cursor: pointer;
}
#myBtn:hover{
    background: #606060;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section class="top">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
  <a class="navbar-brand" href="#"><img src="logonewnew.png" /></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-link active " href="#">Home <span class="sr-only">(current)</span></a>
      <a class="nav-link " href="#">About Us</a>
      <a class="nav-link " href="#">Our Policies</a>
      <a class="nav-link " href="#">Transactions</a>
      <a class="nav-link " href="#">Reach Us</a>
      <a class="nav-link " href="#">Queries & Suggestions</a>
     
    </div>
  </div>
</nav>
            </section>
        <br />
   <section class="landing">
        <div class="container">
           <p class="h1 heading">Registeration Form</p> <br />
            <table class="table table-striped">
                <tr>
                    <td class="text-center">First Name:</td>
                    <td class="text-center" colspan="3">
                        <asp:TextBox ID="TextFN" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextFN" Display="Dynamic" ErrorMessage="Please Enter First Name" ForeColor="Yellow" SetFocusOnError="True" ToolTip="This is required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">Middle Name:</td>
                    <td class="text-center" colspan="3">
                        <asp:TextBox ID="TextMN" runat="server" OnTextChanged="TextMN_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">Last Name:</td>
                    <td class="text-center" colspan="3">
                        <asp:TextBox ID="TextLN" runat="server" OnTextChanged="TextLN_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextLN" Display="Dynamic" ErrorMessage="Please Enter Last Name" ForeColor="Yellow" SetFocusOnError="True" ToolTip="This is required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">DOB:</td>
                    <td class="text-center" colspan="3">
                        <asp:TextBox ID="TextDOB" runat="server" Type="date" OnTextChanged="TextLN_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextDOB" Display="Dynamic" ErrorMessage="Please Enter DOB" ForeColor="Yellow" SetFocusOnError="True" ToolTip="This is required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">Type of Account:</td>
                    <td class="text-center" colspan="3">
                        &nbsp;&nbsp;
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="155px">
                            <asp:ListItem>SB</asp:ListItem>
                            <asp:ListItem>Current</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList1" Display="Dynamic" ErrorMessage="Please Select any one type" ForeColor="Yellow" SetFocusOnError="True" ToolTip="This is required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">Mobile Number:</td>
                    <td class="text-center" colspan="3">
                        <asp:TextBox ID="TextMob" runat="server" OnTextChanged="TextMob_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextMob" Display="Dynamic" ErrorMessage="Please Enter Mobile No." ForeColor="Yellow" SetFocusOnError="True" ToolTip="This is required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextMob" Display="Dynamic" ErrorMessage="Please enter valid Mobile No." Font-Bold="True" Font-Italic="False" Font-Size="Medium" ForeColor="#FF6600" SetFocusOnError="True" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">Email Id:</td>
                    <td class="text-center" colspan="3">
                        <asp:TextBox ID="TextMail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextMail" Display="Dynamic" ErrorMessage="Please Enter Email ID" ForeColor="Yellow" SetFocusOnError="True" ToolTip="This is required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextMail" Display="Dynamic" ErrorMessage="Please enter valid Email" Font-Bold="True" Font-Italic="False" Font-Size="Medium" ForeColor="#FF6600" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">Aadhar No:</td>
                    <td class="text-center" colspan="3">
                        <asp:TextBox ID="TextAdc" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextAdc" Display="Dynamic" ErrorMessage="Please Enter Aadhar No" ForeColor="Yellow" SetFocusOnError="True" ToolTip="This is required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextAdc" Display="Dynamic" ErrorMessage="Please enter valid Aadhar No." Font-Bold="True" Font-Italic="False" Font-Size="Medium" ForeColor="#FF6600" SetFocusOnError="True" ValidationExpression="^\d{4}\d{4}\d{4}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">PAN No:</td>
                    <td class="text-center" colspan="3">
                        <asp:TextBox ID="TextPan" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextPan" Display="Dynamic" ErrorMessage="Please Enter PAN" ForeColor="Yellow" SetFocusOnError="True" ToolTip="This is required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextPan" Display="Dynamic" ErrorMessage="Please enter valid PAN" Font-Bold="True" Font-Italic="False" Font-Size="Medium" ForeColor="#FF6600" SetFocusOnError="True" ValidationExpression="(^([a-zA-Z]{5})([0-9]{4})([a-zA-Z]{1})$)"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" class="text-center">Our Password Policy:<br />
                        Please choose a strong password with minimun 8 characters & combination of atleast one uppercase, one lowercase & one special character($,@,#,!,%,?,&)</td>
                </tr>
                <tr>
                    <td colspan="3" class="text-center">Password:</td>
                    <td class="text-center">
                        <asp:TextBox ID="TextPass" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextPass" Display="Dynamic" ErrorMessage="Please choose as per our poicy" ForeColor="#FF6600" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&amp;])[A-Za-z\d@$!%*?&amp;]{8,}$" Font-Bold="True" Font-Italic="False" Font-Size="Medium">Please choose as per our poicy</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextPass" Display="Dynamic" ErrorMessage="Please Enter Password" ForeColor="Yellow" SetFocusOnError="True" ToolTip="This is required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" class="text-center">Confirm Password:</td>
                    <td class="text-center">
                        <asp:TextBox ID="TextCpass" runat="server" OnTextChanged="TextCpass_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextCpass" Display="Dynamic" ErrorMessage="Please Enter Confirm Password" ForeColor="Yellow" SetFocusOnError="True" ToolTip="This is required"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextPass" ControlToValidate="TextCpass" Display="Dynamic" ErrorMessage="Confirm Password &amp; Password should match" ForeColor="#FF6600" Font-Bold="True" Font-Italic="False" Font-Size="Medium"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="text-center">Your Customer ID is:</td>
                    <td colspan="2" class="text-center">
                        <asp:TextBox ID="TextCust" runat="server"  OnTextChanged="TextCust_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="text-center" colspan="2">Your Account No. is:</td>
                    <td class="text-center" colspan="2">
                        <asp:TextBox ID="TextAccount" runat="server" CssClass="" OnTextChanged="TextBox10_TextChanged" ></asp:TextBox>
                    </td>
                </tr>
                </table>
        </div>
        <p>
            &nbsp;</p>
            <p>
                &nbsp;</p>
            <p class="container text-center">
            <asp:Button ID="Button1" class="myButton" runat="server" CausesValidation="False" Text="Back to Home" OnClick="Button1_Click" />
            <asp:Button ID="Button2" class="myButton" runat="server" Text="Submit" />
            <asp:Button ID="Button3"  class="myButton" runat="server" CausesValidation="False" Text="Reset" />
        </p>
            </section>
        <br />
        <br />
        <br />
        
            <!-- ********************footer starts**************** -->
        <footer class="footersection" id="footerdiv">

        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 col-12 footeer-div">
                    <div>
                        <h3>
                            About eSmartBanker
                        </h3>
                        <p>eSmartBanker has a long and distinguished history, which stands as a testament to who we are today. For more than a decade, we have actively listened and responded to the needs of our customers. We strive hard every day to deliver value through our competitive and thoughtful financial services, thus helping our customers lead better lives.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-12 footer-div text-center">
                    <div>
                        <h3>
                            Navigation Links
                        </h3>
                        <div>

                            <li><a href="#">Home</a></li>
                            <li><a href="#servicediv">About Us</a></li>
                            <li><a href="#pricingdiv">Our Policies</a></li>
                            <li><a href="#contactid">Transactions</a></li>
                            <li><a href="#contactid">Reach Us</a></li>
                            <li><a href="#contactid">Queries & Suggestions</a></li>
                        </div>


                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-12 foteer-div">
                    <div>
                        <h3>
                            Newsletter
                        </h3>
                        <p>For business professionals caught between high OEM price and medicore print and graphic
                            output.</p>
                        <div class="container newsletter-main">
                            <div class="row">
                                <div class="col-lg-12 col-12">
                                    <div class="input-group mb-3">
                                        <input type="text" class="form-control news-input" placeholder="Your Email" />
                                        <div class="input-group-append">
                                            <span class="input-group-text">Subscribe</span>
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="mt-5 text-center">
                <p>Copyright &copy;1987-2020 All rights reserved |  &#10084; 
                </p>
            </div>
            
        </div>

    </footer>

    <!-- ********************footer ends**************** -->
    </form>
</body>
</html>
