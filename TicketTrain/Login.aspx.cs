using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
//using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;
namespace TicketTrain
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((bool)Session["login"] == true)
            {
                Response.Redirect("index.aspx");
            }

            if (Request.Form["loginSubmit"] == "true")
            {
                if (Request.Form["loginEmail"] == "" || Request.Form["loginPass"] == "")
                {
                    string alert = "";
                    alert += "<script>alert('Tài khoản và mật khẩu không được để trống. Vui lòng nhập lại!');</script>";
                    Response.Write(alert);
                    return;
                }
                /*if (Request.Form["loginPass"].Length < 8)
                {
                    string alert = "";
                    alert += "<script>alert('Mật khẩu phải dài hơn 8 ký tự.');</script>";
                    Response.Write(alert);
                    return;
                }*/

                string path = "User.xml";
                List<Member> list = new List<Member>();

                if (File.Exists(Server.MapPath(path)))
                {
                    // Đọc file
                    System.Xml.Serialization.XmlSerializer reader = new System.Xml.Serialization.XmlSerializer(typeof(List<Member>));
                    StreamReader file = new StreamReader(Server.MapPath(path));

                    list = (List<Member>)reader.Deserialize(file);
                    list = list.OrderBy(Member => Member.Id).ToList();


                    file.Close();
                }

                Member mb = new Member();
                mb.Id = list.Count;
                mb.NickName = Request.Form["loginEmail"];
                mb.Pass = Request.Form["loginPass"];


                bool checktrung = false;
                foreach (Member mem in list)
                {

                    if (mem.NickName.Equals(mb.NickName) && mem.Pass.Equals(mb.Pass))
                    {

                        if (mem.LoginFail >= 10)
                        {
                            string alert = "";
                            alert += "<script>alert('Tài khoản của bạn đã nhập sai quá 10 lần. Vui lòng liên hệ quản trị viên!');</script>";
                            Response.Write(alert);
                            return;
                        }
                        checktrung = true;
                        mb.Id = mem.Id;
                        break;
                    }
                }
                //Response.Write();

                if (checktrung == false)
                {
                    if (File.Exists(Server.MapPath(path)))
                    {
                        string paths = @"E:\btl_web\TicketTrain\TicketTrain\User.xml";
                        XDocument testXML = XDocument.Load(paths);
                        XElement cStudent = testXML.Descendants("Member").Where(x => x.Element("NickName").Value == mb.NickName).FirstOrDefault();
                        int a = Int32.Parse(cStudent.Element("LoginFail").Value);
                        cStudent.Element("LoginFail").Value = "" + (a + 1);
                        testXML.Save(paths);
                    }
                    string alert = "";
                    alert += "<script>alert('Tài khoản hoặc mật khẩu không đúng!');</script>";
                    Response.Write(alert);
                }
                else
                {
                    // Tạo session
                    Session["login"] = true;
                    Session["id"] = mb.Id;
                    Session["NickName"] = mb.NickName;
                    Session["PhoneNumber"] = mb.PhoneNumber;
                    Session["Pass"] = mb.Pass;
                }

                if ((bool)Session["login"] == true)
                {
                    Response.Redirect("index.aspx");
                }
            }
        }
    }
}