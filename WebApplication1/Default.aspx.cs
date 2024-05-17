using System;
using System.Data.SqlClient;
using System.Text;

namespace WebApplication1
{
    public partial class _Default : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\Downloads\WebApplication1\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ExecuteQueryAndDisplayResult(string query, string heading)
        {
            StringBuilder htmlOutput = new StringBuilder();
            htmlOutput.Append($"<h2>{heading}</h2>");

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                try
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.HasRows)
                    {
                        htmlOutput.Append("<table border='1'><tr>");
                        for (int i = 0; i < reader.FieldCount; i++)
                        {
                            htmlOutput.Append($"<th>{reader.GetName(i)}</th>");
                        }
                        htmlOutput.Append("</tr>");

                        while (reader.Read())
                        {
                            htmlOutput.Append("<tr>");
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                htmlOutput.Append($"<td>{reader.GetValue(i)}</td>");
                            }
                            htmlOutput.Append("</tr>");
                        }
                        htmlOutput.Append("</table>");
                    }
                    else
                    {
                        htmlOutput.Append("<p>No data found.</p>");
                    }
                    reader.Close();
                }
                catch (Exception ex)
                {
                    htmlOutput.Append($"<p>Error: {ex.Message}</p>");
                }
            }

            outputConsole.InnerHtml = htmlOutput.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string query = "SELECT TOP 10 Donor_ID, First_Name, Last_Name FROM DONOR;";
            string heading = "Limiting rows and columns: This query retrieves a limited number of donor records, specifically their ID, first name, and last name.";
            ExecuteQueryAndDisplayResult(query, heading);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string query = "SELECT Donor_ID, First_Name, Last_Name, Date_of_Birth, Phone_Number, Blood_Type FROM DONOR";
            string heading = "Limiting rows and columns: This query retrieves a limited number of donor records, specifically their ID, first name, and last name.";
            ExecuteQueryAndDisplayResult(query, heading);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string query = "SELECT * FROM DONOR ORDER BY Last_Name ASC;";
            string heading = "Sorting: This query fetches all donor records from the database and sorts them alphabetically by last name in ascending order.";
            ExecuteQueryAndDisplayResult(query, heading);
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            string query = "SELECT * FROM DONOR WHERE Last_Name LIKE '%Brown%' AND (Blood_Type = 'O' OR Blood_Type = 'A');";
            string heading = "Filtering by last name and blood type: This query selects donor records where the last name contains 'Brown' and the blood type is either O or A.";
            ExecuteQueryAndDisplayResult(query, heading);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string query = "SELECT CONCAT(First_Name, ' ', Last_Name) AS Full_Name FROM DONOR;";
            string heading = "Concatenating names: This query combines the first name and last name of donors to create a full name.";
            ExecuteQueryAndDisplayResult(query, heading);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string query = "SELECT ROUND(Weight, 2) AS Rounded_Weight FROM DONOR;";
            string heading = "Rounding weights: This query rounds the weight of donors.";
            ExecuteQueryAndDisplayResult(query, heading);
        }


        protected void Button6_Click(object sender, EventArgs e)
        {
            string query = "SELECT Donor_ID, First_Name, Last_Name, " +
                           "DATEDIFF(YEAR, Date_of_Birth, GETDATE()) AS Age " +
                           "FROM DONOR;";
            string heading = "Calculating age: This query calculates the age of donors based on their date of birth.";
            ExecuteQueryAndDisplayResult(query, heading);
        }


        protected void Button8_Click(object sender, EventArgs e)
        {
            string query = "SELECT Blood_Type, COUNT(*) AS Donor_Count FROM DONOR GROUP BY Blood_Type;";
            string heading = "Aggregating donor counts by blood type: This query groups donor records by blood type and counts the number of donors for each type.";
            ExecuteQueryAndDisplayResult(query, heading);
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            string query = "SELECT Blood_Type, COUNT(*) AS Donor_Count FROM DONOR GROUP BY Blood_Type;";
            string heading = "Checking donor data integrity: This query verifies the consistency of donor data by counting the number of records for each blood type.";
            ExecuteQueryAndDisplayResult(query, heading);
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            string query = "SELECT d.First_Name, d.Last_Name, b.Donation_Date FROM DONOR d JOIN BLOOD_BAG b ON d.Donor_ID = b.Donor_ID;";
            string heading = "Retrieving donor and donation information: This query joins donor and blood bag tables to retrieve the first name, last name, and donation date of donors.";
            ExecuteQueryAndDisplayResult(query, heading);
        }
    }
}
