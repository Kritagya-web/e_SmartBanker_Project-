<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registerationoct.aspx.cs" Inherits="eSmartBanker.Registerationoct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            width: 304px;
        }
        .auto-style5 {
            text-align: left;
            width: 304px;
        }
        .auto-style6 {
            width: 586px;
        }
        .auto-style7 {
            text-align: left;
            width: 586px;
        }
        .auto-style8 {
            text-align: right;
            width: 586px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="2" cellspacing="3" class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="3">Online User Registeration</td>
                </tr>
                <tr>
                    <td class="auto-style8">Account Number:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="AccountNo" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="AccountNo" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">Please Enter Account No:</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="AccountNo" Display="Dynamic" ErrorMessage="*This Account is Invalid" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Customer ID:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="CustID" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="CustID" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">Please Enter Customer ID</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="CustID" Display="Dynamic" ErrorMessage="*This CustomerID is Invalid" ForeColor="Red" ValidationExpression="^(ESB)\d{5}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="3">Our Password Policy:</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="3">Please choose a strong password with minimun 8 characters &amp; combination of atleast one uppercase, one lowercase &amp; one special character($,@,#,!,%,?,&amp;)</td>
                </tr>
                <tr>
                    <td class="auto-style8">Password:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="Password" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Password" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">Please Enter Password</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Password" Display="Dynamic" ErrorMessage="Please Choose Password as per our policy." SetFocusOnError="True" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&amp;])[A-Za-z\d@$!%*?&amp;]{8,}$">Please Choose Password as per our policy.</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Confirm Password:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="ConfirmPassword" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">Please Enter Confirm Password</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password &amp; Password should match" SetFocusOnError="True">Confirm Password &amp; Password should match</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="3">
                        <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="Display" OnClick="Button1_Click" CausesValidation="False" />
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
