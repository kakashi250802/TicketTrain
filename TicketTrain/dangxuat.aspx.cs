using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TicketTrain
{
    public partial class dangxuat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon();
            // -1 where user logout
            // Application.Lock();
            // Application["TotalOnlineUsers"] = (int)Application["TotalOnlineUsers"] - 1;
            // Application.UnLock();
            // Response.Redirect("index.aspx");
        }
    }
}