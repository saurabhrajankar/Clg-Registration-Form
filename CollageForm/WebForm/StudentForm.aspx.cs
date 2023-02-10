using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollageForm.WebForm
{
    public partial class StudentForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
                
            } 
        }
        static string connectionstring = ConfigurationManager.ConnectionStrings["CollegeformConnectionString"].ConnectionString;
        SqlConnection cs = new SqlConnection(connectionstring);
        protected void btsubmit_Click(object sender, EventArgs e)
        {
            cs.Open();
            SqlCommand cmd= new SqlCommand("stdform", cs);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Bill_date", DateTime.Now.ToString("yyyy-MM-dd"));
            cmd.Parameters.AddWithValue("@Name", lblfirstname.Text + " " + lbllastname.Text);
            cmd.Parameters.AddWithValue("@Gender", ddlgender.SelectedValue);
            cmd.Parameters.AddWithValue("@Date", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Address", lbladdress.Text);
            cmd.Parameters.AddWithValue("@Mobile_No", lblmobile.Text);
            cmd.Parameters.AddWithValue("@Email", lblemail.Text);
            cmd.Parameters.AddWithValue("Course", dllcourses.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Course_fee", Fees.Text);
            var a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                ClientScript.RegisterStartupScript(typeof(Page), "script", "alert('Registration successfully');", true);
                Response.Redirect("DetailsRecipt.aspx");
               
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>('Registration failed !!')</script>");
               
            }
            cs.Close();
        }
        protected void dllcourses_SelectedIndexChanged1(object sender, EventArgs e)
        {
            if (dllcourses.SelectedValue == "")
            {
                Label2.Text = "Please Select a course";
            }
            else
            {
                Fees.Text = dllcourses.SelectedValue;
            }
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;   
            }
        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox2.Text=Calendar1.SelectedDate.ToString("dd/MM/yyy");
            Calendar1.Visible= false;
        }

        protected void btreset_Click(object sender, EventArgs e)
        {
            lblfirstname.Text = "";
            lbllastname.Text = "";
            TextBox2.Text = "";
            lbladdress.Text = "";
            lblemail.Text = "";
            lblmobile.Text = "";

        }
    }
}