<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInPage.aspx.cs" Inherits="Shelves.LogInPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        body {
            background-image: url(Images/Biblio.jpg);
            background-size: 100%;
        }
        .auto-style1 {
            text-align: center;
            height: 232px;
        }
        #txtUsername {
            border-radius : 5px;
            background-image: url(Images/usericon.png);
            background-repeat: no-repeat;
            background-size: 15px;
            background-position-x: 8px;
            background-position-y: 3px;
            margin-top: 20px;
            text-indent: 23px;
        }
        #txtPassword {
            background-image: url(Images/lock.png);
            background-repeat: no-repeat;
            background-size: 15px;
            background-position-x: 8px;
            background-position-y: 3px;
            border-radius : 5px;
            text-indent: 23px;
        }
        .auto-style2 {
            color: #FFFFFF;
            font-size: medium;
        }
        .signUpBtn {
            border : hidden;
            background-color: rgba(13, 11, 11, 0.00);

        }
        #btnLogIn {
            border-radius: 8px;
            text-indent: 30px;
            border-collapse: collapse;
            text-align:justify;
        }
        .auto-style3 {
            background-color : #282626;
            background-color : rgba(25, 23, 23, 0.80);
            width: 25%;
            height: 20%;
            margin: auto;
            margin-top: 150px;
            border: 2px groove #FFFFFF;
            border-radius: 5px;
        }
        .auto-style4 {
            color: #FFFFFF;
            text-shadow:15px 26px 2px #063533,
                        -16px -18px 2px #243832;
            margin-left: 30px;
            margin-top: 30px;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblHeading" runat="server" CssClass="auto-style4" href="~/HomePage.aspx" Font-Names="Harlow Solid Italic" Text="Bibliotheca" Font-Size="50px"></asp:Label>
        <div class="auto-style3" style="border-color: whitesmoke; font-family: 'Berlin Sans FB'; font-size: 20px; color: #F2F5F9">
            <div class="auto-style1">
                <asp:TextBox ID="txtUsername" runat="server" Placeholder="Username/Email" ForeColor="WhiteSmoke" BorderColor="Black" BorderStyle="Inset" Width="130px" BackColor="#161616" BorderWidth="2px" Height="23px"></asp:TextBox>
                <div style="height:20px;">
                </div>
                <asp:TextBox ID="txtPassword" runat="server" Placeholder="Password" ForeColor="WhiteSmoke" BorderColor="Black" BorderStyle="Inset" Width="130px" BackColor="#161616" BorderWidth="2px" Height="23px" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnLogIn" runat="server" OnClick="btnLogIn_Click" Text="Log In" BackColor="#1FA770" Font-Names="Berlin Sans FB" Font-Size="Large" Width="138px" BorderColor="#037148" BorderStyle="Groove" BorderWidth="2px" ForeColor="WhiteSmoke" />
                <br />
                <br />
                <span class="auto-style2">Don&#39;t have an account?</span><asp:Button ID="btnSignUp" runat="server" Font-Underline="True" Text="Sign Up!" CssClass="signUpBtn" Font-Names="Berlin Sans FB" Font-Size="Large" ForeColor="White" OnClick="btnSignUp_Click" />
             </div>
        </div>
    </form>
</body>
</html>
