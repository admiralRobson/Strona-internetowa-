using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SQL_insert_DodajSQL : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        SqlDataSource2.InsertParameters["Kraj"].DefaultValue = DropDownList1.SelectedValue;
        SqlDataSource2.InsertParameters["Nazwa_sluzby"].DefaultValue = TextBox1.Text;
        SqlDataSource2.InsertParameters["Przyblizona_liczba_agentow"].DefaultValue = TextBox2.Text;
        SqlDataSource2.InsertParameters["Data_zalozenia"].DefaultValue = Calendar1.SelectedDate.ToLongDateString();

        SqlDataSource2.Insert();
    }
}