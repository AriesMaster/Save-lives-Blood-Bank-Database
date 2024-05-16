using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Reflection.Emit;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Text;
using RestSharp;
using RestSharp.Authenticators;
using Microsoft.Ajax.Utilities;

namespace WebApplication1
{
    public partial class _Default : System.Web.UI.Page
    {
        //string constr = @"Data Source=192.168.152.237;Persist Security Info=True;User ID=PROJECTBLOODBANK;Password=CMPG321;";

        public SqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {
        }




        protected void Button3_Click(object sender, EventArgs e)
        {
            // SQL query to select limited donor data
            string query = "SELECT Donor_ID, First_Name, Last_Name, Date_of_Birth, Phone_Number, Blood_Type FROM DONOR";

            // Your connection string to connect to the database
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\Downloads\WebApplication1\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True";

            // StringBuilder to construct HTML output
            StringBuilder htmlOutput = new StringBuilder();

            // Using SqlConnection to connect to the database
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Creating a SqlCommand with your query and connection
                SqlCommand command = new SqlCommand(query, connection);

                try
                {
                    // Opening the connection
                    connection.Open();

                    // Executing the command and getting a data reader
                    SqlDataReader reader = command.ExecuteReader();

                    // Checking if there are rows returned
                    if (reader.HasRows)
                    {
                        // Looping through each row in the reader
                        while (reader.Read())
                        {
                            // Retrieving data from the reader
                            int donorID = reader.GetInt32(0);
                            string firstName = reader.GetString(1);
                            string lastName = reader.GetString(2);
                            DateTime dateOfBirth = reader.GetDateTime(3);
                            string phoneNumber = reader.GetString(4);
                            string bloodType = reader.GetString(5);

                            // Constructing HTML output for the current donor
                            htmlOutput.Append("<p>");
                            htmlOutput.Append($"Donor ID: {donorID}, Name: {firstName} {lastName}, ");
                            htmlOutput.Append($"Date of Birth: {dateOfBirth}, Phone Number: {phoneNumber}, Blood Type: {bloodType}");
                            htmlOutput.Append("</p>");
                        }
                    }
                    else
                    {
                        // No rows returned
                        htmlOutput.Append("<p>No donor data found.</p>");
                    }

                    // Closing the data reader
                    reader.Close();
                }
                catch (Exception ex)
                {
                    // Handling any exceptions
                    htmlOutput.Append("<p>Error: " + ex.Message + "</p>");
                }
            }

            // Setting the InnerHtml property of the outputConsole div to display the HTML content
            outputConsole.InnerHtml = htmlOutput.ToString();


        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            // Connection string to your SQL Server database
            
                string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\Downloads\WebApplication1\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True";

           


            try
            {
                // Attempt to establish a connection
                using (SqlConnection conn = new SqlConnection(constr))
                {
                    // Open the connection
                    conn.Open();

                    // Connection established successfully
                    Label1.Text = "Connection established successfully.";
                }
            }
            catch (Exception ex)
            {
                // Connection failed, display the error message
                Label1.Text = "Connection failed: " + ex.Message;
            }

           



        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }

        protected void Button7_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {

        }

        protected void Button8_Click(object sender, EventArgs e)
        {

        }

        protected void Button9_Click(object sender, EventArgs e)
        {

        }

        protected void Button10_Click(object sender, EventArgs e)
        {

        }
    }
}