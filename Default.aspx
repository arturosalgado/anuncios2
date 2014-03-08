<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <%
                
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {%>
                      
                            <div style="border:1px solid #ccc; float:left;">

                                <h1><%= dr.GetString(1) %></h1>

                                
                            </div>
         
                    <%}
                }   
                
                
            %>
    </div>
    </form>
</body>
</html>

