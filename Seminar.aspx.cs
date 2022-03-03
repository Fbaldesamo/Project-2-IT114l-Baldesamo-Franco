using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;


namespace Project_2_IT114l_Baldesamo_Franco
{
    public partial class Seminar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible = false;
            ValidationSettings: UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection my_con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\Others\\Downloads\\Seminar.accdb");
            my_con.Open();
            OleDbCommand o_cmd = new OleDbCommand("insert into Enrol values(@Sem_code,@En_num,@En_name)", my_con);
            o_cmd.Parameters.AddWithValue("@Sem_Code", TextBox1.Text.Trim());
            o_cmd.Parameters.AddWithValue("@En_num", TextBox2.Text.Trim());
            o_cmd.Parameters.AddWithValue("@En_name", TextBox3.Text.Trim());
            
            //o_cmd.Parameters.AddWithValue("d", TextBox4.Text);
            int i = o_cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Label2.Text = "Data inserted successfully";
            }
            my_con.Close();


            


        }
    }
}