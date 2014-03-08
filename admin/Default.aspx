<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                <asp:BoundField DataField="marca_id" HeaderText="marca_id" SortExpression="marca_id" />
                
                
                <asp:BoundField DataField="color_id" HeaderText="color_id" SortExpression="color_id" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <!---- this is just a comment --->
                       <a href='EditMe.aspx?id=<%# Eval("id") %>'>Editar</a>

                    </ItemTemplate>

                </asp:TemplateField>

            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:autosConnectionString1 %>" DeleteCommand="DELETE FROM [anuncios] WHERE [id] = @id" InsertCommand="INSERT INTO [anuncios] ([title], [description], [marca_id], [color_id]) VALUES (@title, @description, @marca_id, @color_id)" SelectCommand="SELECT anuncios.id, anuncios.title, anuncios.description, anuncios.marca_id, anuncios.color_id, colors.name, marcas.name AS Expr1 FROM anuncios INNER JOIN colors ON anuncios.color_id = colors.id INNER JOIN marcas ON anuncios.marca_id = marcas.id" UpdateCommand="UPDATE [anuncios] SET [title] = @title, [description] = @description, [marca_id] = @marca_id, [color_id] = @color_id WHERE [id] = @id">
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
