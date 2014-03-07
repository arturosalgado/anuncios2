using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Edit : System.Web.UI.Page
{

    System.Data.DataView dv;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack) 
        {


              dv = (System.Data.DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            // todo , verificar que el arreglo tenga elementos. 
          
              this.TextBox1.Text = dv[0]["title"].ToString();
              this.TextBox2.Text = dv[0]["description"].ToString();
              this.HiddenField1.Value = dv[0]["id"].ToString();

             
              if (dv[0]["marca_id"]!="" )
             this.DropDownList1.SelectedValue = dv[0]["marca_id"].ToString();

              if (dv[0]["color_id"] != "")
              this.DropDownList2.SelectedValue = dv[0]["color_id"].ToString();

        }
   

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void HiddenField1_ValueChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}