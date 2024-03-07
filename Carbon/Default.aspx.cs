using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;

namespace Carbon
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        
        protected void btnGetStarted_Click(object sender, EventArgs e)
        {


            // Redirect to the default login page
            Response.Redirect("~/Account/Login.aspx"); // Assuming the login page is named Login.aspx and located in the Account folder
        }
    }
}