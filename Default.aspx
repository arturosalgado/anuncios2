<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <div style="margin:0 auto;width:900px;">
            <%
                
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {%>
                      
                            <div style="border:1px solid #ccc; float:left; border-radius:6px;margin-right:10px;display:inline-block;min-width:200px;text-align:center;">

                                <h1 style="padding:10px;"><%= dr.GetString(1) %></h1>

                                
                            </div>
         
                    <%}
                }   
                
                
            %>
    </div>
    
</body>
</html>

