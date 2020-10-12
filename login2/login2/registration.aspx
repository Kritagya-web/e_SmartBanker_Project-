<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="login2.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> REGRISTRATION PAGE</title>
    <style>
         *{
            padding:0px;
            margin:0px;
        }
        body{
            width:100vh;
            height:100vh;
          // background: linear-gradient(to bottom right,rgb(19, 18, 18),rgb(97, 94, 94));
        background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
           }
        .reg-box{      /*external div*/
            width:600px;
            height: 450px;
            position:absolute;
            top:50%;
            left:50%;  
            color:white;
            transform: translate(-50%,-50%); 
         //   background-color: rgb(75, 69, 69);
         background: linear-gradient(0deg, rgba(34,193,195,1) 0%, rgba(161,117,24,1) 100%);  
         border-radius: 40px 5px 40px 5px;
            box-shadow: 8px 8px 8px rgba(201, 104, 13, 0.788);
            cursor:pointer;
        }
          .user{     /* image*/
            width:150px;
            height:150px;
            position: absolute;
            border-radius: 50%;
            overflow: hidden;
            top:calc(-150px/2);
            left:calc(46% - 50px);
        }
          .reg-box h2{                /* heading*/
            box-sizing: border-box;
            display: block;
            width:100%;
            float:left;
            margin-top: 90px;
            text-align: center;
            padding-bottom: 10px;
            color:white;
            border-bottom: 3px solid orange;
            border-radius: 4px;
            text-shadow: 5px 5px 20px rgb(15, 15, 15);
            margin-bottom: 10px;
        }
          .table1{
              display:block;
              padding:10px;
          }
          .table1 tr td{
              padding:10px;
          }
          input[type=text]{
            //  background-color:rgb(75, 69, 69);
            background:transparent;
            width:200px;
            border-radius:3px;
              border-bottom:3px solid rgb(255,165,0);
              border-left:none;
              border-right:none;
              border-top:none;
              color:white;
              text-align:center;
          }
         
           input[type=password]{
           //   background-color:rgb(75, 69, 69);
                background:transparent;
            width:200px;
              border-radius:3px;
              border-bottom:3px solid rgb(255,165,0);
              border-left:none;
              border-right:none;
              text-align:center;
              border-top:none;
              color:white;
          }
          
          #Label1{
              font-size:18px;
          }
          #Label2{
              font-size:18px;
          }    
          #Label3{
              font-size:18px;
          }
           #Label4{
              font-size:18px;
          }
           #Button1{

               border:2px solid white;
               font-size:15px;
               text-align:center;
               margin-left:190px;
               margin-top:20px;
               border-radius:10px;
               background-color:orange;
               color:white;
           }
           #label5{
               color:white;
               font-size:20px;
           }
        .auto-style1 {
            width: 132px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="reg-box">
            <img src="pngtree-business-male-icon-vector-png-image_916468.jpg" alt=""  class="user" />
            <h2>Registration Form</h2>
            &nbsp;<br />
            <table class="table1">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label4" runat="server" Text="Customer_id :" Font-Italic="True" ToolTip="enter the customer-id"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="20px" placeholder="Enter CustomerID"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Enter valid Customer ID" Font-Bold="True" Font-Italic="True" ForeColor="Cyan" SetFocusOnError="True" ValidationExpression='^(ESB)\d{5}'></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter CustomerID" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="cyan"  Font-Italic="True" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
               
                 <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="Account No.:" ToolTip="enter account number" Font-Italic="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="20px"  placeholder="Enter Account No."></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter valid Account Number " ControlToValidate="TextBox2" Display="Dynamic" Font-Bold="True" Font-Italic="True" ForeColor="Cyan" SetFocusOnError="True" ValidationExpression='\d{10}'></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Account No."  ControlToValidate="TextBox2" Display="Dynamic" Font-Bold="True" Font-Italic="True" ForeColor="Cyan" SetFocusOnError="True"></asp:RequiredFieldValidator>
                       
                        </td> 
                </tr>
                 <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Password:" Font-Italic="True" ToolTip="enter password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"  Height="20px" TextMode="Password" placeholder="Enter password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Please Enter password"  ForeColor="cyan" Font-Bold="True" Font-Italic="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                       
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Please Select password as per our policy" Font-Bold="True" Font-Italic="True" ForeColor="Cyan" SetFocusOnError="True" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server" Text="Confirm Password :" Font-Italic="True" ToolTip="enter the conform password "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Height="20px" TextMode="Password" placeholder="Enter Confirm password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter Confirm Password" ControlToValidate="TextBox4" Display="Dynamic"  ForeColor="cyan" Font-Bold="True" Font-Italic="True"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TextBox4" ControlToCompare="TextBox3" Display="Dynamic" ErrorMessage="Confirm Password &amp; Password should match" Font-Bold="True" Font-Italic="True" ForeColor="Cyan" SetFocusOnError="True"></asp:CompareValidator>
                    </td>
                </tr>
            </table>

            <asp:Button ID="Button1" runat="server" Text="Register Now" Width="150px" height="30px" OnClick="Button1_Click"/>
            <br />
            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
