using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class AddStudent : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtAuthor.Text = "";
        txtComment.InnerText = "";
        txtIsbn.Text = "";
        txtLentFd.Text = "";
        txtnameofBook.Text = "";
        txtPages.Text = "";
        dropGenre.Text = "Select";
        dropState.Text = "Select";
        RequiredFieldValidator1.Text = "";
        RequiredFieldValidator2.Text = "";
        RequiredFieldValidator3.Text = "";
        reqState.Text = "";
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        
        BindGrid();
        Response.Redirect("Book.aspx");
    }

    private void BindGrid()
    {
        SqlConnection conn;
        SqlCommand comm;
        //SqlDataReader reader;
        string connectionString = ConfigurationManager.ConnectionStrings["ASPNETConnectionString3"].ConnectionString;
        conn = new SqlConnection(connectionString);

        string query = "insert into BOOK( Nameofbook, AuthorName, ISBNNumber, Genre, Commnets,Page, Lent,FriendName)"
                        + " values( @Nameofbook, @AuthorName, @ISBNNumber, @Genre, @Commnets, @Page, @Lent, @FriendName)";

        if (txtComment.InnerText.Equals(""))
        {
            txtComment.InnerText = null;
        }

        comm = new SqlCommand(query, conn);

        comm.Parameters.AddWithValue("@Nameofbook", txtnameofBook.Text);
        comm.Parameters.AddWithValue("@AuthorName", txtAuthor.Text);
        comm.Parameters.AddWithValue("@ISBNNumber", txtIsbn.Text);
        comm.Parameters.AddWithValue("@Genre", dropGenre.Text);
        comm.Parameters.AddWithValue("@Commnets", txtComment.InnerText);
        comm.Parameters.AddWithValue("@Page", Convert.ToInt32(txtPages.Text));
        comm.Parameters.AddWithValue("@Lent", Convert.ToBoolean(dropState.Text));
        comm.Parameters.AddWithValue("@FriendName", txtLentFd.Text);


        conn.Open();

        comm.ExecuteNonQuery();

        conn.Close();
    }
}