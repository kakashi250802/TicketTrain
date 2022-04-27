using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;
namespace TicketTrain
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if (Request.Form["searchSubmit"] == "true")
            {
                Session["placeStart"] = Request.Form["placeBegin"];
                Session["placeEnd"] = Request.Form["placeEnd"];
                Session["TimeBooking"] = Request.Form["timeBooking"];
                  Response.Redirect("ChuyenDi.aspx");
            }
                
        }
    }
}