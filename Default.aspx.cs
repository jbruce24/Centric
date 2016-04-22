using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Configuration;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MaintainScrollPositionOnPostBack = true;
        txtUser.Text = HttpContext.Current.User.Identity.Name;
    }

    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //string strconnection = ConfigurationManager.ConnectionStrings["CSUserData"].ToString();
        //SqlConnection myConnection = new SqlConnection(strconnection);
        //string strSql = "UPDATE CENTRICUSERS SET POINTS = POINTS + 1 WHERE UserID = '" + DetailsView1.DataKey[0].ToString() + "'";
        //SqlCommand myCommand = new SqlCommand(strSql, myConnection);

        //myConnection.Open();
        //int intCnt = myCommand.ExecuteNonQuery();
        //myConnection.Close();

        //DetailsView1.DataBind();
        
    }
}