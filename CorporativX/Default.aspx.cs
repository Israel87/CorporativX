using CorporativX.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CorporativX
{
    public partial class _Default : Page
    {
        string connection = DbConnection.Connection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {

            using (SqlConnection conn = new SqlConnection(connection))
            {
                try
                {
                    SqlDataAdapter da = new SqlDataAdapter($" Select* from [Administrators] Where Email =" +
                       $" '"+ email.Value +"' and Password = '" + password.Value + "'", conn);

                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        Response.Redirect("Dashboard.aspx");
                    }
                    else {
                        ClientScript.RegisterStartupScript(this.GetType(), "login", "loginAlert()", true);
                    }
                }
                catch (Exception ex)
                {
                    var error = ex.Message.ToString();
                }
            }
        } 
    }
}