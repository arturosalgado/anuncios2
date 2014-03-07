<%@ Page Language="C#" AutoEventWireup="true" CodeFile="actualizarRegistro.aspx.cs" Inherits="actualizarRegistro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource 
            
            OnUpdating="myUpdate"
            ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:autosConnectionString1 %>" DeleteCommand="DELETE FROM [anuncios] WHERE [id] = @id" InsertCommand="INSERT INTO [anuncios] ([title], [description], [marca_id], [color_id]) VALUES (@title, @description, @marca_id, @color_id)" SelectCommand="SELECT [id], [title], [description], [marca_id], [color_id] FROM [anuncios]" UpdateCommand="UPDATE [anuncios] SET [title] = @title, [description] = @description, [marca_id] = @marca_id, [color_id] = @color_id WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="marca_id" Type="Int16" />
                <asp:Parameter Name="color_id" Type="Int16" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="marca_id" Type="Int16" />
                <asp:Parameter Name="color_id" Type="Int16" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
