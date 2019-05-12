using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SQL_insert_DodajDoSQL : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["Id"].DefaultValue = DropDownList1.SelectedValue;
        SqlDataSource1.InsertParameters["Nazwa_sluzby"].DefaultValue = TextBox1.Text;
        SqlDataSource1.InsertParameters["column1"].DefaultValue = TextBox2.Text;
        SqlDataSource1.InsertParameters["column2"].DefaultValue = TextBox3.Text;
        SqlDataSource1.InsertParameters["Data_zalozenia"].DefaultValue = Calendar1.SelectedDate.ToLongDateString();

        SqlDataSource1.Insert();
    }
}