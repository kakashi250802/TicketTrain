using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace TicketTrain
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {

        }
        protected void Session_Start(object sender, EventArgs e)
        {
            //user
            Session["login"] = false;
            Session["Id"] = "";
            Session["NickName"] = "";
            Session["PhoneNumber"] = "";
            Session["Pass"] = "";
            // search info
            Session["placeStart"] = "";
            Session["placeEnd"] = "";
            Session["TimeBooking"] = "";
        }
        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}