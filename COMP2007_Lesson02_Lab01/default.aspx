<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="COMP2007_Lesson02_Lab01._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>COMP2007 - Lesson02 - Lab01</title>
</head>
<body>
    <form id="inputForm" runat="server">
    <div>
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <asp:Literal ID="ltlMessage" runat="server"></asp:Literal>
        <asp:TextBox ID="txtMessage" runat="server"></asp:TextBox>
        <asp:Button ID="btnCopyText" runat="server" Text="Copy Text" OnClick="btnCopyText_Click" />
    </div>
        <h4>List Controls</h4>
        <div>
            Toppings: <asp:Label ID="lblToppings" runat="server"></asp:Label>
            <asp:CheckBoxList ID="cblToppings" runat="server">
                <asp:ListItem Value="1" Text="Pepperoni"></asp:ListItem>
                <asp:ListItem Value="2" Text="Anchovies"></asp:ListItem>
                <asp:ListItem Value="3" Text="Extra Cheese"></asp:ListItem>
            </asp:CheckBoxList>
        </div>
        <div>
            Size: <asp:Label ID="lblSize" runat="server"></asp:Label>
            <asp:DropDownList ID="ddlSize" runat="server">
                <asp:ListItem Value="S" Text="Small"></asp:ListItem>
                <asp:ListItem Value="M" Text="Medium"></asp:ListItem>
                <asp:ListItem Value="L" Text="Large"></asp:ListItem>
                <asp:ListItem Value="XL" Text="Extra Large"></asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btnShowSelections" runat="server" Text="Show Selections" OnClick="btnShowSelections_Click" />
        </div>
    </form>
</body>
</html>
