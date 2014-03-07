<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditMe.aspx.cs" Inherits="Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Edit your ad</h1>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:autosConnectionString1 %>" DeleteCommand="DELETE FROM [anuncios] WHERE [id] = @id" InsertCommand="INSERT INTO [anuncios] ([title], [description], [marca_id], [color_id]) VALUES (@title, @description, @marca_id, @color_id)" SelectCommand="SELECT [id], [title], [description], [marca_id], [color_id] FROM [anuncios] WHERE ([id] = @id)" UpdateCommand="UPDATE [anuncios] SET [title] = @title, [description] = @description, [marca_id] = @marca_id, [color_id] = @color_id WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="marca_id" Type="Int16" />
                <asp:Parameter Name="color_id" Type="Int16" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="-1" Name="id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="marca_id" Type="Int16" />
                <asp:Parameter Name="color_id" Type="Int16" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Titulo"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        Descripcion <br />
        <br />
        <asp:TextBox ID="TextBox2" runat="server" Height="88px" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        Marca:<br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="id" >
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:autosConnectionString1 %>" SelectCommand="SELECT * FROM [marcas]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        Color:<br />
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="name" DataValueField="id" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" >
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:autosConnectionString1 %>" SelectCommand="SELECT * FROM [colors]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:HiddenField ID="HiddenField1" runat="server" OnValueChanged="HiddenField1_ValueChanged" Value='' />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Guardar" PostBackUrl="~/actualizarRegistro.aspx" />
        <br />
        <br />
    </form>
</body>
</html>
