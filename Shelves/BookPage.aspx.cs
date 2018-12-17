using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shelves
{
    public partial class BookPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void menuBkbar_MenuItemClick(object sender, MenuEventArgs e)
        {
            string str = Menu.MenuItemClickCommandName;
            MenuItem menu_item = new MenuItem(str);
            if (menu_item.Text == "Books")
            {
                Response.Redirect("~/BookPage.aspx");
                GridView1.Visible = false;
            }
            else if (menu_item.Text == "Top Books")
            {
                Response.Redirect("BookPage.aspx");
                GridView1.Visible = false;
            }
            else
            {
                string itemStr = menu_item.Text;
                string connstr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
                SqlConnection conn = new SqlConnection(connstr);
                try
                {
                    conn.Open();
                    SqlCommand scmd = new SqlCommand("Select * from BookDirTab where Genre like '%" + itemStr + "%'", conn);
                    SqlDataAdapter sda = new SqlDataAdapter(scmd);
                    DataTable dtab = new DataTable();

                    sda.Fill(dtab);
                    if (dtab.Rows.Count == 0)
                    {
                        lblName.Text = "No books of this genre exist as of now";
                    }
                    else
                    {
                        GridView1.DataSource = dtab;
                        GridView1.DataBind();
                        GridView1.Visible = true;
                    }
                }
                catch (Exception exc)
                {
                    Response.Write(exc.Message);
                    throw;
                }
                conn.Close();
            }
        }

        protected void btnSearch_Click(object sender, ImageClickEventArgs e)
        {
            string searchQuery = txtSearch.Text;
            string strcon = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(strcon);
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * from bookDirTab where ((BookName like'%" + searchQuery + "%') or (Author like'%" + searchQuery + "%') or (Genre like'%" + searchQuery + "%'))", conn);
                //SqlDataReader reader = cmd.ExecuteReader();
                //reader.Read();
                //lblName.Text = reader["BookName"].ToString();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                da.Fill(dt);
                if (dt.Rows.Count == 0)
                {
                }
                else
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                throw;
            }
            conn.Close();
        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {

        }
    }
}