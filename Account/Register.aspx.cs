using Microsoft.AspNet.Identity;
using System;
using System.Linq;
using System.Web.UI;
using WebSite3;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Configuration;

public partial class Account_Register : Page
{
    protected void CreateUser_Click(object sender, EventArgs e)
    {
        var manager = new UserManager();
        var user = new ApplicationUser() { UserName = UserName.Text };
        IdentityResult result = manager.Create(user, Password.Text);
        if (result.Succeeded)
        {
            // For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
            //string code = manager.GenerateEmailConfirmationToken(user.Id);
            //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
            //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

            //signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
            string cs = ConfigurationManager.ConnectionStrings["CSUserData"].ToString();
            SqlConnection conUsers = new SqlConnection(cs);
            string sql = "Insert INTO [CentricUsers] ([userId], [firstName], [lastName], [Twitter], [HireDate], [Title],  region) Values (@userID, @firstName, @lastName, @twitter, @HireDate, @title, @region)";
            SqlCommand comNewUse = new SqlCommand(sql, conUsers);
            comNewUse.Parameters.Add("@userID", System.Data.SqlDbType.NVarChar, 50).Value = UserName.Text;
            comNewUse.Parameters.Add("@lastName", System.Data.SqlDbType.NVarChar, 50).Value = lastTxt.Text;
            comNewUse.Parameters.Add("@firstName", System.Data.SqlDbType.NVarChar, 50).Value = firstTxt.Text;
            comNewUse.Parameters.Add("@twitter", System.Data.SqlDbType.NVarChar, 50).Value = Twitter.Text;
            comNewUse.Parameters.Add("@HireDate", System.Data.SqlDbType.NVarChar, 50).Value = HireDate.Text;
            comNewUse.Parameters.Add("@title", System.Data.SqlDbType.NVarChar, 50).Value = title.Text;
            
            comNewUse.Parameters.Add("@region", System.Data.SqlDbType.NVarChar, 50).Value = region.Text;
            try
            {
                conUsers.Open();
                comNewUse.ExecuteNonQuery();
            }

            catch (Exception ex)
            {
                lblOutput.Text = "Sorry, unable to store user data.  Standard exception message is: " + ex.Message;
                return;
            }
            finally
            {
                conUsers.Close();
            }
            IdentityHelper.SignIn(manager, user, isPersistent: false);
            IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
        }
        else
        {
            ErrorMessage.Text = result.Errors.FirstOrDefault();
        }
    }
}