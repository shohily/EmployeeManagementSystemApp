using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace EmployeeManagementSystemApp
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
         string connectionstring = @"server =USER;database=DB_EmployeeInformation;integrated security=true";
        private void dataGridView2_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void saveButton_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(idTextBox.Text);
            string name = nameTextBox.Text;
            string designation = designationTextBox.Text;
            string joinDate = joinDateTextBox.Text;
            string address = addressTextBox.Text;

            SqlConnection aConnection = new SqlConnection(connectionstring);
            aConnection.Open();

            string query = string.Format(@"insert into Employee_Table(ID,Name,Designation,JoinDate,Address)
            values('{0}','{1}','{2}','{3}','{4}')", id, name, designation, joinDate, address);
            SqlCommand aCommand = new SqlCommand(query, aConnection);

            MessageBox.Show("Data has been inserted");

            idTextBox.Text = "";
            nameTextBox.Text = "";
            designationTextBox.Text = "";
            joinDateTextBox.Text = "";
            addressTextBox.Text = "";

            aCommand.ExecuteNonQuery();

            aConnection.Close();
        }
         
        private void displayButton_Click(object sender, EventArgs e)
        {
            dataGridView.Rows.Clear();
            dataGridView.Refresh();
            SqlConnection aConnection = new SqlConnection(connectionstring);
            aConnection.Open();

            string tableSql = "SELECT * FROM Employee_Table";
            SqlCommand selectAllTableSqlCommand = new SqlCommand(tableSql, aConnection);

            SqlDataReader tableReader = selectAllTableSqlCommand.ExecuteReader();

            if (tableReader != null)
                while (tableReader.Read())
                {
                    dataGridView.Rows.Add(tableReader[0].ToString(), tableReader[1].ToString(),
                                                 tableReader[2].ToString(), tableReader[3].ToString(),
                                                 tableReader[4].ToString());
                }
            tableReader.Close();
            aConnection.Close();
           
        }
    }
}
