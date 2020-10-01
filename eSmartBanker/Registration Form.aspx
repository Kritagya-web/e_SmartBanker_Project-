﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration Form.aspx.cs" Inherits="eSmartBanker.Registration_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registeration Page</title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
     <link href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2:wght@700&display=swap" rel="stylesheet"/>
    <style>
        *{
            padding:0;
            margin:0;
            //Kritagya
            font-size:15px;
            font-family: 'Baloo Bhai 2', cursive;
        
           }
        a img{
           width:187px;
        }
        nav.navbar{
            color:transparent;
        }
        .nav-link{
            font-size:18px;
            margin: 0 10px;
        }
    
       body {
           
            background-image: linear-gradient(to right, rgba(128, 128, 128,0.5),rgba(128, 128, 128,0.5)),url("bg.jpg.jpg")!important;
            background-size: cover;
            background-repeat:no-repeat;
         
        }

        a:hover{
            font-weight:bold;
            color:yellow !important;
           
        }
        .form label{
		display: inline-block;
		text-align: right;
		float: left;
	    }
        table{
         width: 85%;
    display: block;
    margin: 78px 258px;
            //color:dimgrey;
        }
        .active{
            color:white;
        }
   
    td{
        padding:18px 35px;
        margin:20px;
        color:white;
        font-size:22px;
    }
    .dob{
        color:white;
        font-size:22px;
    }
    .greyBorder{
        background-color:grey;
        color:white;
        outline:none;
    }
    .greyBorderButton{
        background-color:grey;
        color:white;
        outline:none;
        padding:8px;
        border-radius:6px;
    }
    .navbar-brand{
       width: 194px;
    margin-right: 178px;
    }
    .fixed{
        position:fixed;
    }
    .button{
        margin:0px 40px;

        
    }

    </style>
</head>
<body>
    <form id="form1" runat="server">
       <nav class="navbar navbar-expand-lg navbar-light ">
  <a class="navbar-brand" href="#"><img src="logo.jpg" /></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-link active text-white" href="#">Home <span class="sr-only">(current)</span></a>
      <a class="nav-link text-white" href="#">About Us</a>
      <a class="nav-link text-white" href="#">Our Policies</a>
      <a class="nav-link text-white" href="#">Transactions</a>
      <a class="nav-link text-white" href="#">Reach Us</a>
      <a class="nav-link text-white" href="#">Queries & Suggestions</a>
     
    </div>
  </div>
</nav>
        <div class="position-fixed">
           <h2 class="active" >Registration Form</h2>
            </div>

    <table class="align-self-md-auto">
        <tr>
            <td >Type of Account: </td>
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" Text="SB" GroupName="AccountType" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" Text="Current" GroupName="AccountType" />
&nbsp;&nbsp; </td>
            
        </tr>
        
        <tr>
            <td>Personal Details:</td>
            <td>Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" class="greyBorder"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><label for="birthday" class="dob">DOB:</label>
<input type="date" id="birthday" name="birthday" class="greyBorder"/></td>
            <td>Aadhar No:&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" class="greyBorder"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Gender:&nbsp;
                <asp:RadioButton ID="RadioButton3" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Male" GroupName="Gender" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton4" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Female" GroupName="Gender" />
            </td>
            <td>PAN No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" class="greyBorder"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Mobile No:&nbsp;
                <asp:TextBox ID="TextBox5" runat="server" class="greyBorder"></asp:TextBox>
            </td>
            <td>Username:&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox7" runat="server" class="greyBorder" style="background-color:grey; color:white;" Enabled="False" OnTextChanged="TextBox7_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Email Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox6" runat="server" class="greyBorder"></asp:TextBox>
            </td>
            <td>Password:&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox8" runat="server" class="greyBorder" style="background-color:grey; color:white;" Enabled="False" OnTextChanged="TextBox8_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <textarea id="TextArea1" cols="20" name="S1" rows="2" class="greyBorder"></textarea></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Your Customer ID <asp:TextBox ID="TextBox12" runat="server" class="greyBorder" Enabled="False" OnTextChanged="TextBox12_TextChanged"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Your Account No:<asp:TextBox ID="TextBox13" runat="server" class="greyBorder" Enabled="False" OnTextChanged="TextBox13_TextChanged"></asp:TextBox></td>
        </tr>
       
    </table>
        <div class="container d-flex m-auto align-items-center justify-content-center" style="height: 80px"  >
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" class="greyBorderButton button"/>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" class="greyBorderButton button"/>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Cancel" class="greyBorderButton button"/>
        </div>
            <div class="form">
            <asp:Label ID="Label1" runat="server" Height="27px" Text="ASP.NET" ForeColor="White" ></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Assignment project" ForeColor="White"></asp:Label>
        </div>
    </form>
    </body>
</html>
