using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
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
           // Label1.Text = Application["TotalOnlineUsers"].ToString();

            string hostname = "";
            System.Net.IPHostEntry ip = new IPHostEntry();
            hostname = System.Net.Dns.GetHostName();
            /*ip = System.Net.Dns.GetHostByName(hostname);
            foreach (System.Net.IPAddress listip in ip.AddressList)
            {
                local_host.InnerText = "Địa chỉ IP của host này là :" + listip.ToString();
            }*/
        }
    }
}