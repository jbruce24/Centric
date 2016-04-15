using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using WebSite3;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Configuration;

public partial class Account_Manage : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        txtInvisible.Text = HttpContext.Current.User.Identity.Name;

        DateTime Yesterday = DateTime.Now.AddDays(-1);
        time.Text = Yesterday.ToString();

        //string strconnection = ConfigurationManager.ConnectionStrings["CSUserData"].ToString();
        //SqlConnection myConnection = new SqlConnection(strconnection);
        //string str = "Select userID, firstName, lastName, twitter, HireDate, title, department, region"


    }


    //make a select statement that pulls in the value of the text box 

}