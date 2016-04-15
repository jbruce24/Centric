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
using System.Collections;

public partial class About : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MaintainScrollPositionOnPostBack = true;
        
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string strconnection = ConfigurationManager.ConnectionStrings["CSUserData"].ToString();
       
        string strSql = "Select [userID], [firstName], lastName, twitter, HireDate, title, department, region, points FROM CentricUsers WHERE userID = '" + GridView1.SelectedValue +"'";
        
        dvProfSQL.SelectCommand = strSql;
        dvProfSQL.SelectParameters.Clear();
        
        dvProf.DataBind();
   
        dvProf.Visible = true;
        GridView1.Visible = false;
        DetailsView1.Visible = true;
        exc.Visible = true;
        steward.Visible = true;
        cult.Visible = true;
        integ.Visible = true;
        innovate.Visible = true;
        passion.Visible = true;
        balanced.Visible = true;
    }
    
protected void recognition_TextChanged(object sender, EventArgs e)
    {

        dvProf.Visible = false;
    }

    protected void search_Click(object sender, EventArgs e)
    {
        if (userSearch.Text == "")
        {
            GridView1.Visible = false;
            lblError.Text = "Please insert a value into the search bar";
        }
        else
        {

            GridView1.Visible = true;
            string strconnection = ConfigurationManager.ConnectionStrings["CSUserData"].ToString();
            SqlConnection myConnection = new SqlConnection(strconnection);
            string strSelect = "SELECT [userID], [firstName], lastName, twitter, HireDate, title, department, region FROM CentricUsers WHERE userID + firstName + lastName LIKE @userSearch";
            SqlCommand myCommand = new SqlCommand(strSelect, myConnection);
            myCommand.Parameters.Add("@userSearch", System.Data.SqlDbType.NVarChar, 50).Value = "%" + userSearch.Text + "%";
            myConnection.Open();
            SqlDataReader myReader = myCommand.ExecuteReader();
            GridView1.DataSource = myReader;
            GridView1.DataBind();
            myReader.Close();
            myConnection.Close();
            userSearch.Text = "";
            lblError.Text = "";
        }
        dvProf.Visible = false;
        DetailsView1.Visible = false;
        exc.Visible = false;
        steward.Visible = false;
        cult.Visible = false;
        integ.Visible = false;
        innovate.Visible = false;
        passion.Visible = false;
        balanced.Visible = false;
    }

    protected void exc_Click(object sender, EventArgs e)
    {
        string strconnection = ConfigurationManager.ConnectionStrings["CSUserData"].ToString();
        SqlConnection myConnection = new SqlConnection(strconnection);
        string strSql = "UPDATE CENTRICUSERS SET excellence = excellence + 1 WHERE UserID = '" + dvProf.DataKey[0].ToString() + "'";
        SqlCommand myCommand = new SqlCommand(strSql, myConnection);

        myConnection.Open();
        int intCnt = myCommand.ExecuteNonQuery();
        myConnection.Close();

        DetailsView1.DataBind();
    }

    protected void cult_Click(object sender, EventArgs e)
    {
        string strconnection = ConfigurationManager.ConnectionStrings["CSUserData"].ToString();
        SqlConnection myConnection = new SqlConnection(strconnection);
        string strSql = "UPDATE CENTRICUSERS SET culture = culture + 1 WHERE UserID = '" + dvProf.DataKey[0].ToString() + "'";
        SqlCommand myCommand = new SqlCommand(strSql, myConnection);

        myConnection.Open();
        int intCnt = myCommand.ExecuteNonQuery();
        myConnection.Close();

        DetailsView1.DataBind();
    }

    protected void integ_Click(object sender, EventArgs e)
    {
        string strconnection = ConfigurationManager.ConnectionStrings["CSUserData"].ToString();
        SqlConnection myConnection = new SqlConnection(strconnection);
        string strSql = "UPDATE CENTRICUSERS SET integrity = integrity + 1 WHERE UserID = '" + dvProf.DataKey[0].ToString() + "'";
        SqlCommand myCommand = new SqlCommand(strSql, myConnection);

        myConnection.Open();
        int intCnt = myCommand.ExecuteNonQuery();
        myConnection.Close();

        DetailsView1.DataBind();
    }

    protected void steward_Click(object sender, EventArgs e)
    {
        string strconnection = ConfigurationManager.ConnectionStrings["CSUserData"].ToString();
        SqlConnection myConnection = new SqlConnection(strconnection);
        string strSql = "UPDATE CENTRICUSERS SET steward = steward + 1 WHERE UserID = '" + dvProf.DataKey[0].ToString() + "'";
        SqlCommand myCommand = new SqlCommand(strSql, myConnection);

        myConnection.Open();
        int intCnt = myCommand.ExecuteNonQuery();
        myConnection.Close();

        DetailsView1.DataBind();
    }

    protected void innovate_Click(object sender, EventArgs e)
    {
        string strconnection = ConfigurationManager.ConnectionStrings["CSUserData"].ToString();
        SqlConnection myConnection = new SqlConnection(strconnection);
        string strSql = "UPDATE CENTRICUSERS SET innovate = innovate + 1 WHERE UserID = '" + dvProf.DataKey[0].ToString() + "'";
        SqlCommand myCommand = new SqlCommand(strSql, myConnection);

        myConnection.Open();
        int intCnt = myCommand.ExecuteNonQuery();
        myConnection.Close();

        DetailsView1.DataBind();
    }

    protected void passion_Click(object sender, EventArgs e)
    {
        string strconnection = ConfigurationManager.ConnectionStrings["CSUserData"].ToString();
        SqlConnection myConnection = new SqlConnection(strconnection);
        string strSql = "UPDATE CENTRICUSERS SET passion = passion + 1 WHERE UserID = '" + dvProf.DataKey[0].ToString() + "'";
        SqlCommand myCommand = new SqlCommand(strSql, myConnection);

        myConnection.Open();
        int intCnt = myCommand.ExecuteNonQuery();
        myConnection.Close();

        DetailsView1.DataBind();
    }

    protected void balanced_Click(object sender, EventArgs e)
    {
        string strconnection = ConfigurationManager.ConnectionStrings["CSUserData"].ToString();
        SqlConnection myConnection = new SqlConnection(strconnection);
        string strSql = "UPDATE CENTRICUSERS SET balanced = balanced + 1 WHERE UserID = '" + dvProf.DataKey[0].ToString() + "'";
        SqlCommand myCommand = new SqlCommand(strSql, myConnection);

        myConnection.Open();
        int intCnt = myCommand.ExecuteNonQuery();
        myConnection.Close();

        DetailsView1.DataBind();
    }


}