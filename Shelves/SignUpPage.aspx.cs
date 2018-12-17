using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Shelves
{
    public partial class SignUpPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtPassword.Text != txtConfirmpw.Text)
            {
                Response.Write("<script>alert('Password mismatch! Please, try again')</script>");
                txtName.Text = "";
                txtEmail.Text = "";
                txtUsername.Text = "";
                txtPassword.Text = "";
                txtConfirmpw.Text = "";
                txtDob.Text = "";
            }
            else
            {
                string constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
                SqlConnection con = new SqlConnection(constr);
                con.Open();
                /*DateTime dateob;
                string strDate = txtDob.Text;
                var dts = strDate.Split('-');
                var day = Convert.ToInt32(dts[0]);
                var month = Convert.ToInt32(dts[1]);
                var year = Convert.ToInt32(dts[2]);

                dateob = new DateTime(year, month, day);*/

                // string strdt = txtDob.Text.ToString("dd/mm/yyyy");

                SqlCommand cmd = new SqlCommand("insert into loginLibTab values( @Name, @Username, @Password, @EmailId, @Dob)", con);
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                cmd.Parameters.AddWithValue("@EmailId", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Dob", txtDob.Text);
                cmd.ExecuteNonQuery();

                Response.Redirect("~/LogInPage.aspx");
            }
        }
    }
}