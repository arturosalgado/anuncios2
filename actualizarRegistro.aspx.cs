using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class actualizarRegistro : System.Web.UI.Page
{
    int Id;
    string titulo;
    string description;
    int color_id;
    int marca_id; 
    protected void Page_Load(object sender, EventArgs e)
    {

       
        titulo =  (string)(Request["TextBox1"]);
        Id = int.Parse((string)(Request["HiddenField1"]));
        description  = (string)(Request["TextBox2"]);
        color_id = int.Parse((Request["DropDownList1"]));
        marca_id = int.Parse((Request["DropDownList2"]));


   
       this.SqlDataSource1.Update();
       Response.Redirect("Default.aspx");
    }


    protected void myUpdate(object sender, SqlDataSourceCommandEventArgs  e)
    {
        e.Command.Parameters["@id"].Value = Id;
        e.Command.Parameters["@color_id"].Value = this.color_id;
        e.Command.Parameters["@description"].Value = this.description;
        e.Command.Parameters["@title"].Value = this.titulo;

        e.Command.Parameters["@marca_id"].Value = marca_id;
    
    }
}