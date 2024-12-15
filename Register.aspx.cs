using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class Register : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) // Ensures all validation rules are met
            {
                lblMessage.Text = "Registration successful!";
            }

        }
    }
}
