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
    public partial class DangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (Request.Form["btn_dangki"] == "dangki")
                {
                    if (Request.Form["email"] == "" || Request.Form["matkhau"] == "" || Request.Form["nhaplai_matkhau"] == "")
                    {
                        string alert = "";
                        alert += "<script>alert('Tài khoản và mật khẩu không được để trống. Vui lòng nhập lại!');</script>";
                        Response.Write(alert);
                        return;
                    }

                    if (Request.Form["matkhau"].Length < 8)
                    {
                        string alert = "";
                        alert += "<script>alert('Mật khẩu ko được dưới 8 kí tự');</script>";
                        Response.Write(alert);
                        return;
                    }

                    if (Request.Form["nhaplai_matkhau"] != Request.Form["matkhau"])
                    {
                        string alert = "";
                        alert += "<script>alert('Mật khẩu ko khớp');</script>";
                        Response.Write(alert);
                        return;
                    }

                    Random r = new Random();
                    int id = r.Next(10000, 99999);

                    string path = @"E:\btl_web\TicketTrain\TicketTrain\User.xml";
                    List<Member> list = new List<Member>();

                    if (File.Exists(Server.MapPath("User.xml")))
                    {
                        // Đọc file
                        System.Xml.Serialization.XmlSerializer reader = new System.Xml.Serialization.XmlSerializer(typeof(List<Member>));
                        StreamReader file = new StreamReader(Server.MapPath("User.xml"));

                        list = (List<Member>)reader.Deserialize(file);
                        list = list.OrderBy(Member => Member.Id).ToList();


                        file.Close();
                    }
                    foreach (Member mem in list)
                    {
                        if (mem.NickName.Equals(Request.Form["email"]) || mem.Id.Equals(id))
                        {
                            string alert = "";
                            alert += "<script>alert('Tài khoản đã tồn tại. Vui lòng thử lại!');</script>";
                            Response.Write(alert);
                            return;
                        }
                    }


                    XDocument xDocument = XDocument.Load(path);

                    XElement xElement = new XElement("Member");
                    xElement.SetElementValue("Name", Request.Form["hoten"]);
                    xElement.SetElementValue("NickName", Request.Form["email"]);
                    xElement.SetElementValue("Id", "" + id);
                    xElement.SetElementValue("Pass", Request.Form["matkhau"]);
                    xElement.SetElementValue("PhoneNumber", Request.Form["phoneNumber"]);
                    xElement.SetElementValue("LoginFail", "0");

                    xDocument.Element("ArrayOfMember").Add(xElement);
                    xDocument.Save(path);

                    Response.Redirect("login.aspx");
                }


            }

        }
    }
}