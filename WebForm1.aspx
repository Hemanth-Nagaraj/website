<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MY application</title>
    <style type="text/css">
h1{background-color:fushsia;text-align:center;font-size:60px;color:olive;}
p{text-align:left; font-size:30px;color:lime;}
        body {
            background-image: url('image.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            }
</style>
</head>
    <center>
<body>
    <form id="form1" runat="server" >
        <div>
            <br />
            <img src="logo.jpg" width="40%" height="70%"/>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            FIRSTNAME&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="firstname" runat="server" ></asp:TextBox>
            <br />
            <br />
            LASTNAME&nbsp;&nbsp;&nbsp; <asp:TextBox ID="lastname" runat="server" ></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="INSERT" Width="96px" BackColor="Yellow" Font-Bold="True" Font-Names="Arial Black" ForeColor="#0033CC" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="RETRIVE" BackColor="Yellow" Font-Bold="True" Font-Names="Arial Black" ForeColor="Blue" />
            <br />
           
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;
            </div>
        <br />
        <br />
        <br />
        <br />
       

        <asp:GridView ID="GridView1" runat="server" ForeColor="Lime">
            <HeaderStyle Font-Names="Arial Black" ForeColor="#FF0066" />
            <RowStyle Font-Names="Arial Black" ForeColor="Blue" />
        </asp:GridView>
    <asp:SqlDataSource ID="Sample" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" SelectCommand="SELECT * FROM [person]"></asp:SqlDataSource>
       

    </form>
    </body>
    </center>
</html>
