<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab1WebApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="display: inline-block">
    
        Выбор темы:<br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>Theme1</asp:ListItem>
            <asp:ListItem>Theme2</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Выбрать" />
        <br />
        <br />
        <br />
    
        Введите логин:&nbsp;&nbsp;
        <asp:TextBox ID="Login" runat="server" CssClass="text" Width="150px"></asp:TextBox>
&nbsp;<asp:Label ID="ValidLogin" runat="server"></asp:Label>
        <br />
        <br />
        Введите пароль:
        <asp:TextBox ID="Password" runat="server" CssClass="text" TextMode="Password" Width="151px"></asp:TextBox>
&nbsp;<asp:Label ID="ValidPassword" runat="server"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
    
    </div>
    </form>
</body>
</html>
