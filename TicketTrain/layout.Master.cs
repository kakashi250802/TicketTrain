using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TicketTrain
{
    public partial class layout : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string html = "";

            if ((bool)Session["login"] == true && (string)Session["NickName"] == "admin@gmail.com")
            {

                html += "<p>Tài khoản: <span>" + Session["NickName"] + "</span></p>";
                html += "<p>";
                html += "<a href=\"\" class=\"control_account\">Giỏ Hàng |</a>";
                html += "<a href=\"dangxuat.aspx\" class=\"dangxuat\">Đăng xuất</a>";
                html += "</p>";
                controlAccount.InnerHtml = html;
            }

            else if ((bool)Session["login"] == true)
            {

                html += "<p>Tài khoản: <span>" + Session["NickName"] + "</span></p>";
                html += "<p>";
                html += "<a href=\"GioHang.aspx\" class=\"control_account none\">Giỏ Hàng |</a>";
                html += "<a href=\"dangxuat.aspx\" class=\"dangxuat\">Đăng xuất</a>";
                html += "</p>";
                controlAccount.InnerHtml = html;
            }
            else
            {
                html += "<a href=\"Login.aspx\" class=\"control_account login none\">Đăng Nhập </a>";
                controlAccount.InnerHtml = html;
            }
        }
    }
}