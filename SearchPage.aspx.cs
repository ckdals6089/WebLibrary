using System;
using System.Collections;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Data;
public partial class Setuppage : System.Web.UI.Page
{
    private string selectGenreValue = "";
    private string selectFriendValue = "";

    SqlConnection cc = new SqlConnection("Data Source=DESKTOP-GDH6C6U;Initial Catalog=ASPNET;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            SqlConnection conn;
            SqlCommand comm;
            string connectionString = ConfigurationManager.ConnectionStrings["ASPNETConnectionString3"].ConnectionString;
            conn = new SqlConnection(connectionString);

            try
            {
                string query = "select distinct(genre) from book where genre != '';";
                comm = new SqlCommand(query, conn);
                conn.Open();
                SqlDataReader reader = comm.ExecuteReader();
                DropDownList1.DataSource = reader;
                DropDownList1.DataTextField = "genre";
                DropDownList1.DataValueField = "genre";
                DropDownList1.DataBind();
                reader.Close();
                DropDownList1.Items.Insert(0, new ListItem("All", "All"));

                query = "select distinct(FriendName) from book where FriendName != '';";
                comm = new SqlCommand(query, conn);
                reader = comm.ExecuteReader();

                DropDownList2.DataSource = reader;
                DropDownList2.DataTextField = "FriendName";
                DropDownList2.DataValueField = "FriendName";
                DropDownList2.DataBind();
                reader.Close();
                DropDownList2.Items.Insert(0, new ListItem("All", "All"));


            }
            finally
            {
                conn.Close();
            }

        }

    }
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        selectGenreValue = DropDownList1.SelectedValue;
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        selectGenreValue = DropDownList2.SelectedValue;
    }



    protected void btnSearch_Click(object sender, EventArgs e)
    {


    }



    protected void btnSearch_Click1(object sender, EventArgs e)
    {
        
        SqlConnection conn;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["ASPNETConnectionString3"].ConnectionString;
        conn = new SqlConnection(connectionString);

        selectGenreValue = DropDownList1.SelectedValue;
        selectFriendValue = DropDownList2.SelectedValue;

        try
        {
            string query = "Select * from BOOK";
            if (selectGenreValue != "All")
            {
                query += " where genre = @genre";
            }
            if (selectFriendValue != "All")
            {
                if (query.Contains("where"))
                {
                    query += " and FriendName = @FriendName";
                }
                else
                {
                    query += " where FriendName = @FriendName";

                }
            }
            query += ";";
            comm = new SqlCommand(query, conn);

            SqlParameter para = new SqlParameter("@genre", System.Data.SqlDbType.NVarChar, 30);
            para.Value = selectGenreValue;
            comm.Parameters.Add(para);

            para = new SqlParameter("@FriendName", System.Data.SqlDbType.NVarChar, 30);
            para.Value = selectFriendValue;
            comm.Parameters.Add(para);

            conn.Open();
            SqlDataReader reader = comm.ExecuteReader();

            GridView1.DataSource = reader;
            GridView1.DataBind();

            reader.Close();
        }
        finally
        {
            conn.Close();
        }
    }

    
}