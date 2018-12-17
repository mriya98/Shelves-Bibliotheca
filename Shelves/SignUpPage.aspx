<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpPage.aspx.cs" Inherits="Shelves.SignUpPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            background-image: url(Images/Biblio.jpg);
            background-size: 100%;
        }
        .auto-style1 {
            color: #FFFFFF;
            text-shadow:15px 26px 2px #063533,
                        -16px -18px 2px #243832;
            margin-left: 30px;
            margin-top: 30px;
        }
        .mainBox {
            background-color : #282626;
            background-color : rgba(25, 23, 23, 0.80);
            width: 30%;
            height: 45%;
            margin: auto;
            margin-top: 150px;
            border: 2px groove #FFFFFF;
            border-radius: 5px;
            border-color: whitesmoke; 
            font-family: 'Berlin Sans FB'; 
            font-size: 20px; 
            color: #F2F5F9;
        }
        tr{
            margin: 10px 0px;
            height: 35px;
        }
        .txtBoxFormat {
            color: WhiteSmoke;
            border: 2px inset aquamarine;
            border-top: hidden;
            border-left: hidden;
            border-right: hidden;
            width: 130px;
            background-color: #161616;
            background-color : rgba(25, 23, 23, 0.80);
            height:23px;
        }
        .auto-style2 {
            width: 100%;
            color: #FFFFFF;
        }
        .auto-style3 {
            text-align: right;
        }
        .auto-style4 {
            text-align: center;
        }
        #btnSubmit{ 
            border-radius: 8px;
            border-collapse: collapse;
            text-align: center;
            background-color: #1FA770;
            width: 100px;
            border: 2px groove #037148;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblHeading" runat="server" CssClass="auto-style1" href="~/HomePage.aspx" Font-Names="Harlow Solid Italic" Text="Bibliotheca" Font-Size="50px"></asp:Label>
        </div>
        <div class="mainBox">

            <table class="auto-style2" style="padding: 5px; border-collapse: collapse">
                <tr>
                    <td class="auto-style3">Name&nbsp;&nbsp;&nbsp; </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" CssClass="txtBoxFormat"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Username&nbsp;&nbsp;&nbsp; </td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server" CssClass="txtBoxFormat"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Password&nbsp;&nbsp;&nbsp; </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="txtBoxFormat" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Confirm Password&nbsp;&nbsp;&nbsp; </td>
                    <td>
                        <asp:TextBox ID="txtConfirmpw" runat="server" CssClass="txtBoxFormat" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">E-mail Id&nbsp;&nbsp;&nbsp; </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="txtBoxFormat"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Date of Birth&nbsp;&nbsp;&nbsp; </td>
                    <td>
                        <asp:TextBox ID="txtDob" runat="server" Placeholder="yyyy-MM-dd" CssClass="txtBoxFormat"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" Font-Bold="False" Font-Names="Berlin Sans FB" Font-Size="Large" ForeColor="White" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
