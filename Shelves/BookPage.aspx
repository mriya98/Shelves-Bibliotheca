<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookPage.aspx.cs" Inherits="Shelves.BookPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Stylesheets" runat="server">
    <link rel="stylesheet" href="BookPageSS.css" type="text/css"/>
    <asp:Menu ID="menuBkbar" runat="server" BackColor="#333333" BorderStyle="Solid" Width="100%"  BorderWidth="1px" Font-Names="Bodoni MT" Font-Size="Large" ForeColor="#E4E4E4" Orientation="Horizontal" CssClass="topBarBooks" OnMenuItemClick="menuBkbar_MenuItemClick">
        <DynamicHoverStyle BackColor="#494949" Font-Bold="True" />
        <DynamicMenuStyle BackColor="#333333" BorderStyle="Solid" BorderWidth="1px" VerticalPadding="10px" />
        <DynamicSelectedStyle BackColor="#494949" Font-Bold="True" />
        <Items>
            <asp:MenuItem Selected="True" Text="Books" Value="Books"></asp:MenuItem>
            <asp:MenuItem Text="Genre" Value="Genre">
                <asp:MenuItem Text="Adventure" Value="Adventure"></asp:MenuItem>
                <asp:MenuItem Text="Autobiography" Value="Autobiography"></asp:MenuItem>
                <asp:MenuItem Text="Crime" Value="Crime"></asp:MenuItem>
                <asp:MenuItem Text="Fantasy" Value="Fantasy"></asp:MenuItem>
                <asp:MenuItem Text="Fiction" Value="Fiction"></asp:MenuItem>
                <asp:MenuItem Text="Historical" Value="Historical"></asp:MenuItem>
                <asp:MenuItem Text="Horror" Value="Horror"></asp:MenuItem>
                <asp:MenuItem Text="Literature" Value="Literature"></asp:MenuItem>
                <asp:MenuItem Text="Mythology" Value="Mythology"></asp:MenuItem>
                <asp:MenuItem Text="Non-Fiction" Value="Non-Fiction"></asp:MenuItem>
                <asp:MenuItem Text="Philosophy" Value="Philosophy"></asp:MenuItem>
                <asp:MenuItem Text="Romance" Value="Romance"></asp:MenuItem>
                <asp:MenuItem Text="Self-help" Value="Self-help"></asp:MenuItem>
                <asp:MenuItem Text="Science Fiction" Value="Science Fiction"></asp:MenuItem>
                <asp:MenuItem Text="Spiritual" Value="Spiritual"></asp:MenuItem>
                <asp:MenuItem Text="Travel" Value="Travel"></asp:MenuItem>
                <asp:MenuItem Text="Young Adult" Value="Young Adult"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Top Books" Value="Top Books"></asp:MenuItem>
            <asp:MenuItem Text="Editor's Choice" Value="Editor's Choice"></asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#494949" Font-Bold="True" />
        <StaticMenuItemStyle HorizontalPadding="25px" ItemSpacing="15px" />
        <StaticSelectedStyle BackColor="#494949" Font-Bold="True" />
    </asp:Menu>
    <div class="searchClass" style="margin: 0px; padding: 5px; width: 100%;">
    <asp:TextBox ID="txtSearch" runat="server" Height="25px" Placeholder="Search" BackColor="White" BorderColor="Aqua" BorderStyle="Inset" BorderWidth="1px" ForeColor="Black" style="height: 27px; width: 146px;" OnTextChanged="txtSearch_TextChanged"></asp:TextBox>
    <asp:ImageButton ID="btnSearch" runat="server" Height="30px" ImageUrl="~/Images/if_icon-111-search_314384.png" Width="30px" OnClick="btnSearch_Click" BorderColor="Black" BorderWidth="0px" />
    <br/>
    </div>
    
<asp:Label ID="lblName" runat="server"></asp:Label>
<asp:GridView ID="GridView1" runat="server" CellPadding="10" BackColor="#CCFFFF" BorderColor="#CCFFFF" Font-Names="Berlin Sans FB" GridLines="Horizontal" SelectedRowStyle-BackColor="White" ForeColor="Black" Width="100%">
    <RowStyle height="35px"/>
   
</asp:GridView>
<asp:SqlDataSource ID="BookDir" runat="server" ConnectionString="<%$ ConnectionStrings:ShelvesConnectionString %>" SelectCommand="SELECT * FROM [bookDirTab] ORDER BY [BookName]"></asp:SqlDataSource>
    
</asp:Content>